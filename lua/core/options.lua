-- Neovimのオプション設定
local opt = vim.opt

-- 補完候補の最大表示数
opt.pumheight = 10

-- 行番号を表示
opt.number = true             -- 現在の行の番号を表示
opt.relativenumber = true     -- 現在行以外は相対行番号にする（移動がしやすい）

-- インデント
opt.tabstop = 4               -- タブ幅をスペース4つ分として表示
opt.shiftwidth = 4            -- 自動インデントの幅
opt.expandtab = true          -- タブをスペースに変換
opt.smartindent = true        -- 新しい行で適切にインデント

-- 検索
opt.ignorecase = true         -- 小文字で検索したら大文字小文字を無視
opt.smartcase = true          -- でも検索語に大文字が含まれてたら区別する
opt.incsearch = true          -- インクリメンタルサーチ
opt.hlsearch = true           -- 検索結果をハイライト

-- バックアップ/スワップファイルの無効化（Gitと併用するなら便利）
opt.swapfile = false
opt.backup = false
opt.undofile = true           -- undo履歴をファイルに保存（再起動後もundoできる）

-- 表示関連
opt.termguicolors = true      -- 24bitカラー対応（テーマがきれいに見える）
opt.cursorline = true         -- カーソル行のハイライト
opt.scrolloff = 8             -- 上下に最低でも8行の余裕を持ってスクロール
opt.signcolumn = "yes"        -- 左側のサインカラムを常に表示（LSPやGitのマークが見やすい）

-- ウィンドウ分割の挙動
opt.splitbelow = true         -- 横分割したとき下に開く
opt.splitright = true         -- 縦分割したとき右に開く

-- クリップボード
opt.clipboard = "unnamedplus" -- システムのクリップボードと連携

-- 入力時の補完
opt.completeopt = { "menu", "menuone", "noselect" }

-- ファイルエンコーディング
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
