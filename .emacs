;; EGG for Git.
(add-to-list 'load-path "~/bin/emacs-extras/")

;; Lots of color
(setq font-lock-maximum-decoration t)

;; Don't show git status on every save.
;;(require 'egg)
;;(setq egg-auto-update nil)

;; Whitespace
(setq whitespace-style '(space-after-tab space-before-tab tab-mark space-mark trailing))

; Reconfigure whitespace-mode for day-to-day use
(require 'whitespace)
(setq whitespace-style '(face tabs space-before-tab tab-mark))
(global-whitespace-mode t)

;; Edit templates as HTML
(setq auto-mode-alist (cons '("\\.tmpl$" . html-mode) auto-mode-alist))

;;python-mode should conform to stuff
(add-hook 'python-mode-hook
  (lambda()
    (setq python-indent 4)
    (setq c-basic-offset 4)
    (setq tab-width 4)
    (setq py-indent-offset 4)
    (setq indent-tabs-mode t)
    (setq py-smart-indentation t)))

;;html-mode should conform to stuff
(add-hook 'html-mode-hook
  (lambda()
    (setq tab-width 4)
    (setq sgml-basic-offset 4)
    (setq indent-tabs-mode t)))

;;java-mode should conform to stuff
(add-hook 'java-mode-hook
  (lambda()
    (setq tab-width 4)
    (setq sgml-basic-offset 4)
    (setq indent-tabs-mode t)))

;; ctrl+tab inserts a hard tab. w00t.  (courtesy of duncan).
;;(global-set-key [C-TAB] (lambda () (interactive) (insert-char 9 1) ))
(global-set-key [?\C-\t] (lambda () (interactive) (insert-char 9 1) ))

;; Usage: emacs -diff file1 file2
(defun command-line-diff (switch)
(let ((file1 (pop command-line-args-left))
(file2 (pop command-line-args-left)))
(ediff file1 file2)))
(add-to-list 'command-switch-alist '("diff" . command-line-diff))

;; No splashscreen.
(setq inhibit-splash-screen t)

;; Clean up whitespace.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Make Sumeet happy by not including spaces.
;;

;; enhancements for displaying flymake errors
(require 'flymake)
(require 'flymake-cursor)

;; Pyflakes using Flymake?
(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
		       'flymake-create-temp-inplace))
	   (local-file (file-relative-name
			temp-file
			(file-name-directory buffer-file-name))))
      (list "pyflakes" (list local-file))))

  (add-to-list 'flymake-allowed-file-name-masks
	       '("\\.py\\'" flymake-pyflakes-init)))

(add-hook 'find-file-hook 'flymake-find-file-hook)


(define-derived-mode cheetah-mode html-mode "cheetah"
  (make-face 'cheetah-variable-face)
  (font-lock-add-keywords
   nil
   '(
     ("\\(#\\(from\\|else\\|include\\|extends\\|set\\|def\\|import\\|for\\|if\\|end\\|elif\\|call\\|block\\|attr\\|silent\\|echo\\|return\\)+\\)\\>" 1 font-lock-type-face)
     ("\\(#\\(from\\|for\\|end\\|else\\)\\).* \\<\\(for\\|import\\|def\\|if\\|in\\|block\\|call\\)\\>" 3 font-lock-type-face)
     ("\\(##.*\\)\n" 1 font-lock-comment-face)
     ("\\(\\$\\(?:\\sw\\|}\\|{\\|\\s_\\)+\\)" 1 font-lock-variable-name-face))
   )
  (font-lock-mode 1)
 )

(define-derived-mode cheetah-css-mode css-mode "cheetah-css"
  (make-face 'cheetah-css-variable-face)
  (font-lock-add-keywords
   nil
   '(("\\(##.*\\)\n" font-lock-comment-face)) (font-lock-mode 1))
  (modify-syntax-entry ?# "' 12b" cheetah-css-mode-syntax-table)
  (modify-syntax-entry ?\n "> b" cheetah-css-mode-syntax-table))

(setq auto-mode-alist (cons '( "\\.tmpl\\'" . cheetah-mode ) auto-mode-alist ))
(setq auto-mode-alist (cons '( "\\.css.tmpl\\'" . cheetah-css-mode ) auto-mode-alist ))
