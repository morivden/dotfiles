;; スタート時のスプラッシュ非表示
(setq inhibit-startup-message t)

;;文字コードを日本語に
(set-language-environment "japanese")
(prefer-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)

;; 対応する括弧を強調
(show-paren-mode t)
(set-face-background 'show-paren-match-face "#00FF00") ;背景色: 青
;;;(set-face-underline 'show-paren-match-face "#FFFF00") ;下線色:イエロー
;;;(set-face-foreground 'show-paren-match-face "#FF00FF") ;文字色:マゼンタ
(setq show-paren-delay 0) ; 表示までの秒数: 0秒
(setq show-paren-style 'expression) ;カッコ内強調の有効化

;;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
;;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

;;行番号を表示します
(global-linum-mode t)
(set-face-attribute 'linum nil
                    :foreground "#33FF00"
                    :height 0.9)
(setq linum-format "%04d ")

;;; インデントとか
(setq c-auto-newline t)
;;; (global-set-key "\C-m" 'newline-and-indent)

;;; 色を付ける
(global-font-lock-mode t)
(add-to-list 'default-frame-alist '(foreground-color . "#ababab"))

;;; バックアップファイルを作らない
(setq backup-inhibited t)

;;; 補完時に大文字小文字を区別しない
(setq completion-ignore-case t)

;;; スクロールを一行ずつにする
(setq scroll-step 1)

;;; 画面右端で折り返さない
(setq-default truncate-lines t)
(setq truncate-partial-width-windows t)

;;; バッファの最後でnewlineで新規行を追加するのを禁止する
(setq next-line-add-newlines nil)

;;; 現在の関数名をモードラインに表示

(which-function-mode 1)

;;; タブをスペース4字
(setq-default tab-width 4 indent-tabs-mode nil)

;; モードラインに日付・時刻を表示する
(setq display-time-string-forms
      '((format "%s/%s/%s(%s) %s:%s" year month day dayname 24-hours minutes)
        load
        (if mail " Mail" "")))
;; 時刻表示の左隣に日付を追加。
(setq display-time-kawakami-form t)
;; 24時間制
(setq display-time-24hr-format t)

;; 時間を表示
(display-time)

;;カッコを自動挿入
(electric-pair-mode 1)

(package-initialize)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;;ジャンプ機能
(global-set-key "\C-xj" 'goto-line)

;; スクロール幅の設定
;;1行ずつ
(setq scroll-conservatively 1)

;; (require 'highlight-symbol) ;; Cask や package-install からの場合はauto-loads cookie があるから不要
(global-set-key [(control f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

(set-face-attribute 'mode-line nil
                    :foreground "#000"
                    :background "#adff2f"
                    :box nil)

(line-number-mode t)
(column-number-mode t)

;; カレント行のハイライト
(require 'hl-line)
(defun global-hl-line-timer-function ()
  (global-hl-line-unhighlight-all)
  (let ((global-hl-line-mode t))
    (global-hl-line-highlight)))
(setq global-hl-line-timer
      (run-with-idle-timer 0.03 t 'global-hl-line-timer-function))
(custom-set-faces
 '(hl-line ((t (:background "#202020"))))
 )

;; Auto-Complete
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)

(add-to-list 'load-path(expand-file-name "~/.emacs.d/elpa/yasnippet-20160120.644"))
(require 'yasnippet)

(yas-global-mode 1)
