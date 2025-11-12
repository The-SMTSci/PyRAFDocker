(defconst inhibit-startup-echo-area-message nil)
(setq inhibit-startup-echo-area-message     "Administrator")
(when (member "DejaVu Sans Mono" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "DejaVu Sans Mono-18"))
    (add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-18"))
    )

(setq-default major-mode 'text-mode)           ; start up in text-mode
(setq-default indent-tabs-mode nil)            ; tab key inserts spaces!!!

(setq completion-ignored-extensions
      '(".o" ".obj" ".so" ".bak" ".elc" "~" ".exe" ".cla" ".class" ".jar" ".frx"

        ".ilk" ".pdb" ".opt" ".pyc" ".fits" ".fit" "fts"  ; astronomy files

        ".tar" ".tgz" ".zip" ".gz"                        ; Zip type files.

        ".pdf" ".ent" ".out" ".idx" ".log" ".dvi" ".aux"  ; LaTeX cruft.
        ".bbl" ".blg" ".ilg" ".ind" ".lot" ".lof" ".toc"
        ".nav" ".snm"

   )) ; ignore in completion 
