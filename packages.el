;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; live life on the edge
(unpin! t)

;;org
(package! doct)
(package! websocket)
(package! org-appear)
(package! org-roam-ui)
(package! org-preview-html)
(package! org-ol-tree :recipe (:host github :repo "Townk/org-ol-tree"))
(package! org-pretty-table :recipe (:host github :repo "Fuco1/org-pretty-table"))
(package! closql :pin "0a7226331ff1f96142199915c0ac7940bac4afdd")

;;latex
(package! aas)
(package! laas)
(package! engrave-faces)

;;looks
(package! focus)
(package! minions)
(package! dimmer)
(package! info-colors)
(package! svg-tag-mode)
(package! solaire-mode :disable t)
(package! ox-chameleon :recipe (:host github :repo "tecosaur/ox-chameleon") :pin "5a1928b9c33cbeb0463cf794afe8cff4ab512ce7")


;;carbon


;;emacs additions
;; (package! meow)
(package! lexic)
(package! etrace :recipe (:host github :repo "aspiers/etrace"))
(package! magit-delta)

;;fun
(package! nov)
(package! xkcd)
(package! md4rd)
(package! elcord)
(package! monkeytype)
(package! selectric-mode :recipe (:local-repo "lisp/selectric-mode"))
