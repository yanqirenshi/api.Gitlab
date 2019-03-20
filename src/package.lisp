(defpackage api.gitlab
  (:use :cl)
  (:export #:*private-token*
           #:*shceme*
           #:*host*))
(in-package :api.gitlab)

(defvar *private-token* nil)

(defvar *shceme* nil)
(defvar *host*   nil)
(defvar *port*   nil)


(defun make-uri (path &key query)
  (quri:render-uri
   (quri:make-uri :scheme *shceme*
                  :host *host*
                  ;; :port *port*
                  :path  path
                  :query query)))
