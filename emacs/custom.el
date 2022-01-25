;; Evoke the C# repl

(defun csharp-repl ()
  "Open a new side-by-side window and start CSharpRepl in it."
  (interactive)
  (split-window-side-by-side)
  (other-window 1)
  (comint-run "csharp"))

(global-set-key [f10] 'csharp-repl)


;; Or

(defun csharp-repl () 
  "Switch  to the CSharp Repl buffer, create it if necessary."
  (interactive)
  (let ((buf (get-buffer "*csharp*")))
    (if buf 
        (pop-to-buffer buf)
        (progn
          (split-window)
          (other-window 1)
          (comint-run "csharp")))))

(define-key csharp-mode-map (kbd "C-c C-z") 'csharp-repl)
