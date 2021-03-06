;; -*- coding:utf-8 -*-
(in-package :net.ignorama.web)

(defparameter *site-name* "Ignorama")

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defparameter *port* 4242))

(defparameter *favicon-path* "/favicon.png")
(defparameter *logo-path* "/ignorama.png")
(defparameter *small-logo-path* "/ignoramasmall.png")

(defparameter *file-upload-path* #p"static/uploads/")
(setf *tmp-directory* "tmp")
(ensure-directories-exist *file-upload-path*)
(ensure-directories-exist *tmp-directory*)

;;; will load random slogan on each page load
;;; for a single slogan, just include one string in the list
;;; for no slogan, leave it empty or nil
(defparameter *slogans*
  '("I should've made it blue"
    "Ignorance for the masses"
    "Made with MS Paint"
    "Your hobbies are stupid"))

(defparameter *fake-copyright* (format nil "
<div style='text-align:center;font-size:9pt;'>
  <p>
    All trademarks and copyrights are owned by their respective parties.
    Comments and uploaded images are the responsibility of the poster.
  </p>
  <p>Copyright © ~d ~a. All rights reserved.</p>
</div>
<br/>" (nth-value 5 (get-decoded-time)) *site-name*))

(defparameter *nameless-name* "Anonymous")

;;; allow-anonymity takes precedence over force-anonymity
;;; e.g. if allow is set to nil and force is set to t, you'll still see people's names
(defparameter *allow-anonymity* t)
(defparameter *force-anonymity* nil)

(defparameter *allow-anonymous-threads* t)

(defparameter *index-row-limit* 200)

(defparameter *posts-per-page* 20)

;;; links to external social sites:
;;;             (:name-of-social-site "https://site-url.com/your-site.html" "Optional Dropdown Text")
;;;     go to http://fontawesome.io/icons/ to see choices for :name-of-social-site
(eval-when (:compile-toplevel :load-toplevel :execute)
  (defparameter *sociallinks* '((:twitter "https://twitter.com/IgnoramaDotNet")
                                (:github "https://github.com/tssund93/lispy-ignorama" "GitHub"))))
