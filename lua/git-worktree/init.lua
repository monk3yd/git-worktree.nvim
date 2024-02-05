local Config = require('git-worktree.config')
local Worktree = require('git-worktree.worktree')

local M = {}

function M.setup(user_configs)
    Config.set(user_configs or {})
    -- initialize hooks
    require('git-worktree.hooks')
end

--Switch the current worktree
---@param path string
-- luacheck:ignore self
function M.switch_worktree(path)
    Worktree.switch(path)
end

--Create a worktree
---@param path string
---@param branch string
---@param upstream? string
-- luacheck:ignore self
function M.create_worktree(path, branch, upstream)
    Worktree.create(path, branch, upstream)
end

--Delete a worktree
---@param path string
---@param force boolean
---@param opts any
function M.delete_worktree(path, force, opts)
    Worktree.delete(path, force, opts)
end

return M
