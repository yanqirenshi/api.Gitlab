(in-package :api.gitlab)

(defun find-issues ()
  (dex:get (format nil "http://git.glpgs-dev.com/api/v4/issues?private_token=~a" *private-token*)))
