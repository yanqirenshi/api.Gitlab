#|
  This file is a part of api.gitlab project.
|#

(defsystem "api.gitlab-test"
  :defsystem-depends-on ("prove-asdf")
  :author ""
  :license ""
  :depends-on ("api.gitlab"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "api.gitlab"))))
  :description "Test system for api.gitlab"

  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
