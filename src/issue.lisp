(in-package :api.gitlab)

(defun find-issues (&key (private-token *private-token*))
  (let ((uri (make-uri "/api/v4/issues"
                       :query `(("private_token" . ,private-token)
                                ("per_page" . 100)
                                ("state" . "opened")))))
    (jojo:parse (dex:get uri))))


(defparameter *tmp-sample-issue*
  '(:|iid| 238
    :|id| 1971
    :|title| ""
    :|description| ""
    :|web_url| ""
    :|state| ""
    :|discussion_locked| NIL
    :|confidential| NIL
    :|due_date| NIL
    :|downvotes| 0
    :|upvotes| 0
    :|user_notes_count| 0
    :|labels| ("")
    :|project_id| 504
    :|closed_by| NIL
    :|closed_at| NIL
    :|updated_at| ""
    :|created_at| ""
    :|assignee| (:|web_url| ""
                 :|avatar_url| ""
                 :|state| ""
                 :|username| ""
                 :|name| ""
                 :|id| 70)
    :|author| (:|web_url| ""
               :|avatar_url| ""
               :|state| ""
               :|username| ""
               :|name| ""
               :|id| 70)
    :|assignees| ((:|web_url| ""
                   :|avatar_url| ""
                   :|state| ""
                   :|username| ""
                   :|name| ""
                   :|id| 70))
    :|milestone| (:|web_url| ""
                  :|start_date| NIL
                  :|due_date| NIL
                  :|updated_at| ""
                  :|created_at| ""
                  :|state| ""
                  :|description| ""
                  :|title| ""
                  :|project_id| 504
                  :|iid| 12
                  :|id| 42)
    :|time_stats| (:|human_total_time_spent| NIL
                   :|human_time_estimate| NIL
                   :|total_time_spent| 0
                   :|time_estimate| 0)))
