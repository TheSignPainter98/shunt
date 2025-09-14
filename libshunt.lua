package.preload['shunt.clap'] = function(...)
-- [yue]: shunt/clap.yue
local _module_0 = { } -- shunt/clap.yue:1
local EXIT, SELF -- shunt/clap.yue:1
local Flag -- shunt/clap.yue:2
local Param -- shunt/clap.yue:3
local Subcommand -- shunt/clap.yue:4
local unpack -- shunt/clap.yue:6
if unpack == nil then -- shunt/clap.yue:6
  do -- shunt/clap.yue:6
    local _exp_0 = table.unpack -- shunt/clap.yue:6
    if _exp_0 ~= nil then -- shunt/clap.yue:6
      unpack = _exp_0 -- shunt/clap.yue:6
    else -- shunt/clap.yue:6
      unpack = function(tab) -- shunt/clap.yue:6
        local e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, _limit = tab[1], tab[2], tab[3], tab[4], tab[5], tab[6], tab[7], tab[8], tab[9], tab[10], tab[11] -- shunt/clap.yue:8
        do -- shunt/clap.yue:9
          local _exp_1 = #tab -- shunt/clap.yue:9
          if 0 == _exp_1 then -- shunt/clap.yue:10
            return -- shunt/clap.yue:11
          elseif 1 == _exp_1 then -- shunt/clap.yue:12
            return e1 -- shunt/clap.yue:13
          elseif 2 == _exp_1 then -- shunt/clap.yue:14
            return e1, e2 -- shunt/clap.yue:15
          elseif 3 == _exp_1 then -- shunt/clap.yue:16
            return e1, e2, e3 -- shunt/clap.yue:17
          elseif 4 == _exp_1 then -- shunt/clap.yue:18
            return e1, e2, e3, e4 -- shunt/clap.yue:19
          elseif 5 == _exp_1 then -- shunt/clap.yue:20
            return e1, e2, e3, e4, e5 -- shunt/clap.yue:21
          elseif 6 == _exp_1 then -- shunt/clap.yue:22
            return e1, e2, e3, e4, e5, e6 -- shunt/clap.yue:23
          elseif 7 == _exp_1 then -- shunt/clap.yue:24
            return e1, e2, e3, e4, e5, e6, e7 -- shunt/clap.yue:25
          elseif 8 == _exp_1 then -- shunt/clap.yue:26
            return e1, e2, e3, e4, e5, e6, e7, e8 -- shunt/clap.yue:27
          elseif 9 == _exp_1 then -- shunt/clap.yue:28
            return e1, e2, e3, e4, e5, e6, e7, e8, e9 -- shunt/clap.yue:29
          elseif 10 == _exp_1 then -- shunt/clap.yue:30
            return e1, e2, e3, e4, e5, e6, e7, e8, e9, e10 -- shunt/clap.yue:31
          end -- shunt/clap.yue:31
        end -- shunt/clap.yue:31
        return error('cannot unpack table: too many values to unpack') -- shunt/clap.yue:32
      end -- shunt/clap.yue:6
    end -- shunt/clap.yue:32
  end -- shunt/clap.yue:32
end -- shunt/clap.yue:32
EXIT = setmetatable({ }, { -- shunt/clap.yue:34
  __tostring = function(self) -- shunt/clap.yue:34
    return "<exit>" -- shunt/clap.yue:34
  end -- shunt/clap.yue:34
}) -- shunt/clap.yue:34
SELF = setmetatable({ }, { -- shunt/clap.yue:35
  __tostring = function(self) -- shunt/clap.yue:35
    return '<self>' -- shunt/clap.yue:35
  end -- shunt/clap.yue:35
}) -- shunt/clap.yue:35
do -- shunt/clap.yue:37
  local _class_0 -- shunt/clap.yue:37
  local _base_0 = { -- shunt/clap.yue:37
    dest = function(self, _dest) -- shunt/clap.yue:55
      self._dest = _dest -- shunt/clap.yue:55
      return self -- shunt/clap.yue:55
    end, -- shunt/clap.yue:56
    short = function(self, _short) -- shunt/clap.yue:56
      self._short = _short -- shunt/clap.yue:56
      return self -- shunt/clap.yue:56
    end, -- shunt/clap.yue:57
    long = function(self, _long) -- shunt/clap.yue:57
      self._long = _long -- shunt/clap.yue:57
      return self -- shunt/clap.yue:57
    end, -- shunt/clap.yue:58
    hidden = function(self) -- shunt/clap.yue:58
      self._hidden = true -- shunt/clap.yue:59
      return self -- shunt/clap.yue:60
    end, -- shunt/clap.yue:61
    required = function(self) -- shunt/clap.yue:61
      self._required = true -- shunt/clap.yue:62
      return self -- shunt/clap.yue:63
    end, -- shunt/clap.yue:64
    global = function(self) -- shunt/clap.yue:64
      self._global = true -- shunt/clap.yue:65
    end, -- shunt/clap.yue:66
    description = function(self, _description) -- shunt/clap.yue:66
      self._description = _description -- shunt/clap.yue:66
      return self -- shunt/clap.yue:66
    end, -- shunt/clap.yue:67
    options = function(self, _options) -- shunt/clap.yue:67
      self._options = _options -- shunt/clap.yue:67
      return self -- shunt/clap.yue:67
    end, -- shunt/clap.yue:68
    transform = function(self, _transform) -- shunt/clap.yue:68
      self._transform = _transform -- shunt/clap.yue:68
      return self -- shunt/clap.yue:68
    end, -- shunt/clap.yue:70
    takes_param = function(self) -- shunt/clap.yue:70
      self._takes_param = true -- shunt/clap.yue:71
      return self -- shunt/clap.yue:72
    end, -- shunt/clap.yue:73
    default = function(self, _default) -- shunt/clap.yue:73
      self._default = _default -- shunt/clap.yue:73
      if 'boolean' == type(self._default) then -- shunt/clap.yue:74
        error('boolean default flag arguments not currently supported') -- shunt/clap.yue:75
      end -- shunt/clap.yue:74
      self:takes_param() -- shunt/clap.yue:76
      return self -- shunt/clap.yue:77
    end, -- shunt/clap.yue:79
    value_name = function(self, _value_name) -- shunt/clap.yue:79
      self._value_name = _value_name -- shunt/clap.yue:79
      return self -- shunt/clap.yue:79
    end, -- shunt/clap.yue:81
    _repr = function(self) -- shunt/clap.yue:81
      return self._short or self._long -- shunt/clap.yue:81
    end, -- shunt/clap.yue:82
    _long_repr = function(self) -- shunt/clap.yue:82
      if (self._short ~= nil) and (self._long ~= nil) then -- shunt/clap.yue:83
        return " " .. tostring(self._short) .. ", " .. tostring(self._long) -- shunt/clap.yue:84
      else -- shunt/clap.yue:85
        if (self._short ~= nil) then -- shunt/clap.yue:85
          return " " .. tostring(self._short) -- shunt/clap.yue:86
        else -- shunt/clap.yue:88
          return self._long -- shunt/clap.yue:88
        end -- shunt/clap.yue:85
      end -- shunt/clap.yue:83
    end -- shunt/clap.yue:37
  } -- shunt/clap.yue:37
  if _base_0.__index == nil then -- shunt/clap.yue:37
    _base_0.__index = _base_0 -- shunt/clap.yue:37
  end -- shunt/clap.yue:89
  _class_0 = setmetatable({ -- shunt/clap.yue:37
    __init = function(self, _name) -- shunt/clap.yue:38
      self._name = _name -- shunt/clap.yue:38
      self._dest = self._name:gsub('-', '_') -- shunt/clap.yue:39
      self._takes_param = false -- shunt/clap.yue:40
      self._default = false -- shunt/clap.yue:41
      self._value_name = 'value' -- shunt/clap.yue:42
      self._short = '-' .. self._name:sub(1, 1) -- shunt/clap.yue:43
      if #self._name > 1 then -- shunt/clap.yue:44
        self._long = '--' .. self._name:gsub(' ', '-') -- shunt/clap.yue:45
      else -- shunt/clap.yue:47
        self._long = nil -- shunt/clap.yue:47
      end -- shunt/clap.yue:44
      self._global = false -- shunt/clap.yue:48
      self._required = false -- shunt/clap.yue:49
      self._hidden = false -- shunt/clap.yue:50
      self._description = nil -- shunt/clap.yue:51
      self._options = nil -- shunt/clap.yue:52
      self._transform = nil -- shunt/clap.yue:53
    end, -- shunt/clap.yue:37
    __base = _base_0, -- shunt/clap.yue:37
    __name = "Flag" -- shunt/clap.yue:37
  }, { -- shunt/clap.yue:37
    __index = _base_0, -- shunt/clap.yue:37
    __call = function(cls, ...) -- shunt/clap.yue:37
      local _self_0 = setmetatable({ }, _base_0) -- shunt/clap.yue:37
      cls.__init(_self_0, ...) -- shunt/clap.yue:37
      return _self_0 -- shunt/clap.yue:37
    end -- shunt/clap.yue:37
  }) -- shunt/clap.yue:37
  _base_0.__class = _class_0 -- shunt/clap.yue:37
  Flag = _class_0 -- shunt/clap.yue:37
end -- shunt/clap.yue:89
_module_0["Flag"] = Flag -- shunt/clap.yue:37
do -- shunt/clap.yue:91
  local _class_0 -- shunt/clap.yue:91
  local _base_0 = { -- shunt/clap.yue:91
    dest = function(self, _dest) -- shunt/clap.yue:101
      self._dest = _dest -- shunt/clap.yue:101
      return self -- shunt/clap.yue:101
    end, -- shunt/clap.yue:102
    arg_name = function(self, _arg_name) -- shunt/clap.yue:102
      self._arg_name = _arg_name -- shunt/clap.yue:102
      return self -- shunt/clap.yue:102
    end, -- shunt/clap.yue:103
    default = function(self, _default) -- shunt/clap.yue:103
      self._default = _default -- shunt/clap.yue:103
      self._required = false -- shunt/clap.yue:104
      return self -- shunt/clap.yue:105
    end, -- shunt/clap.yue:106
    description = function(self, _description) -- shunt/clap.yue:106
      self._description = _description -- shunt/clap.yue:106
      return self -- shunt/clap.yue:106
    end, -- shunt/clap.yue:107
    options = function(self, _options) -- shunt/clap.yue:107
      self._options = _options -- shunt/clap.yue:107
      return self -- shunt/clap.yue:107
    end, -- shunt/clap.yue:108
    transform = function(self, _transform) -- shunt/clap.yue:108
      self._transform = _transform -- shunt/clap.yue:108
      return self -- shunt/clap.yue:108
    end, -- shunt/clap.yue:109
    capture_remainder = function(self) -- shunt/clap.yue:109
      self._capture_remainder = true -- shunt/clap.yue:110
      self._required = false -- shunt/clap.yue:111
      return self -- shunt/clap.yue:112
    end, -- shunt/clap.yue:114
    _repr = function(self) -- shunt/clap.yue:114
      local name = self._arg_name or self._name -- shunt/clap.yue:115
      if not self._capture_remainder then -- shunt/clap.yue:116
        return name -- shunt/clap.yue:117
      end -- shunt/clap.yue:116
      return tostring(name) .. "..." -- shunt/clap.yue:118
    end -- shunt/clap.yue:91
  } -- shunt/clap.yue:91
  if _base_0.__index == nil then -- shunt/clap.yue:91
    _base_0.__index = _base_0 -- shunt/clap.yue:91
  end -- shunt/clap.yue:118
  _class_0 = setmetatable({ -- shunt/clap.yue:91
    __init = function(self, _name) -- shunt/clap.yue:92
      self._name = _name -- shunt/clap.yue:92
      self._dest = self._name:gsub('-', '_') -- shunt/clap.yue:93
      self._arg_name = nil -- shunt/clap.yue:94
      self._required = true -- shunt/clap.yue:95
      self._description = nil -- shunt/clap.yue:96
      self._options = nil -- shunt/clap.yue:97
      self._transform = nil -- shunt/clap.yue:98
      self._capture_remainder = false -- shunt/clap.yue:99
    end, -- shunt/clap.yue:91
    __base = _base_0, -- shunt/clap.yue:91
    __name = "Param" -- shunt/clap.yue:91
  }, { -- shunt/clap.yue:91
    __index = _base_0, -- shunt/clap.yue:91
    __call = function(cls, ...) -- shunt/clap.yue:91
      local _self_0 = setmetatable({ }, _base_0) -- shunt/clap.yue:91
      cls.__init(_self_0, ...) -- shunt/clap.yue:91
      return _self_0 -- shunt/clap.yue:91
    end -- shunt/clap.yue:91
  }) -- shunt/clap.yue:91
  _base_0.__class = _class_0 -- shunt/clap.yue:91
  Param = _class_0 -- shunt/clap.yue:91
end -- shunt/clap.yue:118
_module_0["Param"] = Param -- shunt/clap.yue:91
do -- shunt/clap.yue:120
  local _class_0 -- shunt/clap.yue:120
  local _base_0 = { -- shunt/clap.yue:120
    dest = function(self, _dest) -- shunt/clap.yue:133
      self._dest = _dest -- shunt/clap.yue:133
      return self -- shunt/clap.yue:133
    end, -- shunt/clap.yue:134
    version = function(self, _version) -- shunt/clap.yue:134
      self._version = _version -- shunt/clap.yue:134
      return self -- shunt/clap.yue:134
    end, -- shunt/clap.yue:135
    add = function(self, arg) -- shunt/clap.yue:135
      local arg_type -- shunt/clap.yue:136
      do -- shunt/clap.yue:136
        local _obj_0 = getmetatable(arg) -- shunt/clap.yue:136
        if _obj_0 ~= nil then -- shunt/clap.yue:136
          do -- shunt/clap.yue:136
            local _obj_1 = _obj_0.__class -- shunt/clap.yue:136
            if _obj_1 ~= nil then -- shunt/clap.yue:136
              arg_type = _obj_1.__name -- shunt/clap.yue:136
            end -- shunt/clap.yue:136
          end -- shunt/clap.yue:136
        end -- shunt/clap.yue:136
      end -- shunt/clap.yue:136
      if 'Flag' == arg_type then -- shunt/clap.yue:138
        do -- shunt/clap.yue:139
          local _obj_0 = self._flags -- shunt/clap.yue:139
          _obj_0[#_obj_0 + 1] = arg -- shunt/clap.yue:139
        end -- shunt/clap.yue:139
      elseif 'Param' == arg_type then -- shunt/clap.yue:140
        do -- shunt/clap.yue:141
          local _obj_0 = self._params -- shunt/clap.yue:141
          _obj_0[#_obj_0 + 1] = arg -- shunt/clap.yue:141
        end -- shunt/clap.yue:141
      elseif 'Subcommand' == arg_type then -- shunt/clap.yue:142
        arg._parent_command = self -- shunt/clap.yue:143
        do -- shunt/clap.yue:144
          local _obj_0 = self._subcommands -- shunt/clap.yue:144
          _obj_0[#_obj_0 + 1] = arg -- shunt/clap.yue:144
        end -- shunt/clap.yue:144
      else -- shunt/clap.yue:146
        error("cannot use a " .. tostring(type(arg)) .. " as an arg") -- shunt/clap.yue:146
      end -- shunt/clap.yue:146
      return self -- shunt/clap.yue:147
    end, -- shunt/clap.yue:149
    hidden = function(self) -- shunt/clap.yue:149
      self._hidden = true -- shunt/clap.yue:150
      return self -- shunt/clap.yue:151
    end, -- shunt/clap.yue:153
    no_help = function(self) -- shunt/clap.yue:153
      self._add_help = false -- shunt/clap.yue:154
      return self -- shunt/clap.yue:155
    end, -- shunt/clap.yue:156
    description = function(self, _description) -- shunt/clap.yue:156
      self._description = _description -- shunt/clap.yue:156
      return self -- shunt/clap.yue:156
    end, -- shunt/clap.yue:158
    _parse = function(self, args, global_flags, global_values, path) -- shunt/clap.yue:158
      if global_values == nil then -- shunt/clap.yue:158
        global_values = { } -- shunt/clap.yue:158
      end -- shunt/clap.yue:158
      if path == nil then -- shunt/clap.yue:158
        path = { } -- shunt/clap.yue:158
      end -- shunt/clap.yue:158
      local ret -- shunt/clap.yue:159
      do -- shunt/clap.yue:159
        local _with_0 = setmetatable({ }, { -- shunt/clap.yue:159
          __index = global_values -- shunt/clap.yue:159
        }) -- shunt/clap.yue:159
        local _list_0 = self._flags -- shunt/clap.yue:160
        for _index_0 = 1, #_list_0 do -- shunt/clap.yue:160
          local flag = _list_0[_index_0] -- shunt/clap.yue:160
          local _continue_0 = false -- shunt/clap.yue:161
          repeat -- shunt/clap.yue:161
            if flag._global then -- shunt/clap.yue:161
              _continue_0 = true -- shunt/clap.yue:162
              break -- shunt/clap.yue:162
            end -- shunt/clap.yue:161
            _with_0[flag._dest] = flag._default -- shunt/clap.yue:163
            _continue_0 = true -- shunt/clap.yue:161
          until true -- shunt/clap.yue:163
          if not _continue_0 then -- shunt/clap.yue:163
            break -- shunt/clap.yue:163
          end -- shunt/clap.yue:163
        end -- shunt/clap.yue:163
        local _list_1 = self._params -- shunt/clap.yue:164
        for _index_0 = 1, #_list_1 do -- shunt/clap.yue:164
          local param = _list_1[_index_0] -- shunt/clap.yue:164
          if param._capture_remainder then -- shunt/clap.yue:165
            _with_0[param._dest] = { } -- shunt/clap.yue:166
          else -- shunt/clap.yue:168
            _with_0[param._dest] = param._default -- shunt/clap.yue:168
          end -- shunt/clap.yue:165
        end -- shunt/clap.yue:168
        ret = _with_0 -- shunt/clap.yue:159
      end -- shunt/clap.yue:159
      local flag_map -- shunt/clap.yue:170
      do -- shunt/clap.yue:170
        local _with_0 = { } -- shunt/clap.yue:170
        local declare -- shunt/clap.yue:171
        declare = function(flag) -- shunt/clap.yue:171
          if flag._short then -- shunt/clap.yue:172
            _with_0[flag._short] = flag -- shunt/clap.yue:173
          end -- shunt/clap.yue:172
          if flag._long then -- shunt/clap.yue:174
            _with_0[flag._long] = flag -- shunt/clap.yue:175
          end -- shunt/clap.yue:174
        end -- shunt/clap.yue:171
        for _index_0 = 1, #global_flags do -- shunt/clap.yue:176
          local flag = global_flags[_index_0] -- shunt/clap.yue:176
          declare(flag) -- shunt/clap.yue:177
        end -- shunt/clap.yue:177
        local _list_0 = self._flags -- shunt/clap.yue:178
        for _index_0 = 1, #_list_0 do -- shunt/clap.yue:178
          local flag = _list_0[_index_0] -- shunt/clap.yue:178
          declare(flag) -- shunt/clap.yue:179
        end -- shunt/clap.yue:179
        flag_map = _with_0 -- shunt/clap.yue:170
      end -- shunt/clap.yue:170
      local subcommand_map -- shunt/clap.yue:181
      do -- shunt/clap.yue:181
        local _tbl_0 = { } -- shunt/clap.yue:181
        local _list_0 = self._subcommands -- shunt/clap.yue:181
        for _index_0 = 1, #_list_0 do -- shunt/clap.yue:181
          local sc = _list_0[_index_0] -- shunt/clap.yue:181
          _tbl_0[sc._name] = sc -- shunt/clap.yue:181
        end -- shunt/clap.yue:181
        subcommand_map = _tbl_0 -- shunt/clap.yue:181
      end -- shunt/clap.yue:181
      local curr_param = 1 -- shunt/clap.yue:183
      local i = 0 -- shunt/clap.yue:184
      while i < #args do -- shunt/clap.yue:185
        i = i + 1 -- shunt/clap.yue:186
        local arg = args[i] -- shunt/clap.yue:187
        if '-' == arg:sub(1, 1) then -- shunt/clap.yue:188
          local flag = flag_map[arg] -- shunt/clap.yue:189
          if not (flag ~= nil) then -- shunt/clap.yue:190
            return nil, "unknown flag " .. tostring(arg) .. "\n" .. tostring(self:_usage_message(path)) -- shunt/clap.yue:191
          end -- shunt/clap.yue:190
          local flag_value -- shunt/clap.yue:192
          if not flag._takes_param then -- shunt/clap.yue:192
            flag_value = true -- shunt/clap.yue:193
          else -- shunt/clap.yue:195
            i = i + 1 -- shunt/clap.yue:195
            local flag_arg = args[i] -- shunt/clap.yue:196
            if not (flag_arg ~= nil) then -- shunt/clap.yue:197
              return nil, "flag " .. tostring(arg) .. " expected an argument\n" .. tostring(self:_usage_message(path)) -- shunt/clap.yue:198
            end -- shunt/clap.yue:197
            do -- shunt/clap.yue:200
              local transform = flag._transform -- shunt/clap.yue:200
              if transform then -- shunt/clap.yue:200
                local transformed, err = transform(flag_arg) -- shunt/clap.yue:201
                if (err ~= nil) then -- shunt/clap.yue:202
                  return nil, "cannot parse '" .. tostring(flag_arg) .. "': " .. tostring(err) .. "\n" .. tostring(self:_usage_message(path)) -- shunt/clap.yue:203
                end -- shunt/clap.yue:202
                flag_value = transformed -- shunt/clap.yue:204
              else -- shunt/clap.yue:206
                flag_value = flag_arg -- shunt/clap.yue:206
              end -- shunt/clap.yue:200
            end -- shunt/clap.yue:200
          end -- shunt/clap.yue:192
          if flag._global then -- shunt/clap.yue:208
            getmetatable(ret).__index[flag._dest] = flag_value -- shunt/clap.yue:209
          else -- shunt/clap.yue:211
            ret[flag._dest] = flag_value -- shunt/clap.yue:211
          end -- shunt/clap.yue:208
        else -- shunt/clap.yue:212
          do -- shunt/clap.yue:212
            local param = self._params[curr_param] -- shunt/clap.yue:212
            if param then -- shunt/clap.yue:212
              local arg_value -- shunt/clap.yue:213
              do -- shunt/clap.yue:213
                local transform = param._transform -- shunt/clap.yue:213
                if transform then -- shunt/clap.yue:213
                  local transformed, err = transform(arg) -- shunt/clap.yue:214
                  if (err ~= nil) then -- shunt/clap.yue:215
                    return nil, "failed to parse " .. tostring(arg) .. ": " .. tostring(err) .. "\n" .. tostring(self:_usage_message(path)) -- shunt/clap.yue:216
                  end -- shunt/clap.yue:215
                  arg_value = transformed -- shunt/clap.yue:217
                else -- shunt/clap.yue:219
                  arg_value = arg -- shunt/clap.yue:219
                end -- shunt/clap.yue:213
              end -- shunt/clap.yue:213
              if param._capture_remainder then -- shunt/clap.yue:220
                do -- shunt/clap.yue:221
                  local _obj_0 = ret[param._dest] -- shunt/clap.yue:221
                  _obj_0[#_obj_0 + 1] = arg_value -- shunt/clap.yue:221
                end -- shunt/clap.yue:221
              else -- shunt/clap.yue:223
                ret[param._dest] = arg_value -- shunt/clap.yue:223
                curr_param = curr_param + 1 -- shunt/clap.yue:224
              end -- shunt/clap.yue:220
            else -- shunt/clap.yue:225
              do -- shunt/clap.yue:225
                local command = subcommand_map[arg] -- shunt/clap.yue:225
                if command then -- shunt/clap.yue:225
                  path[#path + 1] = arg -- shunt/clap.yue:226
                  local subcommand_ret, err = command:_parse((function() -- shunt/clap.yue:227
                    local _accum_0 = { } -- shunt/clap.yue:227
                    local _len_0 = 1 -- shunt/clap.yue:227
                    for _index_0 = i + 1, #args do -- shunt/clap.yue:227
                      local a = args[_index_0] -- shunt/clap.yue:227
                      _accum_0[_len_0] = a -- shunt/clap.yue:227
                      _len_0 = _len_0 + 1 -- shunt/clap.yue:227
                    end -- shunt/clap.yue:227
                    return _accum_0 -- shunt/clap.yue:227
                  end)(), global_flags, global_values, path) -- shunt/clap.yue:227
                  if (err ~= nil) then -- shunt/clap.yue:228
                    return nil, err -- shunt/clap.yue:229
                  end -- shunt/clap.yue:228
                  ret[command._dest] = subcommand_ret -- shunt/clap.yue:230
                  break -- shunt/clap.yue:231
                else -- shunt/clap.yue:233
                  return nil, "unexpected argument '" .. tostring(arg) .. "'\n" .. tostring(self:_usage_message(path)) -- shunt/clap.yue:233
                end -- shunt/clap.yue:225
              end -- shunt/clap.yue:225
            end -- shunt/clap.yue:212
          end -- shunt/clap.yue:212
        end -- shunt/clap.yue:188
      end -- shunt/clap.yue:233
      if ret._usage then -- shunt/clap.yue:235
        print(self:_usage_message(path)) -- shunt/clap.yue:236
        return nil, EXIT -- shunt/clap.yue:237
      end -- shunt/clap.yue:235
      do -- shunt/clap.yue:238
        local help = ret._help -- shunt/clap.yue:238
        if help then -- shunt/clap.yue:238
          if help == true then -- shunt/clap.yue:239
            print(self:_help_message(path)) -- shunt/clap.yue:240
            return nil, EXIT -- shunt/clap.yue:241
          end -- shunt/clap.yue:239
          if 'table' ~= type(help) then -- shunt/clap.yue:243
            error("internal error: unexpected help type " .. tostring(type(help))) -- shunt/clap.yue:244
          end -- shunt/clap.yue:243
          if (help.command ~= nil) then -- shunt/clap.yue:246
            if help.command ~= SELF then -- shunt/clap.yue:247
              path[#path] = help.command -- shunt/clap.yue:248
            else -- shunt/clap.yue:250
              path[#path] = nil -- shunt/clap.yue:250
            end -- shunt/clap.yue:247
          end -- shunt/clap.yue:246
          if help.command == SELF then -- shunt/clap.yue:251
            print(self:_help_message(path)) -- shunt/clap.yue:252
            return nil, EXIT -- shunt/clap.yue:253
          end -- shunt/clap.yue:251
          do -- shunt/clap.yue:254
            local sc = subcommand_map[help.command] -- shunt/clap.yue:254
            if sc then -- shunt/clap.yue:254
              print(sc:_help_message(path)) -- shunt/clap.yue:255
              return nil, EXIT -- shunt/clap.yue:256
            end -- shunt/clap.yue:254
          end -- shunt/clap.yue:254
          return nil, "no such subcommand '" .. tostring(help.command) .. "'\n" .. tostring(self:_usage_message(path)) -- shunt/clap.yue:257
        end -- shunt/clap.yue:238
      end -- shunt/clap.yue:238
      if ret._version then -- shunt/clap.yue:258
        print(self:_version_message(path)) -- shunt/clap.yue:259
        return nil, EXIT -- shunt/clap.yue:260
      end -- shunt/clap.yue:258
      local _list_0 = self._flags -- shunt/clap.yue:262
      for _index_0 = 1, #_list_0 do -- shunt/clap.yue:262
        local flag = _list_0[_index_0] -- shunt/clap.yue:262
        do -- shunt/clap.yue:263
          local arg = flag[flag._dest] -- shunt/clap.yue:264
          if not arg and flag._required then -- shunt/clap.yue:265
            return nil, "flag '" .. tostring(flag:_repr()) .. "' required\n" .. tostring(self:_usage_message(path)) -- shunt/clap.yue:266
          end -- shunt/clap.yue:265
          if arg and flag._options then -- shunt/clap.yue:267
            local ok = false -- shunt/clap.yue:268
            local _list_1 = flag._options -- shunt/clap.yue:269
            for _index_1 = 1, #_list_1 do -- shunt/clap.yue:269
              local option = _list_1[_index_1] -- shunt/clap.yue:269
              if arg == option then -- shunt/clap.yue:270
                ok = true -- shunt/clap.yue:271
                break -- shunt/clap.yue:272
              end -- shunt/clap.yue:270
            end -- shunt/clap.yue:272
            if not ok then -- shunt/clap.yue:273
              return nil, "flag '" .. tostring(flag:_repr()) .. "' has incorrect value, got '" .. tostring(arg) .. "' but expected one of " .. tostring(table.concat(flag._options, ', ')) .. "\n" .. tostring(self:_usage_message(path)) -- shunt/clap.yue:274
            end -- shunt/clap.yue:273
          end -- shunt/clap.yue:267
        end -- shunt/clap.yue:263
      end -- shunt/clap.yue:274
      local _list_1 = self._params -- shunt/clap.yue:275
      for _index_0 = 1, #_list_1 do -- shunt/clap.yue:275
        local param = _list_1[_index_0] -- shunt/clap.yue:275
        do -- shunt/clap.yue:276
          local arg = ret[param._dest] -- shunt/clap.yue:277
          if not arg and param._required then -- shunt/clap.yue:278
            local options_repr -- shunt/clap.yue:279
            if param._options then -- shunt/clap.yue:279
              options_repr = " (accepts: " .. tostring(table.concat(param._options, ', ')) .. ")" -- shunt/clap.yue:280
            else -- shunt/clap.yue:282
              options_repr = "" -- shunt/clap.yue:282
            end -- shunt/clap.yue:279
            return nil, "argument '" .. tostring(param:_repr()) .. "' required" .. tostring(options_repr) .. "\n" .. tostring(self:_usage_message(path)) -- shunt/clap.yue:283
          end -- shunt/clap.yue:278
          if arg and param._options then -- shunt/clap.yue:284
            local ok = false -- shunt/clap.yue:285
            local _list_2 = param._options -- shunt/clap.yue:286
            for _index_1 = 1, #_list_2 do -- shunt/clap.yue:286
              local option = _list_2[_index_1] -- shunt/clap.yue:286
              if arg == option then -- shunt/clap.yue:287
                ok = true -- shunt/clap.yue:288
                break -- shunt/clap.yue:289
              end -- shunt/clap.yue:287
            end -- shunt/clap.yue:289
            if not ok then -- shunt/clap.yue:290
              return nil, "argument '" .. tostring(param:_repr()) .. "' has incorrect value, got '" .. tostring(arg) .. "' but expected one of " .. tostring(table.concat(param._options, ', ')) .. "\n" .. tostring(self:_usage_message(path)) -- shunt/clap.yue:291
            end -- shunt/clap.yue:290
          end -- shunt/clap.yue:284
        end -- shunt/clap.yue:276
      end -- shunt/clap.yue:291
      if #self._subcommands > 0 then -- shunt/clap.yue:292
        local command_specified = false -- shunt/clap.yue:293
        local _list_2 = self._subcommands -- shunt/clap.yue:294
        for _index_0 = 1, #_list_2 do -- shunt/clap.yue:294
          local command = _list_2[_index_0] -- shunt/clap.yue:294
          if (ret[command._dest] ~= nil) then -- shunt/clap.yue:295
            command_specified = true -- shunt/clap.yue:296
            break -- shunt/clap.yue:297
          end -- shunt/clap.yue:295
        end -- shunt/clap.yue:297
        if not command_specified then -- shunt/clap.yue:298
          return nil, "command required\n" .. tostring(self:_usage_message(path)) -- shunt/clap.yue:299
        end -- shunt/clap.yue:298
      end -- shunt/clap.yue:292
      return ret, nil -- shunt/clap.yue:301
    end, -- shunt/clap.yue:303
    _add_auto_args = function(self) -- shunt/clap.yue:303
      if self._add_help then -- shunt/clap.yue:304
        if #self._subcommands > 0 then -- shunt/clap.yue:305
          self:add((function() -- shunt/clap.yue:306
            local _with_0 = Subcommand('help') -- shunt/clap.yue:306
            _with_0:dest('_help') -- shunt/clap.yue:307
            _with_0:description('print help and exit') -- shunt/clap.yue:308
            _with_0:add((function() -- shunt/clap.yue:309
              local _with_1 = Param('command') -- shunt/clap.yue:309
              _with_1:description('print help for the given command and exit') -- shunt/clap.yue:310
              _with_1:default(SELF) -- shunt/clap.yue:311
              return _with_1 -- shunt/clap.yue:309
            end)()) -- shunt/clap.yue:309
            return _with_0 -- shunt/clap.yue:306
          end)()) -- shunt/clap.yue:306
        else -- shunt/clap.yue:313
          self:add((function() -- shunt/clap.yue:313
            local _with_0 = Flag('help') -- shunt/clap.yue:313
            _with_0:dest('_usage') -- shunt/clap.yue:314
            _with_0:description('print usage and exit') -- shunt/clap.yue:315
            _with_0:long(nil) -- shunt/clap.yue:316
            return _with_0 -- shunt/clap.yue:313
          end)()) -- shunt/clap.yue:313
          self:add((function() -- shunt/clap.yue:317
            local _with_0 = Flag('help') -- shunt/clap.yue:317
            _with_0:dest('_help') -- shunt/clap.yue:318
            _with_0:description('print help and exit') -- shunt/clap.yue:319
            _with_0:short(nil) -- shunt/clap.yue:320
            return _with_0 -- shunt/clap.yue:317
          end)()) -- shunt/clap.yue:317
        end -- shunt/clap.yue:305
      end -- shunt/clap.yue:304
      if (self._version ~= nil) then -- shunt/clap.yue:322
        return self:add((function() -- shunt/clap.yue:323
          local _with_0 = Flag('version') -- shunt/clap.yue:323
          _with_0:dest('_version') -- shunt/clap.yue:324
          _with_0:description('print version') -- shunt/clap.yue:325
          _with_0:short(nil) -- shunt/clap.yue:326
          return _with_0 -- shunt/clap.yue:323
        end)()) -- shunt/clap.yue:326
      end -- shunt/clap.yue:322
    end, -- shunt/clap.yue:328
    _validate_spec = function(self, is_root) -- shunt/clap.yue:328
      if is_root == nil then -- shunt/clap.yue:328
        is_root = true -- shunt/clap.yue:328
      end -- shunt/clap.yue:328
      if #self._params > 0 and #self._subcommands > 0 then -- shunt/clap.yue:329
        return "cannot have both parameters and subcommands in command " .. tostring(self._name) -- shunt/clap.yue:330
      end -- shunt/clap.yue:329
      do -- shunt/clap.yue:332
        local _with_0 = { } -- shunt/clap.yue:332
        local _list_0 = self._flags -- shunt/clap.yue:333
        for _index_0 = 1, #_list_0 do -- shunt/clap.yue:333
          local flag = _list_0[_index_0] -- shunt/clap.yue:333
          if _with_0[flag._short] or _with_0[flag._long] then -- shunt/clap.yue:334
            return "duplicate flag: " .. tostring(flag:_repr()) -- shunt/clap.yue:335
          end -- shunt/clap.yue:334
          if flag._short then -- shunt/clap.yue:336
            _with_0[flag._short] = true -- shunt/clap.yue:337
          end -- shunt/clap.yue:336
          if flag._long then -- shunt/clap.yue:338
            _with_0[flag._long] = true -- shunt/clap.yue:339
          end -- shunt/clap.yue:338
        end -- shunt/clap.yue:339
      end -- shunt/clap.yue:332
      if not is_root then -- shunt/clap.yue:341
        local _list_0 = self._flags -- shunt/clap.yue:342
        for _index_0 = 1, #_list_0 do -- shunt/clap.yue:342
          local flag = _list_0[_index_0] -- shunt/clap.yue:342
          if flag._global then -- shunt/clap.yue:343
            return "cannot declare " .. tostring(flag._name) .. " as global: not in root command" -- shunt/clap.yue:344
          end -- shunt/clap.yue:343
        end -- shunt/clap.yue:344
      end -- shunt/clap.yue:341
      local arg_dests -- shunt/clap.yue:347
      do -- shunt/clap.yue:347
        local _tbl_0 = { } -- shunt/clap.yue:347
        local _list_0 = self._flags -- shunt/clap.yue:347
        for _index_0 = 1, #_list_0 do -- shunt/clap.yue:347
          local flag = _list_0[_index_0] -- shunt/clap.yue:347
          _tbl_0[flag._dest] = true -- shunt/clap.yue:347
        end -- shunt/clap.yue:347
        arg_dests = _tbl_0 -- shunt/clap.yue:347
      end -- shunt/clap.yue:347
      local remainder_capturer = nil -- shunt/clap.yue:348
      local _list_0 = self._params -- shunt/clap.yue:349
      for _index_0 = 1, #_list_0 do -- shunt/clap.yue:349
        local param = _list_0[_index_0] -- shunt/clap.yue:349
        local dest = param._dest -- shunt/clap.yue:350
        if arg_dests[dest] then -- shunt/clap.yue:351
          return "duplicate parameter name: " .. tostring(dest) -- shunt/clap.yue:352
        end -- shunt/clap.yue:351
        arg_dests[dest] = true -- shunt/clap.yue:353
        if param._capture_remainder then -- shunt/clap.yue:355
          if (remainder_capturer ~= nil) then -- shunt/clap.yue:356
            return "parameters '" .. tostring(remainder_capturer._name) .. "' and '" .. tostring(param._name) .. "' both capture remainder args" -- shunt/clap.yue:357
          end -- shunt/clap.yue:356
          remainder_capturer = param -- shunt/clap.yue:358
          if param._default then -- shunt/clap.yue:360
            return "capture-remainder does not support a default" -- shunt/clap.yue:361
          end -- shunt/clap.yue:360
        end -- shunt/clap.yue:355
      end -- shunt/clap.yue:361
      local _list_1 = self._subcommands -- shunt/clap.yue:363
      for _index_0 = 1, #_list_1 do -- shunt/clap.yue:363
        local subcommand = _list_1[_index_0] -- shunt/clap.yue:363
        local dest = subcommand._dest -- shunt/clap.yue:364
        if (arg_dests[dest] ~= nil) then -- shunt/clap.yue:365
          return "duplicate subcommand name: " .. tostring(dest) -- shunt/clap.yue:366
        end -- shunt/clap.yue:365
        arg_dests[dest] = true -- shunt/clap.yue:367
        do -- shunt/clap.yue:369
          local err = subcommand:_validate_spec(false) -- shunt/clap.yue:369
          if err then -- shunt/clap.yue:369
            return err -- shunt/clap.yue:370
          end -- shunt/clap.yue:369
        end -- shunt/clap.yue:369
      end -- shunt/clap.yue:370
      if #self._params > 0 and #self._subcommands > 0 then -- shunt/clap.yue:372
        return "command cannot have both params and subcommands" -- shunt/clap.yue:373
      end -- shunt/clap.yue:372
      return nil -- shunt/clap.yue:375
    end, -- shunt/clap.yue:377
    _usage_message = function(self, path) -- shunt/clap.yue:377
      if path == nil then -- shunt/clap.yue:377
        path = { } -- shunt/clap.yue:377
      end -- shunt/clap.yue:377
      local path_repr = table.concat(path, ' ') -- shunt/clap.yue:378
      return table.concat((function() -- shunt/clap.yue:379
        local _with_0 = { -- shunt/clap.yue:379
          'Usage: ', -- shunt/clap.yue:379
          path_repr, -- shunt/clap.yue:379
          ' ' -- shunt/clap.yue:379
        } -- shunt/clap.yue:379
        local first_arg = true -- shunt/clap.yue:380
        local _list_0 = self:_sorted_flags() -- shunt/clap.yue:381
        for _index_0 = 1, #_list_0 do -- shunt/clap.yue:381
          local flag = _list_0[_index_0] -- shunt/clap.yue:381
          local _continue_0 = false -- shunt/clap.yue:382
          repeat -- shunt/clap.yue:382
            if flag._hidden then -- shunt/clap.yue:382
              _continue_0 = true -- shunt/clap.yue:383
              break -- shunt/clap.yue:383
            end -- shunt/clap.yue:382
            if not first_arg then -- shunt/clap.yue:384
              _with_0[#_with_0 + 1] = ' ' -- shunt/clap.yue:385
            end -- shunt/clap.yue:384
            first_arg = false -- shunt/clap.yue:386
            if not flag._required then -- shunt/clap.yue:388
              _with_0[#_with_0 + 1] = '[' -- shunt/clap.yue:389
            end -- shunt/clap.yue:388
            _with_0[#_with_0 + 1] = flag:_repr() -- shunt/clap.yue:390
            if flag._takes_param then -- shunt/clap.yue:391
              _with_0[#_with_0 + 1] = ' ' -- shunt/clap.yue:392
              _with_0[#_with_0 + 1] = flag._value_name -- shunt/clap.yue:393
            end -- shunt/clap.yue:391
            if not flag._required then -- shunt/clap.yue:394
              _with_0[#_with_0 + 1] = ']' -- shunt/clap.yue:395
            end -- shunt/clap.yue:394
            _continue_0 = true -- shunt/clap.yue:382
          until true -- shunt/clap.yue:395
          if not _continue_0 then -- shunt/clap.yue:395
            break -- shunt/clap.yue:395
          end -- shunt/clap.yue:395
        end -- shunt/clap.yue:395
        local _list_1 = self._params -- shunt/clap.yue:397
        for _index_0 = 1, #_list_1 do -- shunt/clap.yue:397
          local param = _list_1[_index_0] -- shunt/clap.yue:397
          if not first_arg then -- shunt/clap.yue:398
            _with_0[#_with_0 + 1] = ' ' -- shunt/clap.yue:399
          end -- shunt/clap.yue:398
          first_arg = false -- shunt/clap.yue:400
          if not param._required then -- shunt/clap.yue:402
            _with_0[#_with_0 + 1] = '[' -- shunt/clap.yue:403
          end -- shunt/clap.yue:402
          _with_0[#_with_0 + 1] = param:_repr() -- shunt/clap.yue:404
          if not param._required then -- shunt/clap.yue:405
            _with_0[#_with_0 + 1] = ']' -- shunt/clap.yue:406
          end -- shunt/clap.yue:405
        end -- shunt/clap.yue:406
        if #self._subcommands > 0 then -- shunt/clap.yue:408
          if not first_arg then -- shunt/clap.yue:409
            _with_0[#_with_0 + 1] = ' ' -- shunt/clap.yue:410
          end -- shunt/clap.yue:409
          _with_0[#_with_0 + 1] = '<command>' -- shunt/clap.yue:411
        end -- shunt/clap.yue:408
        return _with_0 -- shunt/clap.yue:379
      end)()) -- shunt/clap.yue:411
    end, -- shunt/clap.yue:413
    _help_message = function(self, path) -- shunt/clap.yue:413
      if path == nil then -- shunt/clap.yue:413
        path = { } -- shunt/clap.yue:413
      end -- shunt/clap.yue:413
      local lines -- shunt/clap.yue:414
      do -- shunt/clap.yue:414
        local _with_0 = { } -- shunt/clap.yue:414
        if (self._description ~= nil) then -- shunt/clap.yue:415
          _with_0[#_with_0 + 1] = table.concat((function() -- shunt/clap.yue:416
            local _with_1 = { } -- shunt/clap.yue:416
            _with_1[#_with_1 + 1] = table.concat(path, ' ') -- shunt/clap.yue:417
            _with_1[#_with_1 + 1] = " - " .. tostring(self._description) -- shunt/clap.yue:418
            return _with_1 -- shunt/clap.yue:416
          end)()) -- shunt/clap.yue:416
        end -- shunt/clap.yue:415
        _with_0[#_with_0 + 1] = '' -- shunt/clap.yue:420
        _with_0[#_with_0 + 1] = self:_usage_message(path) -- shunt/clap.yue:421
        if #self._subcommands > 0 then -- shunt/clap.yue:423
          _with_0[#_with_0 + 1] = '' -- shunt/clap.yue:424
          _with_0[#_with_0 + 1] = 'Commands:' -- shunt/clap.yue:425
          local longest_subommand_repr_len = math.max(unpack((function() -- shunt/clap.yue:427
            local _accum_0 = { } -- shunt/clap.yue:427
            local _len_0 = 1 -- shunt/clap.yue:427
            local _list_0 = self._subcommands -- shunt/clap.yue:427
            for _index_0 = 1, #_list_0 do -- shunt/clap.yue:427
              local sc = _list_0[_index_0] -- shunt/clap.yue:427
              if not sc._hidden then -- shunt/clap.yue:427
                _accum_0[_len_0] = #sc:_repr() -- shunt/clap.yue:427
                _len_0 = _len_0 + 1 -- shunt/clap.yue:427
              end -- shunt/clap.yue:427
            end -- shunt/clap.yue:427
            return _accum_0 -- shunt/clap.yue:427
          end)())) -- shunt/clap.yue:427
          local sorted_subcommands -- shunt/clap.yue:428
          do -- shunt/clap.yue:428
            local _accum_0 = { } -- shunt/clap.yue:428
            local _len_0 = 1 -- shunt/clap.yue:428
            local _list_0 = self._subcommands -- shunt/clap.yue:428
            for _index_0 = 1, #_list_0 do -- shunt/clap.yue:428
              local sc = _list_0[_index_0] -- shunt/clap.yue:428
              if not sc._hidden then -- shunt/clap.yue:428
                _accum_0[_len_0] = sc -- shunt/clap.yue:428
                _len_0 = _len_0 + 1 -- shunt/clap.yue:428
              end -- shunt/clap.yue:428
            end -- shunt/clap.yue:428
            sorted_subcommands = _accum_0 -- shunt/clap.yue:428
          end -- shunt/clap.yue:428
          table.sort(sorted_subcommands, function(sc1, sc2) -- shunt/clap.yue:429
            return sc1._name < sc2._name -- shunt/clap.yue:429
          end) -- shunt/clap.yue:429
          for _index_0 = 1, #sorted_subcommands do -- shunt/clap.yue:430
            local subcommand = sorted_subcommands[_index_0] -- shunt/clap.yue:430
            local repr = subcommand:_repr() -- shunt/clap.yue:431
            do -- shunt/clap.yue:432
              local description = subcommand._description -- shunt/clap.yue:432
              if description then -- shunt/clap.yue:432
                local padding = (' '):rep(longest_subommand_repr_len - #repr) -- shunt/clap.yue:433
                _with_0[#_with_0 + 1] = "  " .. tostring(repr) .. tostring(padding) .. "  " .. tostring(description) -- shunt/clap.yue:434
              else -- shunt/clap.yue:436
                _with_0[#_with_0 + 1] = "  " .. tostring(repr) -- shunt/clap.yue:436
              end -- shunt/clap.yue:432
            end -- shunt/clap.yue:432
          end -- shunt/clap.yue:436
        end -- shunt/clap.yue:423
        if #self._params > 0 then -- shunt/clap.yue:438
          _with_0[#_with_0 + 1] = '' -- shunt/clap.yue:439
          _with_0[#_with_0 + 1] = 'Arguments:' -- shunt/clap.yue:440
          local longest_param_repr_len = math.max(unpack((function() -- shunt/clap.yue:442
            local _accum_0 = { } -- shunt/clap.yue:442
            local _len_0 = 1 -- shunt/clap.yue:442
            local _list_0 = self._params -- shunt/clap.yue:442
            for _index_0 = 1, #_list_0 do -- shunt/clap.yue:442
              local p = _list_0[_index_0] -- shunt/clap.yue:442
              _accum_0[_len_0] = #p:_repr() -- shunt/clap.yue:442
              _len_0 = _len_0 + 1 -- shunt/clap.yue:442
            end -- shunt/clap.yue:442
            return _accum_0 -- shunt/clap.yue:442
          end)())) -- shunt/clap.yue:442
          local _list_0 = self._params -- shunt/clap.yue:443
          for _index_0 = 1, #_list_0 do -- shunt/clap.yue:443
            local param = _list_0[_index_0] -- shunt/clap.yue:443
            local repr = param:_repr() -- shunt/clap.yue:444
            local padding = (' '):rep(longest_param_repr_len - #repr) -- shunt/clap.yue:445
            local description -- shunt/clap.yue:446
            do -- shunt/clap.yue:446
              local _exp_0 = param._description -- shunt/clap.yue:446
              if _exp_0 ~= nil then -- shunt/clap.yue:446
                description = _exp_0 -- shunt/clap.yue:446
              else -- shunt/clap.yue:446
                description = "" -- shunt/clap.yue:446
              end -- shunt/clap.yue:446
            end -- shunt/clap.yue:446
            local default_repr -- shunt/clap.yue:447
            do -- shunt/clap.yue:447
              local default = param._default -- shunt/clap.yue:447
              if default then -- shunt/clap.yue:447
                default_repr = " (default: " .. tostring(default) .. ")" -- shunt/clap.yue:448
              else -- shunt/clap.yue:450
                default_repr = "" -- shunt/clap.yue:450
              end -- shunt/clap.yue:447
            end -- shunt/clap.yue:447
            local options_repr -- shunt/clap.yue:451
            do -- shunt/clap.yue:451
              local options = param._options -- shunt/clap.yue:451
              if options then -- shunt/clap.yue:451
                options_repr = " (one of: " .. tostring(table.concat(options, ', ')) .. ")" -- shunt/clap.yue:452
              else -- shunt/clap.yue:454
                options_repr = "" -- shunt/clap.yue:454
              end -- shunt/clap.yue:451
            end -- shunt/clap.yue:451
            local rhs_width = ((function() -- shunt/clap.yue:455
              local _exp_0 -- shunt/clap.yue:455
              do -- shunt/clap.yue:455
                local _obj_0 = term -- shunt/clap.yue:455
                if _obj_0 ~= nil then -- shunt/clap.yue:455
                  _exp_0 = _obj_0.getSize() -- shunt/clap.yue:455
                end -- shunt/clap.yue:455
              end -- shunt/clap.yue:455
              if _exp_0 ~= nil then -- shunt/clap.yue:455
                return _exp_0 -- shunt/clap.yue:455
              else -- shunt/clap.yue:455
                return 80 -- shunt/clap.yue:455
              end -- shunt/clap.yue:455
            end)()) - (longest_param_repr_len + 3) -- shunt/clap.yue:455
            local rhs_words = (tostring(description) .. tostring(default_repr) .. tostring(options_repr)):gmatch('(%S+)') -- shunt/clap.yue:456
            local rhs_lines -- shunt/clap.yue:457
            do -- shunt/clap.yue:457
              local _with_1 = { } -- shunt/clap.yue:457
              local curr_line = { } -- shunt/clap.yue:458
              local curr_line_len = 0 -- shunt/clap.yue:459
              for word in rhs_words do -- shunt/clap.yue:460
                local _continue_0 = false -- shunt/clap.yue:461
                repeat -- shunt/clap.yue:461
                  if #word > rhs_width then -- shunt/clap.yue:461
                    if #curr_line > 0 then -- shunt/clap.yue:462
                      _with_1[#_with_1 + 1] = table.concat(curr_line, ' ') -- shunt/clap.yue:463
                    end -- shunt/clap.yue:462
                    _with_1[#_with_1 + 1] = word -- shunt/clap.yue:464
                    curr_line = { } -- shunt/clap.yue:465
                    _continue_0 = true -- shunt/clap.yue:466
                    break -- shunt/clap.yue:466
                  end -- shunt/clap.yue:461
                  if curr_line_len + 1 + #word > rhs_width then -- shunt/clap.yue:468
                    _with_1[#_with_1 + 1] = table.concat(curr_line, ' ') -- shunt/clap.yue:469
                    curr_line = { -- shunt/clap.yue:470
                      word -- shunt/clap.yue:470
                    } -- shunt/clap.yue:470
                    curr_line_len = #word -- shunt/clap.yue:471
                    _continue_0 = true -- shunt/clap.yue:472
                    break -- shunt/clap.yue:472
                  end -- shunt/clap.yue:468
                  curr_line[#curr_line + 1] = word -- shunt/clap.yue:474
                  curr_line_len = curr_line_len + (1 + #word) -- shunt/clap.yue:475
                  _continue_0 = true -- shunt/clap.yue:461
                until true -- shunt/clap.yue:475
                if not _continue_0 then -- shunt/clap.yue:475
                  break -- shunt/clap.yue:475
                end -- shunt/clap.yue:475
              end -- shunt/clap.yue:475
              if #curr_line > 0 then -- shunt/clap.yue:476
                _with_1[#_with_1 + 1] = table.concat(curr_line, ' ') -- shunt/clap.yue:477
              end -- shunt/clap.yue:476
              rhs_lines = _with_1 -- shunt/clap.yue:457
            end -- shunt/clap.yue:457
            _with_0[#_with_0 + 1] = " " .. tostring(repr) .. tostring(padding) .. "  " .. tostring(table.concat(rhs_lines, '\n' .. (' '):rep(longest_param_repr_len + 3))) -- shunt/clap.yue:479
          end -- shunt/clap.yue:479
        end -- shunt/clap.yue:438
        if #self._flags > 0 then -- shunt/clap.yue:481
          _with_0[#_with_0 + 1] = '' -- shunt/clap.yue:482
          _with_0[#_with_0 + 1] = 'Flags:' -- shunt/clap.yue:483
          local longest_local_flag_repr_len = math.max(0, unpack((function() -- shunt/clap.yue:485
            local _accum_0 = { } -- shunt/clap.yue:485
            local _len_0 = 1 -- shunt/clap.yue:485
            local _list_0 = self._flags -- shunt/clap.yue:485
            for _index_0 = 1, #_list_0 do -- shunt/clap.yue:485
              local p = _list_0[_index_0] -- shunt/clap.yue:485
              _accum_0[_len_0] = #p:_long_repr() -- shunt/clap.yue:485
              _len_0 = _len_0 + 1 -- shunt/clap.yue:485
            end -- shunt/clap.yue:485
            return _accum_0 -- shunt/clap.yue:485
          end)())) -- shunt/clap.yue:485
          local longest_global_flag_repr_len = math.max(0, unpack((function() -- shunt/clap.yue:486
            local _accum_0 = { } -- shunt/clap.yue:486
            local _len_0 = 1 -- shunt/clap.yue:486
            local _list_0 = self:_global_flags() -- shunt/clap.yue:486
            for _index_0 = 1, #_list_0 do -- shunt/clap.yue:486
              local p = _list_0[_index_0] -- shunt/clap.yue:486
              _accum_0[_len_0] = #p:_long_repr() -- shunt/clap.yue:486
              _len_0 = _len_0 + 1 -- shunt/clap.yue:486
            end -- shunt/clap.yue:486
            return _accum_0 -- shunt/clap.yue:486
          end)())) -- shunt/clap.yue:486
          local longest_flag_repr_len = math.max(longest_local_flag_repr_len, longest_global_flag_repr_len) -- shunt/clap.yue:487
          local _list_0 = self:_sorted_flags() -- shunt/clap.yue:488
          for _index_0 = 1, #_list_0 do -- shunt/clap.yue:488
            local flag = _list_0[_index_0] -- shunt/clap.yue:488
            local _continue_0 = false -- shunt/clap.yue:489
            repeat -- shunt/clap.yue:489
              if flag._hidden then -- shunt/clap.yue:489
                _continue_0 = true -- shunt/clap.yue:490
                break -- shunt/clap.yue:490
              end -- shunt/clap.yue:489
              local repr = flag:_long_repr() -- shunt/clap.yue:492
              do -- shunt/clap.yue:493
                local description = flag._description -- shunt/clap.yue:493
                if description then -- shunt/clap.yue:493
                  local padding = (' '):rep(longest_flag_repr_len - #repr) -- shunt/clap.yue:494
                  _with_0[#_with_0 + 1] = " " .. tostring(repr) .. tostring(padding) .. "  " .. tostring(description) -- shunt/clap.yue:495
                else -- shunt/clap.yue:497
                  _with_0[#_with_0 + 1] = " " .. tostring(repr) -- shunt/clap.yue:497
                end -- shunt/clap.yue:493
              end -- shunt/clap.yue:493
              _continue_0 = true -- shunt/clap.yue:489
            until true -- shunt/clap.yue:497
            if not _continue_0 then -- shunt/clap.yue:497
              break -- shunt/clap.yue:497
            end -- shunt/clap.yue:497
          end -- shunt/clap.yue:497
        end -- shunt/clap.yue:481
        lines = _with_0 -- shunt/clap.yue:414
      end -- shunt/clap.yue:414
      return table.concat(lines, '\n') -- shunt/clap.yue:499
    end, -- shunt/clap.yue:501
    _sorted_flags = function(self) -- shunt/clap.yue:501
      local ret -- shunt/clap.yue:502
      do -- shunt/clap.yue:502
        local _tab_0 = { } -- shunt/clap.yue:502
        local _obj_0 = self._flags -- shunt/clap.yue:502
        local _idx_0 = 1 -- shunt/clap.yue:502
        for _key_0, _value_0 in pairs(_obj_0) do -- shunt/clap.yue:502
          if _idx_0 == _key_0 then -- shunt/clap.yue:502
            _tab_0[#_tab_0 + 1] = _value_0 -- shunt/clap.yue:502
            _idx_0 = _idx_0 + 1 -- shunt/clap.yue:502
          else -- shunt/clap.yue:502
            _tab_0[_key_0] = _value_0 -- shunt/clap.yue:502
          end -- shunt/clap.yue:502
        end -- shunt/clap.yue:502
        local _obj_1 = self:_global_flags() -- shunt/clap.yue:502
        local _idx_1 = 1 -- shunt/clap.yue:502
        for _key_0, _value_0 in pairs(_obj_1) do -- shunt/clap.yue:502
          if _idx_1 == _key_0 then -- shunt/clap.yue:502
            _tab_0[#_tab_0 + 1] = _value_0 -- shunt/clap.yue:502
            _idx_1 = _idx_1 + 1 -- shunt/clap.yue:502
          else -- shunt/clap.yue:502
            _tab_0[_key_0] = _value_0 -- shunt/clap.yue:502
          end -- shunt/clap.yue:502
        end -- shunt/clap.yue:502
        ret = _tab_0 -- shunt/clap.yue:502
      end -- shunt/clap.yue:502
      table.sort(ret, function(flag1, flag2) -- shunt/clap.yue:503
        local name1 = (flag1._short or flag1._long):match('[^-]+$') -- shunt/clap.yue:504
        local name2 = (flag2._short or flag2._long):match('[^-]+$') -- shunt/clap.yue:505
        return name1 < name2 -- shunt/clap.yue:506
      end) -- shunt/clap.yue:503
      return ret -- shunt/clap.yue:507
    end, -- shunt/clap.yue:509
    _global_flags = function(self) -- shunt/clap.yue:509
      local _with_0 = { } -- shunt/clap.yue:510
      if (self._parent_command ~= nil) then -- shunt/clap.yue:511
        local root = self -- shunt/clap.yue:512
        while (root._parent_command ~= nil) do -- shunt/clap.yue:513
          root = root._parent_command -- shunt/clap.yue:514
        end -- shunt/clap.yue:514
        local _list_0 = root._flags -- shunt/clap.yue:515
        for _index_0 = 1, #_list_0 do -- shunt/clap.yue:515
          local flag = _list_0[_index_0] -- shunt/clap.yue:515
          if flag._global then -- shunt/clap.yue:516
            _with_0[#_with_0 + 1] = flag -- shunt/clap.yue:517
          end -- shunt/clap.yue:516
        end -- shunt/clap.yue:517
      end -- shunt/clap.yue:511
      return _with_0 -- shunt/clap.yue:510
    end, -- shunt/clap.yue:519
    _version_message = function(self, path) -- shunt/clap.yue:519
      if path == nil then -- shunt/clap.yue:519
        path = { } -- shunt/clap.yue:519
      end -- shunt/clap.yue:519
      local parts -- shunt/clap.yue:520
      do -- shunt/clap.yue:520
        local _tab_0 = { } -- shunt/clap.yue:520
        local _idx_0 = 1 -- shunt/clap.yue:520
        for _key_0, _value_0 in pairs(path) do -- shunt/clap.yue:520
          if _idx_0 == _key_0 then -- shunt/clap.yue:520
            _tab_0[#_tab_0 + 1] = _value_0 -- shunt/clap.yue:520
            _idx_0 = _idx_0 + 1 -- shunt/clap.yue:520
          else -- shunt/clap.yue:520
            _tab_0[_key_0] = _value_0 -- shunt/clap.yue:520
          end -- shunt/clap.yue:520
        end -- shunt/clap.yue:520
        parts = _tab_0 -- shunt/clap.yue:520
      end -- shunt/clap.yue:520
      if (self._version ~= nil) then -- shunt/clap.yue:521
        parts[#parts + 1] = self._version -- shunt/clap.yue:522
      end -- shunt/clap.yue:521
      return table.concat(parts, ' ') -- shunt/clap.yue:523
    end, -- shunt/clap.yue:525
    _repr = function(self) -- shunt/clap.yue:525
      return self._name -- shunt/clap.yue:525
    end -- shunt/clap.yue:120
  } -- shunt/clap.yue:120
  if _base_0.__index == nil then -- shunt/clap.yue:120
    _base_0.__index = _base_0 -- shunt/clap.yue:120
  end -- shunt/clap.yue:525
  _class_0 = setmetatable({ -- shunt/clap.yue:120
    __init = function(self, _name) -- shunt/clap.yue:121
      self._name = _name -- shunt/clap.yue:121
      self._parent_command = nil -- shunt/clap.yue:122
      self._dest = self._name:gsub('-', '_') -- shunt/clap.yue:123
      self._version = nil -- shunt/clap.yue:124
      self._flags = { } -- shunt/clap.yue:125
      self._params = { } -- shunt/clap.yue:126
      self._subcommands = { } -- shunt/clap.yue:127
      self._hidden = false -- shunt/clap.yue:128
      self._add_help = true -- shunt/clap.yue:129
      self._description = nil -- shunt/clap.yue:130
      self._auto_args_added = false -- shunt/clap.yue:131
    end, -- shunt/clap.yue:120
    __base = _base_0, -- shunt/clap.yue:120
    __name = "Subcommand" -- shunt/clap.yue:120
  }, { -- shunt/clap.yue:120
    __index = _base_0, -- shunt/clap.yue:120
    __call = function(cls, ...) -- shunt/clap.yue:120
      local _self_0 = setmetatable({ }, _base_0) -- shunt/clap.yue:120
      cls.__init(_self_0, ...) -- shunt/clap.yue:120
      return _self_0 -- shunt/clap.yue:120
    end -- shunt/clap.yue:120
  }) -- shunt/clap.yue:120
  _base_0.__class = _class_0 -- shunt/clap.yue:120
  Subcommand = _class_0 -- shunt/clap.yue:120
end -- shunt/clap.yue:525
_module_0["Subcommand"] = Subcommand -- shunt/clap.yue:120
local ArgParser -- shunt/clap.yue:527
do -- shunt/clap.yue:527
  local _class_0 -- shunt/clap.yue:527
  local _parent_0 = Subcommand -- shunt/clap.yue:527
  local _base_0 = { -- shunt/clap.yue:527
    parse = function(self, args) -- shunt/clap.yue:530
      if not self._auto_args_added then -- shunt/clap.yue:531
        self:_add_auto_args() -- shunt/clap.yue:532
        local _list_0 = self._subcommands -- shunt/clap.yue:533
        for _index_0 = 1, #_list_0 do -- shunt/clap.yue:533
          local subcommand = _list_0[_index_0] -- shunt/clap.yue:533
          subcommand:_add_auto_args() -- shunt/clap.yue:534
        end -- shunt/clap.yue:534
      end -- shunt/clap.yue:531
      self._auto_args_added = true -- shunt/clap.yue:535
      do -- shunt/clap.yue:537
        local err = self:_validate_spec() -- shunt/clap.yue:537
        if err then -- shunt/clap.yue:537
          print(err) -- shunt/clap.yue:538
          return nil, false -- shunt/clap.yue:539
        end -- shunt/clap.yue:537
      end -- shunt/clap.yue:537
      local global_flags -- shunt/clap.yue:541
      do -- shunt/clap.yue:541
        local _accum_0 = { } -- shunt/clap.yue:541
        local _len_0 = 1 -- shunt/clap.yue:541
        local _list_0 = self._flags -- shunt/clap.yue:541
        for _index_0 = 1, #_list_0 do -- shunt/clap.yue:541
          local flag = _list_0[_index_0] -- shunt/clap.yue:541
          if flag._global then -- shunt/clap.yue:541
            _accum_0[_len_0] = flag -- shunt/clap.yue:541
            _len_0 = _len_0 + 1 -- shunt/clap.yue:541
          end -- shunt/clap.yue:541
        end -- shunt/clap.yue:541
        global_flags = _accum_0 -- shunt/clap.yue:541
      end -- shunt/clap.yue:541
      local global_values -- shunt/clap.yue:542
      do -- shunt/clap.yue:542
        local _with_0 = { } -- shunt/clap.yue:542
        for _index_0 = 1, #global_flags do -- shunt/clap.yue:543
          local global_flag = global_flags[_index_0] -- shunt/clap.yue:543
          _with_0[global_flag._dest] = global_flag._default -- shunt/clap.yue:544
        end -- shunt/clap.yue:544
        global_values = _with_0 -- shunt/clap.yue:542
      end -- shunt/clap.yue:542
      local ret, err = self:_parse(args, global_flags, global_values, { -- shunt/clap.yue:545
        self._name -- shunt/clap.yue:545
      }) -- shunt/clap.yue:545
      if (err ~= nil) then -- shunt/clap.yue:546
        if err == EXIT then -- shunt/clap.yue:547
          return nil, false -- shunt/clap.yue:548
        end -- shunt/clap.yue:547
        print(err) -- shunt/clap.yue:549
        return nil, false -- shunt/clap.yue:550
      end -- shunt/clap.yue:546
      return ret, true -- shunt/clap.yue:551
    end -- shunt/clap.yue:527
  } -- shunt/clap.yue:527
  for _key_0, _val_0 in pairs(_parent_0.__base) do -- shunt/clap.yue:551
    if _base_0[_key_0] == nil and _key_0:match("^__") and not (_key_0 == "__index" and _val_0 == _parent_0.__base) then -- shunt/clap.yue:527
      _base_0[_key_0] = _val_0 -- shunt/clap.yue:527
    end -- shunt/clap.yue:527
  end -- shunt/clap.yue:551
  if _base_0.__index == nil then -- shunt/clap.yue:527
    _base_0.__index = _base_0 -- shunt/clap.yue:527
  end -- shunt/clap.yue:551
  setmetatable(_base_0, _parent_0.__base) -- shunt/clap.yue:527
  _class_0 = setmetatable({ -- shunt/clap.yue:527
    __init = function(self, _name) -- shunt/clap.yue:528
      self._name = _name -- shunt/clap.yue:528
      return _class_0.__parent.__init(self, self._name) -- shunt/clap.yue:528
    end, -- shunt/clap.yue:527
    __base = _base_0, -- shunt/clap.yue:527
    __name = "ArgParser", -- shunt/clap.yue:527
    __parent = _parent_0 -- shunt/clap.yue:527
  }, { -- shunt/clap.yue:527
    __index = function(cls, name) -- shunt/clap.yue:527
      local val = rawget(_base_0, name) -- shunt/clap.yue:527
      if val == nil then -- shunt/clap.yue:527
        local parent = rawget(cls, "__parent") -- shunt/clap.yue:527
        if parent then -- shunt/clap.yue:527
          return parent[name] -- shunt/clap.yue:527
        end -- shunt/clap.yue:527
      else -- shunt/clap.yue:527
        return val -- shunt/clap.yue:527
      end -- shunt/clap.yue:527
    end, -- shunt/clap.yue:527
    __call = function(cls, ...) -- shunt/clap.yue:527
      local _self_0 = setmetatable({ }, _base_0) -- shunt/clap.yue:527
      cls.__init(_self_0, ...) -- shunt/clap.yue:527
      return _self_0 -- shunt/clap.yue:527
    end -- shunt/clap.yue:527
  }) -- shunt/clap.yue:527
  _base_0.__class = _class_0 -- shunt/clap.yue:527
  if _parent_0.__inherited then -- shunt/clap.yue:527
    _parent_0.__inherited(_parent_0, _class_0) -- shunt/clap.yue:527
  end -- shunt/clap.yue:527
  ArgParser = _class_0 -- shunt/clap.yue:527
end -- shunt/clap.yue:551
_module_0["ArgParser"] = ArgParser -- shunt/clap.yue:527
return _module_0 -- shunt/clap.yue:551
end
package.preload['shunt.logger'] = function(...)
-- [yue]: shunt/logger.yue
local _module_0 = { } -- shunt/logger.yue:1
local verbose, LOG_DIR, LOG_FILE, set_log_verbosity, log, fatal, test_mode, activate_test_mode, trace, setup_done, write_to_log, MAX_LOGS, setup_logs -- shunt/logger.yue:1
verbose = false -- shunt/logger.yue:3
LOG_DIR = "logs" -- shunt/logger.yue:5
LOG_FILE = tostring(LOG_DIR) .. "/run-" .. tostring(os.date('%Y-%m-%d@%H:%M:%S')) .. ".log" -- shunt/logger.yue:6
set_log_verbosity = function(v) -- shunt/logger.yue:8
  verbose = v -- shunt/logger.yue:9
end -- shunt/logger.yue:8
_module_0["set_log_verbosity"] = set_log_verbosity -- shunt/logger.yue:9
log = function(fn) -- shunt/logger.yue:11
  local msg = fn() -- shunt/logger.yue:12
  if verbose then -- shunt/logger.yue:13
    print(msg) -- shunt/logger.yue:14
  end -- shunt/logger.yue:13
  return write_to_log(msg) -- shunt/logger.yue:15
end -- shunt/logger.yue:11
_module_0["log"] = log -- shunt/logger.yue:15
fatal = function(...) -- shunt/logger.yue:17
  local fragments -- shunt/logger.yue:18
  do -- shunt/logger.yue:18
    local _with_0 = { } -- shunt/logger.yue:18
    for i = 1, select('#', ...) do -- shunt/logger.yue:19
      _with_0[#_with_0 + 1] = tostring(select(i, ...)) -- shunt/logger.yue:20
    end -- shunt/logger.yue:20
    fragments = _with_0 -- shunt/logger.yue:18
  end -- shunt/logger.yue:18
  local msg = table.concat(fragments, ' ') -- shunt/logger.yue:21
  print(msg) -- shunt/logger.yue:22
  write_to_log(msg) -- shunt/logger.yue:23
  return os.exit(1) -- shunt/logger.yue:25
end -- shunt/logger.yue:17
_module_0["fatal"] = fatal -- shunt/logger.yue:25
test_mode = false -- shunt/logger.yue:27
activate_test_mode = function() -- shunt/logger.yue:28
  test_mode = true -- shunt/logger.yue:29
end -- shunt/logger.yue:28
_module_0["activate_test_mode"] = activate_test_mode -- shunt/logger.yue:29
trace = function(msg) -- shunt/logger.yue:31
  if test_mode then -- shunt/logger.yue:32
    print(msg) -- shunt/logger.yue:33
  end -- shunt/logger.yue:32
  return write_to_log(msg) -- shunt/logger.yue:34
end -- shunt/logger.yue:31
_module_0["trace"] = trace -- shunt/logger.yue:34
setup_done = false -- shunt/logger.yue:36
write_to_log = function(msg) -- shunt/logger.yue:37
  if not setup_done then -- shunt/logger.yue:38
    setup_done = true -- shunt/logger.yue:39
    setup_logs() -- shunt/logger.yue:40
  end -- shunt/logger.yue:38
  local timestamp = os.date('%Y-%m-%d@%H:%M:%S') -- shunt/logger.yue:42
  local to_write = "[" .. tostring(timestamp) .. "]: " .. tostring(msg) .. "\n" -- shunt/logger.yue:43
  do -- shunt/logger.yue:44
    local _with_0 = io.open(LOG_FILE, 'a') -- shunt/logger.yue:44
    if _with_0 ~= nil then -- shunt/logger.yue:44
      _with_0:write(to_write) -- shunt/logger.yue:45
      _with_0:close() -- shunt/logger.yue:46
    end -- shunt/logger.yue:44
  end -- shunt/logger.yue:44
  return -- shunt/logger.yue:47
end -- shunt/logger.yue:37
MAX_LOGS = 10 -- shunt/logger.yue:49
setup_logs = function() -- shunt/logger.yue:50
  fs.makeDir(LOG_DIR) -- shunt/logger.yue:51
  local existing_logs = fs.list(LOG_DIR) -- shunt/logger.yue:53
  table.sort(existing_logs, function(a, b) -- shunt/logger.yue:54
    return a > b -- shunt/logger.yue:54
  end) -- shunt/logger.yue:54
  for _index_0 = MAX_LOGS - 1, #existing_logs do -- shunt/logger.yue:55
    local log_to_delete = existing_logs[_index_0] -- shunt/logger.yue:55
    os.remove(tostring(LOG_DIR) .. "/" .. tostring(log_to_delete)) -- shunt/logger.yue:56
  end -- shunt/logger.yue:56
end -- shunt/logger.yue:50
return _module_0 -- shunt/logger.yue:56
end
package.preload['shunt.quicktype'] = function(...)
-- [yue]: shunt/quicktype.yue
local _module_0 = { } -- shunt/quicktype.yue:1
local T, t_impl, is, COLLECT_STATS, type_checkers, type_checker, F, function_types, function_type, is_valid_type_spec, parse, contains, TypeSpecParser, T_PAREN_OPEN, T_PAREN_CLOSE, T_BRACE_OPEN, T_BRACE_CLOSE, T_BRACKET_OPEN, T_BRACKET_CLOSE, T_ANGLE_OPEN, T_ANGLE_CLOSE, T_TILDE, T_COMMA, T_COLON, T_BANG, T_THIN_ARROW, T_FAT_ARROW, T_DOTDOTDOT, T_QUESTION, T_PLUS, T_PIPE, T_NAME, T_PREFIXED_NAME, T_BOOLEAN, T_NUMBER, T_STRING, Lexer, Checkpoint, known_primitives, named_type, prefixed_named_type, Is, Primitive, Any, Some, Never, UserType, SingletonType, BooleanType, NumberType, StringType, Optional, Array, Tuple, Struct, Field, Set, Mapping, Function, Method, Remainder, Disjunction, Conjunction, CheckerBuilder, Label, C_PUSH, C_PUSH_METATABLE, C_POP, C_ASSERT_NON_NIL, C_ASSERT_PRIMITIVE, C_ASSERT_TABLE_LIKE, C_ASSERT_TRUTHY, C_ASSERT_LEN, C_ASSERT_EQ, C_ASSERT_NEVER, C_GET_FIELD, C_INCR, C_DECR, C_NEXT, C_JMP, C_JMP_IF_NIL, C_PUSH_CHECKER, C_PUSH_UNION_CTX, C_CLEAR_BAILING, C_SET_UNION_BAIL_TARGET, C_POP_UNION_CTX, V_NIL, checker_program_repr, LABEL_PLACEHOLDER, MAX_CHECKER_DEPTH, stack_size, stack, keys_used, num_unions, union_depths, union_bail_jumps, root_union, num_running_checkers, instruction_counts, check, user_types, declare_type, declare_singleton_type, skip_typechecking, deactivate_typechecks, stats -- shunt/quicktype.yue:1
local Symbol -- shunt/quicktype.yue:2
local repr, spec -- shunt/quicktype.yue:0
do -- shunt/quicktype.yue:0
  local _obj_0 = require('shunt.spec') -- shunt/quicktype.yue:0
  repr, spec = _obj_0.repr, _obj_0.spec -- shunt/quicktype.yue:0
end -- shunt/quicktype.yue:0
T = function(type_spec, value) -- shunt/quicktype.yue:6
  if skip_typechecking then -- shunt/quicktype.yue:7
    return -- shunt/quicktype.yue:8
  end -- shunt/quicktype.yue:7
  return t_impl(type_spec, value) -- shunt/quicktype.yue:9
end -- shunt/quicktype.yue:6
_module_0["T"] = T -- shunt/quicktype.yue:9
t_impl = function(type_spec, value) -- shunt/quicktype.yue:11
  if not (type_spec ~= nil) then -- shunt/quicktype.yue:12
    error('cannot typecheck: no type spec provided') -- shunt/quicktype.yue:13
  end -- shunt/quicktype.yue:12
  local checker = type_checker(type_spec) -- shunt/quicktype.yue:15
  local err = check(checker, value) -- shunt/quicktype.yue:16
  if (err ~= nil) then -- shunt/quicktype.yue:17
    error(err, 2) -- shunt/quicktype.yue:18
  end -- shunt/quicktype.yue:17
  return value -- shunt/quicktype.yue:19
end -- shunt/quicktype.yue:11
is = function(type_spec, value) -- shunt/quicktype.yue:21
  if not (type_spec ~= nil) then -- shunt/quicktype.yue:22
    error('cannot typecheck: no type spec provided') -- shunt/quicktype.yue:23
  end -- shunt/quicktype.yue:22
  local err -- shunt/quicktype.yue:25
xpcall(function() -- shunt/quicktype.yue:26
    return T(type_spec, value) -- shunt/quicktype.yue:27
  end, function(err2) -- shunt/quicktype.yue:27
    err = err2 -- shunt/quicktype.yue:29
  end) -- shunt/quicktype.yue:29
  return not (err ~= nil), err -- shunt/quicktype.yue:30
end -- shunt/quicktype.yue:21
_module_0["is"] = is -- shunt/quicktype.yue:30
COLLECT_STATS = false -- shunt/quicktype.yue:37
_module_0["COLLECT_STATS"] = COLLECT_STATS -- shunt/quicktype.yue:37
type_checkers = { } -- shunt/quicktype.yue:39
type_checker = function(type_spec) -- shunt/quicktype.yue:40
  local _exp_0 = type_checkers[type_spec] -- shunt/quicktype.yue:41
  if _exp_0 ~= nil then -- shunt/quicktype.yue:41
    return _exp_0 -- shunt/quicktype.yue:41
  else -- shunt/quicktype.yue:41
    do -- shunt/quicktype.yue:41
      local checker = (parse(type_spec)):checker():build() -- shunt/quicktype.yue:43
      type_checkers[type_spec] = checker -- shunt/quicktype.yue:45
      return checker -- shunt/quicktype.yue:46
    end -- shunt/quicktype.yue:46
  end -- shunt/quicktype.yue:41
end -- shunt/quicktype.yue:40
F = function(type_spec, fn) -- shunt/quicktype.yue:48
  if skip_typechecking then -- shunt/quicktype.yue:49
    return -- shunt/quicktype.yue:50
  end -- shunt/quicktype.yue:49
  if not (type_spec ~= nil) then -- shunt/quicktype.yue:51
    error('cannot typecheck: no type spec provided') -- shunt/quicktype.yue:52
  end -- shunt/quicktype.yue:51
  if 'function' ~= type(fn) then -- shunt/quicktype.yue:53
    error('cannot typecheck: no function provided') -- shunt/quicktype.yue:54
  end -- shunt/quicktype.yue:53
  local fn_type = function_type(type_spec) -- shunt/quicktype.yue:56
  local return_types = fn_type:return_checkers() -- shunt/quicktype.yue:58
  local n_return_types = #return_types -- shunt/quicktype.yue:59
  local check_returns -- shunt/quicktype.yue:60
  check_returns = function(...) -- shunt/quicktype.yue:60
    for i = 1, n_return_types do -- shunt/quicktype.yue:61
      local err = check(return_types[i], select(i, ...)) -- shunt/quicktype.yue:62
      if (err ~= nil) then -- shunt/quicktype.yue:63
        error("return value " .. tostring(i) .. " incorrect: " .. tostring(err) .. " (checking " .. tostring(fn_type) .. ")", 2) -- shunt/quicktype.yue:64
      end -- shunt/quicktype.yue:63
    end -- shunt/quicktype.yue:64
    for i = n_return_types + 1, (select('#', ...)) do -- shunt/quicktype.yue:65
      local checker = return_types[i] -- shunt/quicktype.yue:66
      if not (checker ~= nil) then -- shunt/quicktype.yue:67
        error("function returned too many values: expected " .. tostring(n_return_types) .. " but got " .. tostring(select('#', ...)) .. " (checking " .. tostring(fn_type) .. ")", 2) -- shunt/quicktype.yue:68
      end -- shunt/quicktype.yue:67
      local err = check(checker, (select(i, ...))) -- shunt/quicktype.yue:69
      if (err ~= nil) then -- shunt/quicktype.yue:70
        error("return value " .. tostring(i) .. " incorrect: " .. tostring(err) .. " (checking " .. tostring(fn_type) .. ")", 2) -- shunt/quicktype.yue:71
      end -- shunt/quicktype.yue:70
    end -- shunt/quicktype.yue:71
    return ... -- shunt/quicktype.yue:72
  end -- shunt/quicktype.yue:60
  local param_types = fn_type:param_checkers() -- shunt/quicktype.yue:74
  local n_param_types = #param_types -- shunt/quicktype.yue:75
  return function(...) -- shunt/quicktype.yue:76
    if skip_typechecking then -- shunt/quicktype.yue:77
      return fn(...) -- shunt/quicktype.yue:78
    end -- shunt/quicktype.yue:77
    for i = 1, n_param_types do -- shunt/quicktype.yue:80
      local err = check(param_types[i], (select(i, ...))) -- shunt/quicktype.yue:81
      if (err ~= nil) then -- shunt/quicktype.yue:82
        error("argument " .. tostring(i) .. " incorrect: " .. tostring(err) .. " (checking " .. tostring(fn_type) .. ")", 3) -- shunt/quicktype.yue:83
      end -- shunt/quicktype.yue:82
    end -- shunt/quicktype.yue:83
    for i = n_param_types + 1, select('#', ...) do -- shunt/quicktype.yue:84
      local checker = param_types[i] -- shunt/quicktype.yue:85
      if not (checker ~= nil) then -- shunt/quicktype.yue:86
        error("function given too many arguments: expected " .. tostring(n_param_types) .. " but got " .. tostring(select('#', ...)) .. " (checking " .. tostring(fn_type) .. ")", 3) -- shunt/quicktype.yue:87
      end -- shunt/quicktype.yue:86
      local err = check(checker, (select(i, ...))) -- shunt/quicktype.yue:88
      if (err ~= nil) then -- shunt/quicktype.yue:89
        error("argument " .. tostring(i) .. " incorrect: " .. tostring(err) .. " (checking " .. tostring(fn_type) .. ")", 3) -- shunt/quicktype.yue:90
      end -- shunt/quicktype.yue:89
    end -- shunt/quicktype.yue:90
    return check_returns(fn(...)) -- shunt/quicktype.yue:92
  end -- shunt/quicktype.yue:92
end -- shunt/quicktype.yue:48
_module_0["F"] = F -- shunt/quicktype.yue:92
function_types = { } -- shunt/quicktype.yue:94
function_type = function(type_spec) -- shunt/quicktype.yue:95
  local _exp_0 = function_types[type_spec] -- shunt/quicktype.yue:96
  if _exp_0 ~= nil then -- shunt/quicktype.yue:96
    return _exp_0 -- shunt/quicktype.yue:96
  else -- shunt/quicktype.yue:96
    do -- shunt/quicktype.yue:96
      local parsed_type = parse(type_spec) -- shunt/quicktype.yue:98
      if not (parsed_type:is(Function)) and not parsed_type:is(Method) then -- shunt/quicktype.yue:99
        error("cannot typecheck: expected a function type") -- shunt/quicktype.yue:100
      end -- shunt/quicktype.yue:99
      function_types[type_spec] = parsed_type -- shunt/quicktype.yue:102
      return parsed_type -- shunt/quicktype.yue:103
    end -- shunt/quicktype.yue:103
  end -- shunt/quicktype.yue:96
end -- shunt/quicktype.yue:95
is_valid_type_spec = function(type_spec) -- shunt/quicktype.yue:105
  local ret = true -- shunt/quicktype.yue:106
xpcall(function() -- shunt/quicktype.yue:107
    return parse(type_spec) -- shunt/quicktype.yue:108
  end, function(_) -- shunt/quicktype.yue:108
    ret = false -- shunt/quicktype.yue:110
  end) -- shunt/quicktype.yue:110
  return ret -- shunt/quicktype.yue:111
end -- shunt/quicktype.yue:105
_module_0["is_valid_type_spec"] = is_valid_type_spec -- shunt/quicktype.yue:111
parse = function(type_spec) -- shunt/quicktype.yue:113
  local type_spec_parser = TypeSpecParser(Lexer(type_spec)) -- shunt/quicktype.yue:114
  return type_spec_parser:parse() -- shunt/quicktype.yue:115
end -- shunt/quicktype.yue:113
local Parser -- shunt/quicktype.yue:117
do -- shunt/quicktype.yue:117
  local _class_0 -- shunt/quicktype.yue:117
  local _base_0 = { -- shunt/quicktype.yue:117
    parse = function(self) -- shunt/quicktype.yue:119
      return error('unimplemented') -- shunt/quicktype.yue:120
    end, -- shunt/quicktype.yue:122
    parse_repeat_separated = function(self, elem_parser, sep_token, opts) -- shunt/quicktype.yue:122
      if opts == nil then -- shunt/quicktype.yue:122
        opts = { } -- shunt/quicktype.yue:122
      end -- shunt/quicktype.yue:122
      local separator_trails_before, allow_repeated_separator = opts.separator_trails_before, opts.allow_repeated_separator -- shunt/quicktype.yue:123
      if not (separator_trails_before ~= nil) or 'table' ~= type(separator_trails_before[1]) then -- shunt/quicktype.yue:127
        separator_trails_before = { -- shunt/quicktype.yue:128
          separator_trails_before -- shunt/quicktype.yue:128
        } -- shunt/quicktype.yue:128
      end -- shunt/quicktype.yue:127
      local _with_0 = { } -- shunt/quicktype.yue:130
      _with_0[#_with_0 + 1] = elem_parser() -- shunt/quicktype.yue:131
      local tok = self.lexer:peek() -- shunt/quicktype.yue:132
      while (tok ~= nil) and tok.type == sep_token do -- shunt/quicktype.yue:133
        self.lexer:next() -- shunt/quicktype.yue:134
        if allow_repeated_separator then -- shunt/quicktype.yue:135
          self:ignore_any(sep_token) -- shunt/quicktype.yue:136
        end -- shunt/quicktype.yue:135
        tok = self.lexer:peek() -- shunt/quicktype.yue:137
        if (tok ~= nil) and contains(tok.type, separator_trails_before) then -- shunt/quicktype.yue:138
          break -- shunt/quicktype.yue:139
        end -- shunt/quicktype.yue:138
        _with_0[#_with_0 + 1] = elem_parser() -- shunt/quicktype.yue:141
        tok = self.lexer:peek() -- shunt/quicktype.yue:142
      end -- shunt/quicktype.yue:142
      return _with_0 -- shunt/quicktype.yue:130
    end, -- shunt/quicktype.yue:144
    repeat_until = function(self, elem_parser, until_tok) -- shunt/quicktype.yue:144
      local _with_0 = { } -- shunt/quicktype.yue:145
      while self.lexer:peek().type ~= until_tok do -- shunt/quicktype.yue:146
        _with_0[#_with_0 + 1] = elem_parser() -- shunt/quicktype.yue:147
      end -- shunt/quicktype.yue:147
      return _with_0 -- shunt/quicktype.yue:145
    end, -- shunt/quicktype.yue:149
    expect = function(self, expected_token) -- shunt/quicktype.yue:149
      local token = self.lexer:next() -- shunt/quicktype.yue:150
      if not (token ~= nil) then -- shunt/quicktype.yue:151
        error("unexpected EOF") -- shunt/quicktype.yue:152
      end -- shunt/quicktype.yue:151
      if token.type ~= expected_token then -- shunt/quicktype.yue:153
        error("expected " .. tostring(expected_token) .. ", got " .. tostring(token)) -- shunt/quicktype.yue:154
      end -- shunt/quicktype.yue:153
      local _exp_0 = token.value -- shunt/quicktype.yue:155
      if _exp_0 ~= nil then -- shunt/quicktype.yue:155
        return _exp_0 -- shunt/quicktype.yue:155
      else -- shunt/quicktype.yue:155
        return token.type -- shunt/quicktype.yue:155
      end -- shunt/quicktype.yue:155
    end, -- shunt/quicktype.yue:157
    ignore_any = function(self, expected_token) -- shunt/quicktype.yue:157
      local next_token = self.lexer:peek() -- shunt/quicktype.yue:158
      while (next_token ~= nil) and next_token.type == expected_token do -- shunt/quicktype.yue:159
        self:expect(expected_token) -- shunt/quicktype.yue:160
        next_token = self.lexer:peek() -- shunt/quicktype.yue:161
      end -- shunt/quicktype.yue:161
    end, -- shunt/quicktype.yue:163
    maybe = function(self, expected_token) -- shunt/quicktype.yue:163
      local token = self.lexer:peek() -- shunt/quicktype.yue:164
      if not (token ~= nil) then -- shunt/quicktype.yue:165
        return nil -- shunt/quicktype.yue:166
      end -- shunt/quicktype.yue:165
      if token.type ~= expected_token then -- shunt/quicktype.yue:167
        return nil -- shunt/quicktype.yue:168
      end -- shunt/quicktype.yue:167
      self.lexer:next() -- shunt/quicktype.yue:169
      local _exp_0 = token.value -- shunt/quicktype.yue:170
      if _exp_0 ~= nil then -- shunt/quicktype.yue:170
        return _exp_0 -- shunt/quicktype.yue:170
      else -- shunt/quicktype.yue:170
        return token.type -- shunt/quicktype.yue:170
      end -- shunt/quicktype.yue:170
    end, -- shunt/quicktype.yue:172
    select = function(self, options) -- shunt/quicktype.yue:172
      local next_token = self.lexer:peek() -- shunt/quicktype.yue:173
      if not (next_token ~= nil) then -- shunt/quicktype.yue:174
        error("unexpected EOF") -- shunt/quicktype.yue:175
      end -- shunt/quicktype.yue:174
      local i = 1 -- shunt/quicktype.yue:177
      while options[i] do -- shunt/quicktype.yue:178
        local option = options[i] -- shunt/quicktype.yue:179
        if option.token == next_token.type then -- shunt/quicktype.yue:180
          do -- shunt/quicktype.yue:181
            local action = option.action -- shunt/quicktype.yue:181
            if action then -- shunt/quicktype.yue:181
              return action() -- shunt/quicktype.yue:182
            else -- shunt/quicktype.yue:184
              return self:expect(option.token) -- shunt/quicktype.yue:184
            end -- shunt/quicktype.yue:181
          end -- shunt/quicktype.yue:181
        end -- shunt/quicktype.yue:180
        i = i + 1 -- shunt/quicktype.yue:185
      end -- shunt/quicktype.yue:185
      if (options.otherwise ~= nil) then -- shunt/quicktype.yue:187
        return options.otherwise() -- shunt/quicktype.yue:188
      end -- shunt/quicktype.yue:187
      local options_repr = table.concat((function() -- shunt/quicktype.yue:190
        local _accum_0 = { } -- shunt/quicktype.yue:190
        local _len_0 = 1 -- shunt/quicktype.yue:190
        for _index_0 = 1, #options do -- shunt/quicktype.yue:190
          local option = options[_index_0] -- shunt/quicktype.yue:190
          _accum_0[_len_0] = tostring(option.token) -- shunt/quicktype.yue:190
          _len_0 = _len_0 + 1 -- shunt/quicktype.yue:190
        end -- shunt/quicktype.yue:190
        return _accum_0 -- shunt/quicktype.yue:190
      end)(), ', ') -- shunt/quicktype.yue:190
      return error("expected one of " .. tostring(options_repr) .. ", got " .. tostring(next_token.type)) -- shunt/quicktype.yue:191
    end, -- shunt/quicktype.yue:193
    sequence = function(self, expected_tokens) -- shunt/quicktype.yue:193
      local _with_0 = { } -- shunt/quicktype.yue:194
      for _index_0 = 1, #expected_tokens do -- shunt/quicktype.yue:195
        local _des_0 = expected_tokens[_index_0] -- shunt/quicktype.yue:195
        local expected_token, action = _des_0.token, _des_0.action -- shunt/quicktype.yue:195
        if (expected_token ~= nil) then -- shunt/quicktype.yue:196
          local token = self.lexer:next() -- shunt/quicktype.yue:197
          if not (token ~= nil) then -- shunt/quicktype.yue:198
            error("unexpected EOF") -- shunt/quicktype.yue:199
          end -- shunt/quicktype.yue:198
          if token.type ~= expected_token then -- shunt/quicktype.yue:200
            error("expected " .. tostring(expected_token) .. ", got " .. tostring(token.type)) -- shunt/quicktype.yue:201
          end -- shunt/quicktype.yue:200
          do -- shunt/quicktype.yue:202
            local _exp_0 = token.value -- shunt/quicktype.yue:202
            if _exp_0 ~= nil then -- shunt/quicktype.yue:202
              _with_0[#_with_0 + 1] = _exp_0 -- shunt/quicktype.yue:202
            else -- shunt/quicktype.yue:202
              _with_0[#_with_0 + 1] = 0 -- shunt/quicktype.yue:202
            end -- shunt/quicktype.yue:202
          end -- shunt/quicktype.yue:202
        else -- shunt/quicktype.yue:203
          if (action ~= nil) then -- shunt/quicktype.yue:203
            _with_0[#_with_0 + 1] = action() -- shunt/quicktype.yue:204
          else -- shunt/quicktype.yue:206
            error("sequence element must have expected_token or action") -- shunt/quicktype.yue:206
          end -- shunt/quicktype.yue:203
        end -- shunt/quicktype.yue:196
      end -- shunt/quicktype.yue:206
      return _with_0 -- shunt/quicktype.yue:194
    end -- shunt/quicktype.yue:117
  } -- shunt/quicktype.yue:117
  if _base_0.__index == nil then -- shunt/quicktype.yue:117
    _base_0.__index = _base_0 -- shunt/quicktype.yue:117
  end -- shunt/quicktype.yue:206
  _class_0 = setmetatable({ -- shunt/quicktype.yue:117
    __init = function(self, lexer) -- shunt/quicktype.yue:118
      self.lexer = lexer -- shunt/quicktype.yue:118
    end, -- shunt/quicktype.yue:117
    __base = _base_0, -- shunt/quicktype.yue:117
    __name = "Parser" -- shunt/quicktype.yue:117
  }, { -- shunt/quicktype.yue:117
    __index = _base_0, -- shunt/quicktype.yue:117
    __call = function(cls, ...) -- shunt/quicktype.yue:117
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:117
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:117
      return _self_0 -- shunt/quicktype.yue:117
    end -- shunt/quicktype.yue:117
  }) -- shunt/quicktype.yue:117
  _base_0.__class = _class_0 -- shunt/quicktype.yue:117
  Parser = _class_0 -- shunt/quicktype.yue:117
end -- shunt/quicktype.yue:206
_module_0["Parser"] = Parser -- shunt/quicktype.yue:117
contains = function(needle, haystack) -- shunt/quicktype.yue:208
  for _index_0 = 1, #haystack do -- shunt/quicktype.yue:209
    local elem = haystack[_index_0] -- shunt/quicktype.yue:209
    if needle == elem then -- shunt/quicktype.yue:210
      return true -- shunt/quicktype.yue:211
    end -- shunt/quicktype.yue:210
  end -- shunt/quicktype.yue:211
  return false -- shunt/quicktype.yue:212
end -- shunt/quicktype.yue:208
do -- shunt/quicktype.yue:214
  local _class_0 -- shunt/quicktype.yue:214
  local _parent_0 = Parser -- shunt/quicktype.yue:214
  local _base_0 = { -- shunt/quicktype.yue:214
    parse = function(self) -- shunt/quicktype.yue:215
      local ret = self:parse_type() -- shunt/quicktype.yue:216
      if self.lexer:peek() then -- shunt/quicktype.yue:217
        error("type spec has trailing characters: '" .. tostring(self.lexer.type_spec) .. "'") -- shunt/quicktype.yue:218
      end -- shunt/quicktype.yue:217
      return ret -- shunt/quicktype.yue:219
    end, -- shunt/quicktype.yue:221
    parse_type = function(self) -- shunt/quicktype.yue:221
      if self:maybe(T_BANG) then -- shunt/quicktype.yue:222
        return Never() -- shunt/quicktype.yue:223
      end -- shunt/quicktype.yue:222
      return self:parse_type_disjunction() -- shunt/quicktype.yue:225
    end, -- shunt/quicktype.yue:227
    parse_type_disjunction = function(self) -- shunt/quicktype.yue:227
      local disjunction = self:parse_repeat_separated((function() -- shunt/quicktype.yue:228
        local _base_1 = self -- shunt/quicktype.yue:228
        local _fn_0 = _base_1.parse_type_conjunction -- shunt/quicktype.yue:228
        return _fn_0 and function(...) -- shunt/quicktype.yue:228
          return _fn_0(_base_1, ...) -- shunt/quicktype.yue:228
        end -- shunt/quicktype.yue:228
      end)(), T_PIPE) -- shunt/quicktype.yue:228
      if #disjunction == 1 then -- shunt/quicktype.yue:229
        return disjunction[1] -- shunt/quicktype.yue:230
      else -- shunt/quicktype.yue:232
        return Disjunction(disjunction) -- shunt/quicktype.yue:232
      end -- shunt/quicktype.yue:229
    end, -- shunt/quicktype.yue:234
    parse_type_conjunction = function(self) -- shunt/quicktype.yue:234
      local conjunction = self:parse_repeat_separated((function() -- shunt/quicktype.yue:235
        local _base_1 = self -- shunt/quicktype.yue:235
        local _fn_0 = _base_1.parse_optional_type -- shunt/quicktype.yue:235
        return _fn_0 and function(...) -- shunt/quicktype.yue:235
          return _fn_0(_base_1, ...) -- shunt/quicktype.yue:235
        end -- shunt/quicktype.yue:235
      end)(), T_PLUS) -- shunt/quicktype.yue:235
      if #conjunction == 1 then -- shunt/quicktype.yue:236
        return conjunction[1] -- shunt/quicktype.yue:237
      else -- shunt/quicktype.yue:239
        return Conjunction(conjunction) -- shunt/quicktype.yue:239
      end -- shunt/quicktype.yue:236
    end, -- shunt/quicktype.yue:241
    parse_optional_type = function(self) -- shunt/quicktype.yue:241
      return self:select({ -- shunt/quicktype.yue:243
        { -- shunt/quicktype.yue:243
          token = T_QUESTION, -- shunt/quicktype.yue:243
          action = function() -- shunt/quicktype.yue:244
            self:expect(T_QUESTION) -- shunt/quicktype.yue:245
            return Optional(self:parse_specific_type()) -- shunt/quicktype.yue:246
          end -- shunt/quicktype.yue:244
        }, -- shunt/quicktype.yue:243
        otherwise = function() -- shunt/quicktype.yue:247
          return self:parse_specific_type() -- shunt/quicktype.yue:248
        end -- shunt/quicktype.yue:247
      }) -- shunt/quicktype.yue:248
    end, -- shunt/quicktype.yue:250
    parse_specific_type = function(self) -- shunt/quicktype.yue:250
      return self:select({ -- shunt/quicktype.yue:252
        { -- shunt/quicktype.yue:252
          token = T_NAME, -- shunt/quicktype.yue:252
          action = (function() -- shunt/quicktype.yue:253
            local _base_1 = self -- shunt/quicktype.yue:253
            local _fn_0 = _base_1.parse_named_type -- shunt/quicktype.yue:253
            return _fn_0 and function(...) -- shunt/quicktype.yue:253
              return _fn_0(_base_1, ...) -- shunt/quicktype.yue:253
            end -- shunt/quicktype.yue:253
          end)() -- shunt/quicktype.yue:253
        }, -- shunt/quicktype.yue:252
        { -- shunt/quicktype.yue:254
          token = T_PREFIXED_NAME, -- shunt/quicktype.yue:254
          action = (function() -- shunt/quicktype.yue:255
            local _base_1 = self -- shunt/quicktype.yue:255
            local _fn_0 = _base_1.parse_prefixed_named_type -- shunt/quicktype.yue:255
            return _fn_0 and function(...) -- shunt/quicktype.yue:255
              return _fn_0(_base_1, ...) -- shunt/quicktype.yue:255
            end -- shunt/quicktype.yue:255
          end)() -- shunt/quicktype.yue:255
        }, -- shunt/quicktype.yue:254
        { -- shunt/quicktype.yue:256
          token = T_BOOLEAN, -- shunt/quicktype.yue:256
          action = (function() -- shunt/quicktype.yue:257
            local _base_1 = self -- shunt/quicktype.yue:257
            local _fn_0 = _base_1.parse_boolean_type -- shunt/quicktype.yue:257
            return _fn_0 and function(...) -- shunt/quicktype.yue:257
              return _fn_0(_base_1, ...) -- shunt/quicktype.yue:257
            end -- shunt/quicktype.yue:257
          end)() -- shunt/quicktype.yue:257
        }, -- shunt/quicktype.yue:256
        { -- shunt/quicktype.yue:258
          token = T_NUMBER, -- shunt/quicktype.yue:258
          action = (function() -- shunt/quicktype.yue:259
            local _base_1 = self -- shunt/quicktype.yue:259
            local _fn_0 = _base_1.parse_number_type -- shunt/quicktype.yue:259
            return _fn_0 and function(...) -- shunt/quicktype.yue:259
              return _fn_0(_base_1, ...) -- shunt/quicktype.yue:259
            end -- shunt/quicktype.yue:259
          end)() -- shunt/quicktype.yue:259
        }, -- shunt/quicktype.yue:258
        { -- shunt/quicktype.yue:260
          token = T_STRING, -- shunt/quicktype.yue:260
          action = (function() -- shunt/quicktype.yue:261
            local _base_1 = self -- shunt/quicktype.yue:261
            local _fn_0 = _base_1.parse_string_type -- shunt/quicktype.yue:261
            return _fn_0 and function(...) -- shunt/quicktype.yue:261
              return _fn_0(_base_1, ...) -- shunt/quicktype.yue:261
            end -- shunt/quicktype.yue:261
          end)() -- shunt/quicktype.yue:261
        }, -- shunt/quicktype.yue:260
        { -- shunt/quicktype.yue:262
          token = T_BRACKET_OPEN, -- shunt/quicktype.yue:262
          action = (function() -- shunt/quicktype.yue:263
            local _base_1 = self -- shunt/quicktype.yue:263
            local _fn_0 = _base_1.parse_array -- shunt/quicktype.yue:263
            return _fn_0 and function(...) -- shunt/quicktype.yue:263
              return _fn_0(_base_1, ...) -- shunt/quicktype.yue:263
            end -- shunt/quicktype.yue:263
          end)() -- shunt/quicktype.yue:263
        }, -- shunt/quicktype.yue:262
        { -- shunt/quicktype.yue:264
          token = T_PAREN_OPEN, -- shunt/quicktype.yue:264
          action = (function() -- shunt/quicktype.yue:265
            local _base_1 = self -- shunt/quicktype.yue:265
            local _fn_0 = _base_1.parse_tuple_or_function -- shunt/quicktype.yue:265
            return _fn_0 and function(...) -- shunt/quicktype.yue:265
              return _fn_0(_base_1, ...) -- shunt/quicktype.yue:265
            end -- shunt/quicktype.yue:265
          end)() -- shunt/quicktype.yue:265
        }, -- shunt/quicktype.yue:264
        { -- shunt/quicktype.yue:266
          token = T_TILDE, -- shunt/quicktype.yue:266
          action = (function() -- shunt/quicktype.yue:267
            local _base_1 = self -- shunt/quicktype.yue:267
            local _fn_0 = _base_1.parse_table_like -- shunt/quicktype.yue:267
            return _fn_0 and function(...) -- shunt/quicktype.yue:267
              return _fn_0(_base_1, ...) -- shunt/quicktype.yue:267
            end -- shunt/quicktype.yue:267
          end)() -- shunt/quicktype.yue:267
        }, -- shunt/quicktype.yue:266
        { -- shunt/quicktype.yue:268
          token = T_BRACE_OPEN, -- shunt/quicktype.yue:268
          action = (function() -- shunt/quicktype.yue:269
            local _base_1 = self -- shunt/quicktype.yue:269
            local _fn_0 = _base_1.parse_table -- shunt/quicktype.yue:269
            return _fn_0 and function(...) -- shunt/quicktype.yue:269
              return _fn_0(_base_1, ...) -- shunt/quicktype.yue:269
            end -- shunt/quicktype.yue:269
          end)() -- shunt/quicktype.yue:269
        } -- shunt/quicktype.yue:268
      }) -- shunt/quicktype.yue:269
    end, -- shunt/quicktype.yue:271
    parse_named_type = function(self) -- shunt/quicktype.yue:271
      return named_type(self:expect(T_NAME)) -- shunt/quicktype.yue:272
    end, -- shunt/quicktype.yue:274
    parse_prefixed_named_type = function(self) -- shunt/quicktype.yue:274
      return prefixed_named_type(self:expect(T_PREFIXED_NAME)) -- shunt/quicktype.yue:275
    end, -- shunt/quicktype.yue:277
    parse_boolean_type = function(self) -- shunt/quicktype.yue:277
      return BooleanType(self:expect(T_BOOLEAN)) -- shunt/quicktype.yue:278
    end, -- shunt/quicktype.yue:280
    parse_number_type = function(self) -- shunt/quicktype.yue:280
      return NumberType(self:expect(T_NUMBER)) -- shunt/quicktype.yue:281
    end, -- shunt/quicktype.yue:283
    parse_string_type = function(self) -- shunt/quicktype.yue:283
      return StringType(self:expect(T_STRING)) -- shunt/quicktype.yue:284
    end, -- shunt/quicktype.yue:286
    parse_array = function(self, is_table_like) -- shunt/quicktype.yue:286
      if is_table_like == nil then -- shunt/quicktype.yue:286
        is_table_like = false -- shunt/quicktype.yue:286
      end -- shunt/quicktype.yue:286
      local elem_type = self:sequence({ -- shunt/quicktype.yue:288
        { -- shunt/quicktype.yue:288
          token = T_BRACKET_OPEN -- shunt/quicktype.yue:288
        }, -- shunt/quicktype.yue:288
        { -- shunt/quicktype.yue:289
          action = (function() -- shunt/quicktype.yue:289
            local _base_1 = self -- shunt/quicktype.yue:289
            local _fn_0 = _base_1.parse_type -- shunt/quicktype.yue:289
            return _fn_0 and function(...) -- shunt/quicktype.yue:289
              return _fn_0(_base_1, ...) -- shunt/quicktype.yue:289
            end -- shunt/quicktype.yue:289
          end)() -- shunt/quicktype.yue:289
        }, -- shunt/quicktype.yue:289
        { -- shunt/quicktype.yue:290
          token = T_BRACKET_CLOSE -- shunt/quicktype.yue:290
        } -- shunt/quicktype.yue:290
      })[2] -- shunt/quicktype.yue:287
      return (Array(elem_type)):table_like(is_table_like) -- shunt/quicktype.yue:292
    end, -- shunt/quicktype.yue:294
    parse_tuple_or_function = function(self, is_table_like) -- shunt/quicktype.yue:294
      if is_table_like == nil then -- shunt/quicktype.yue:294
        is_table_like = false -- shunt/quicktype.yue:294
      end -- shunt/quicktype.yue:294
      self:expect(T_PAREN_OPEN) -- shunt/quicktype.yue:295
      local types -- shunt/quicktype.yue:296
      if self:maybe(T_PAREN_CLOSE) then -- shunt/quicktype.yue:297
        types = { } -- shunt/quicktype.yue:298
      else -- shunt/quicktype.yue:300
        types = self:sequence({ -- shunt/quicktype.yue:301
          { -- shunt/quicktype.yue:301
            action = function() -- shunt/quicktype.yue:301
              return self:parse_repeat_separated((function() -- shunt/quicktype.yue:302
                local _base_1 = self -- shunt/quicktype.yue:302
                local _fn_0 = _base_1.parse_function_io_type -- shunt/quicktype.yue:302
                return _fn_0 and function(...) -- shunt/quicktype.yue:302
                  return _fn_0(_base_1, ...) -- shunt/quicktype.yue:302
                end -- shunt/quicktype.yue:302
              end)(), T_COMMA, { -- shunt/quicktype.yue:302
                separator_trails_before = T_PAREN_CLOSE -- shunt/quicktype.yue:302
              }) -- shunt/quicktype.yue:302
            end -- shunt/quicktype.yue:301
          }, -- shunt/quicktype.yue:301
          { -- shunt/quicktype.yue:303
            token = T_PAREN_CLOSE -- shunt/quicktype.yue:303
          } -- shunt/quicktype.yue:303
        })[1] -- shunt/quicktype.yue:300
      end -- shunt/quicktype.yue:297
      local function_arrow -- shunt/quicktype.yue:304
      do -- shunt/quicktype.yue:304
        local _exp_0 = (self:maybe(T_THIN_ARROW)) -- shunt/quicktype.yue:304
        if _exp_0 ~= nil then -- shunt/quicktype.yue:304
          function_arrow = _exp_0 -- shunt/quicktype.yue:304
        else -- shunt/quicktype.yue:304
          function_arrow = self:maybe(T_FAT_ARROW) -- shunt/quicktype.yue:304
        end -- shunt/quicktype.yue:304
      end -- shunt/quicktype.yue:304
      if not (function_arrow ~= nil) then -- shunt/quicktype.yue:305
        for _index_0 = 1, #types do -- shunt/quicktype.yue:306
          local ty = types[_index_0] -- shunt/quicktype.yue:306
          if ty:is(Remainder) then -- shunt/quicktype.yue:307
            error('tuple type cannot contain varargs') -- shunt/quicktype.yue:308
          end -- shunt/quicktype.yue:307
        end -- shunt/quicktype.yue:308
        return (Tuple(types)):table_like(is_table_like) -- shunt/quicktype.yue:310
      end -- shunt/quicktype.yue:305
      if is_table_like then -- shunt/quicktype.yue:312
        local ty -- shunt/quicktype.yue:313
        if function_arrow == T_THIN_ARROW then -- shunt/quicktype.yue:314
          ty = 'functions' -- shunt/quicktype.yue:315
        else -- shunt/quicktype.yue:317
          ty = 'methods' -- shunt/quicktype.yue:317
        end -- shunt/quicktype.yue:314
        error(tostring(ty) .. " cannot be table-like") -- shunt/quicktype.yue:318
      end -- shunt/quicktype.yue:312
      do -- shunt/quicktype.yue:320
        local _max_0 = -1 -- shunt/quicktype.yue:320
        for _index_0 = 1, _max_0 < 0 and #types + _max_0 or _max_0 do -- shunt/quicktype.yue:320
          local ty = types[_index_0] -- shunt/quicktype.yue:320
          if ty:is(Remainder) then -- shunt/quicktype.yue:321
            error('varargs can only be declared at end of a param type list') -- shunt/quicktype.yue:322
          end -- shunt/quicktype.yue:321
        end -- shunt/quicktype.yue:322
      end -- shunt/quicktype.yue:322
      local last_ty = types[#types] -- shunt/quicktype.yue:324
      if (last_ty ~= nil) and last_ty:is(Remainder) then -- shunt/quicktype.yue:325
        setmetatable(types, { -- shunt/quicktype.yue:326
          __index = function(self) -- shunt/quicktype.yue:326
            return last_ty.type -- shunt/quicktype.yue:326
          end -- shunt/quicktype.yue:326
        }) -- shunt/quicktype.yue:326
        types[#types] = nil -- shunt/quicktype.yue:327
      end -- shunt/quicktype.yue:325
      if T_THIN_ARROW == function_arrow then -- shunt/quicktype.yue:330
        return Function(types, self:parse_return_type()) -- shunt/quicktype.yue:331
      elseif T_FAT_ARROW == function_arrow then -- shunt/quicktype.yue:332
        return Method(types, self:parse_return_type()) -- shunt/quicktype.yue:333
      else -- shunt/quicktype.yue:335
        return error("internal error: unknown function arrow type: " .. tostring(function_arrow)) -- shunt/quicktype.yue:335
      end -- shunt/quicktype.yue:335
    end, -- shunt/quicktype.yue:337
    parse_return_type = function(self) -- shunt/quicktype.yue:337
      return self:select({ -- shunt/quicktype.yue:339
        { -- shunt/quicktype.yue:339
          token = T_ANGLE_OPEN, -- shunt/quicktype.yue:339
          action = function() -- shunt/quicktype.yue:340
            self:expect(T_ANGLE_OPEN) -- shunt/quicktype.yue:341
            if self:maybe(T_ANGLE_CLOSE) then -- shunt/quicktype.yue:342
              return { } -- shunt/quicktype.yue:343
            end -- shunt/quicktype.yue:342
            local types = self:parse_repeat_separated((function() -- shunt/quicktype.yue:344
              local _base_1 = self -- shunt/quicktype.yue:344
              local _fn_0 = _base_1.parse_function_io_type -- shunt/quicktype.yue:344
              return _fn_0 and function(...) -- shunt/quicktype.yue:344
                return _fn_0(_base_1, ...) -- shunt/quicktype.yue:344
              end -- shunt/quicktype.yue:344
            end)(), T_COMMA, { -- shunt/quicktype.yue:344
              separator_trails_before = T_ANGLE_CLOSE -- shunt/quicktype.yue:344
            }) -- shunt/quicktype.yue:344
            self:expect(T_ANGLE_CLOSE) -- shunt/quicktype.yue:345
            do -- shunt/quicktype.yue:347
              local _max_0 = -1 -- shunt/quicktype.yue:347
              for _index_0 = 1, _max_0 < 0 and #types + _max_0 or _max_0 do -- shunt/quicktype.yue:347
                local ty = types[_index_0] -- shunt/quicktype.yue:347
                if ty:is(Remainder) then -- shunt/quicktype.yue:348
                  error('variable returns can only be declared at end of a return type list') -- shunt/quicktype.yue:349
                end -- shunt/quicktype.yue:348
              end -- shunt/quicktype.yue:349
            end -- shunt/quicktype.yue:349
            local last_ty = types[#types] -- shunt/quicktype.yue:351
            if (last_ty ~= nil) and last_ty:is(Remainder) then -- shunt/quicktype.yue:352
              setmetatable(types, { -- shunt/quicktype.yue:353
                __index = function(self) -- shunt/quicktype.yue:353
                  return last_ty.type -- shunt/quicktype.yue:353
                end -- shunt/quicktype.yue:353
              }) -- shunt/quicktype.yue:353
              types[#types] = nil -- shunt/quicktype.yue:354
            end -- shunt/quicktype.yue:352
            return types -- shunt/quicktype.yue:356
          end -- shunt/quicktype.yue:340
        }, -- shunt/quicktype.yue:339
        otherwise = function() -- shunt/quicktype.yue:357
          local ty = self:parse_function_io_type() -- shunt/quicktype.yue:358
          if ty:is(Remainder) then -- shunt/quicktype.yue:359
            return setmetatable({ }, { -- shunt/quicktype.yue:360
              __index = function(self) -- shunt/quicktype.yue:360
                return ty.type -- shunt/quicktype.yue:360
              end -- shunt/quicktype.yue:360
            }) -- shunt/quicktype.yue:360
          else -- shunt/quicktype.yue:362
            return { -- shunt/quicktype.yue:362
              ty -- shunt/quicktype.yue:362
            } -- shunt/quicktype.yue:362
          end -- shunt/quicktype.yue:359
        end -- shunt/quicktype.yue:357
      }) -- shunt/quicktype.yue:362
    end, -- shunt/quicktype.yue:364
    parse_function_io_type = function(self) -- shunt/quicktype.yue:364
      local ty = self:parse_type() -- shunt/quicktype.yue:365
      if ((self:maybe(T_DOTDOTDOT)) ~= nil) then -- shunt/quicktype.yue:366
        return Remainder(ty) -- shunt/quicktype.yue:367
      else -- shunt/quicktype.yue:369
        return ty -- shunt/quicktype.yue:369
      end -- shunt/quicktype.yue:366
    end, -- shunt/quicktype.yue:371
    parse_table_like = function(self) -- shunt/quicktype.yue:371
      self:expect(T_TILDE) -- shunt/quicktype.yue:372
      return self:select({ -- shunt/quicktype.yue:374
        { -- shunt/quicktype.yue:374
          token = T_BRACE_OPEN, -- shunt/quicktype.yue:374
          action = function() -- shunt/quicktype.yue:375
            return self:parse_table(true) -- shunt/quicktype.yue:375
          end -- shunt/quicktype.yue:375
        }, -- shunt/quicktype.yue:374
        { -- shunt/quicktype.yue:376
          token = T_BRACKET_OPEN, -- shunt/quicktype.yue:376
          action = function() -- shunt/quicktype.yue:377
            return self:parse_array(true) -- shunt/quicktype.yue:377
          end -- shunt/quicktype.yue:377
        }, -- shunt/quicktype.yue:376
        { -- shunt/quicktype.yue:378
          token = T_PAREN_OPEN, -- shunt/quicktype.yue:378
          action = function() -- shunt/quicktype.yue:379
            return self:parse_tuple_or_function(true) -- shunt/quicktype.yue:379
          end -- shunt/quicktype.yue:379
        } -- shunt/quicktype.yue:378
      }) -- shunt/quicktype.yue:379
    end, -- shunt/quicktype.yue:381
    parse_table = function(self, is_table_like) -- shunt/quicktype.yue:381
      if is_table_like == nil then -- shunt/quicktype.yue:381
        is_table_like = false -- shunt/quicktype.yue:381
      end -- shunt/quicktype.yue:381
      local table = self:sequence({ -- shunt/quicktype.yue:383
        { -- shunt/quicktype.yue:383
          token = T_BRACE_OPEN -- shunt/quicktype.yue:383
        }, -- shunt/quicktype.yue:383
        { -- shunt/quicktype.yue:384
          action = function() -- shunt/quicktype.yue:384
            return self:parse_table_content(is_table_like) -- shunt/quicktype.yue:384
          end -- shunt/quicktype.yue:384
        }, -- shunt/quicktype.yue:384
        { -- shunt/quicktype.yue:385
          token = T_BRACE_CLOSE -- shunt/quicktype.yue:385
        } -- shunt/quicktype.yue:385
      })[2] -- shunt/quicktype.yue:382
      return table -- shunt/quicktype.yue:386
    end, -- shunt/quicktype.yue:388
    parse_table_content = function(self, is_table_like) -- shunt/quicktype.yue:388
      if is_table_like == nil then -- shunt/quicktype.yue:388
        is_table_like = false -- shunt/quicktype.yue:388
      end -- shunt/quicktype.yue:388
      if ((function() -- shunt/quicktype.yue:389
        local _exp_0 = self.lexer:peek() -- shunt/quicktype.yue:389
        if _exp_0 ~= nil then -- shunt/quicktype.yue:389
          return _exp_0 -- shunt/quicktype.yue:389
        else -- shunt/quicktype.yue:389
          return { } -- shunt/quicktype.yue:389
        end -- shunt/quicktype.yue:389
      end)()).type == T_BRACE_CLOSE then -- shunt/quicktype.yue:389
        return (Struct(nil, { })):table_like(is_table_like) -- shunt/quicktype.yue:391
      end -- shunt/quicktype.yue:389
      local metatable_type -- shunt/quicktype.yue:393
      if ((self:maybe(T_ANGLE_OPEN)) ~= nil) then -- shunt/quicktype.yue:394
        self:expect(T_ANGLE_CLOSE) -- shunt/quicktype.yue:395
        self:expect(T_COLON) -- shunt/quicktype.yue:396
        metatable_type = self:parse_type() -- shunt/quicktype.yue:397
        local checkpoint = self.lexer:checkpoint() -- shunt/quicktype.yue:398
        self:maybe(T_COMMA) -- shunt/quicktype.yue:399
        if ((function() -- shunt/quicktype.yue:400
          local _exp_0 = self.lexer:peek() -- shunt/quicktype.yue:400
          if _exp_0 ~= nil then -- shunt/quicktype.yue:400
            return _exp_0 -- shunt/quicktype.yue:400
          else -- shunt/quicktype.yue:400
            return { } -- shunt/quicktype.yue:400
          end -- shunt/quicktype.yue:400
        end)()).type == T_BRACE_CLOSE then -- shunt/quicktype.yue:400
          return (Struct(metatable_type, { })):table_like(is_table_like) -- shunt/quicktype.yue:402
        end -- shunt/quicktype.yue:400
        self.lexer:restore(checkpoint) -- shunt/quicktype.yue:403
        self:expect(T_COMMA) -- shunt/quicktype.yue:404
      end -- shunt/quicktype.yue:394
      local checkpoint = self.lexer:checkpoint() -- shunt/quicktype.yue:406
      local is_struct = ((self:maybe(T_NAME)) ~= nil) and ((self:maybe(T_COLON)) ~= nil) -- shunt/quicktype.yue:407
      self.lexer:restore(checkpoint) -- shunt/quicktype.yue:408
      if is_struct then -- shunt/quicktype.yue:410
        return (Struct(metatable_type, self:parse_repeat_separated((function() -- shunt/quicktype.yue:411
          local _base_1 = self -- shunt/quicktype.yue:411
          local _fn_0 = _base_1.parse_field -- shunt/quicktype.yue:411
          return _fn_0 and function(...) -- shunt/quicktype.yue:411
            return _fn_0(_base_1, ...) -- shunt/quicktype.yue:411
          end -- shunt/quicktype.yue:411
        end)(), T_COMMA, { -- shunt/quicktype.yue:411
          separator_trails_before = T_BRACE_CLOSE -- shunt/quicktype.yue:411
        }))):table_like(is_table_like) -- shunt/quicktype.yue:412
      end -- shunt/quicktype.yue:410
      local first_type = self:parse_type() -- shunt/quicktype.yue:414
      local table_content_type = self:select({ -- shunt/quicktype.yue:416
        { -- shunt/quicktype.yue:416
          token = T_BRACE_CLOSE, -- shunt/quicktype.yue:416
          action = function() -- shunt/quicktype.yue:417
            return 'set' -- shunt/quicktype.yue:417
          end -- shunt/quicktype.yue:417
        }, -- shunt/quicktype.yue:416
        { -- shunt/quicktype.yue:418
          token = T_THIN_ARROW, -- shunt/quicktype.yue:418
          action = function() -- shunt/quicktype.yue:419
            return 'mapping' -- shunt/quicktype.yue:419
          end -- shunt/quicktype.yue:419
        } -- shunt/quicktype.yue:418
      }) -- shunt/quicktype.yue:415
      if 'set' == table_content_type then -- shunt/quicktype.yue:422
        return (Set(metatable_type, first_type)):table_like(is_table_like) -- shunt/quicktype.yue:424
      elseif 'mapping' == table_content_type then -- shunt/quicktype.yue:425
        local maps_to = self:sequence({ -- shunt/quicktype.yue:427
          { -- shunt/quicktype.yue:427
            token = T_THIN_ARROW -- shunt/quicktype.yue:427
          }, -- shunt/quicktype.yue:427
          { -- shunt/quicktype.yue:428
            action = (function() -- shunt/quicktype.yue:428
              local _base_1 = self -- shunt/quicktype.yue:428
              local _fn_0 = _base_1.parse_type -- shunt/quicktype.yue:428
              return _fn_0 and function(...) -- shunt/quicktype.yue:428
                return _fn_0(_base_1, ...) -- shunt/quicktype.yue:428
              end -- shunt/quicktype.yue:428
            end)() -- shunt/quicktype.yue:428
          } -- shunt/quicktype.yue:428
        })[2] -- shunt/quicktype.yue:426
        return (Mapping(metatable_type, first_type, maps_to)):table_like(is_table_like) -- shunt/quicktype.yue:430
      else -- shunt/quicktype.yue:432
        return error("internal error: illegal table contents type: " .. tostring(repr(table_content_type))) -- shunt/quicktype.yue:432
      end -- shunt/quicktype.yue:432
    end, -- shunt/quicktype.yue:434
    parse_field = function(self) -- shunt/quicktype.yue:434
      local name, type -- shunt/quicktype.yue:435
      do -- shunt/quicktype.yue:435
        local _obj_0 = self:sequence({ -- shunt/quicktype.yue:436
          { -- shunt/quicktype.yue:436
            token = T_NAME -- shunt/quicktype.yue:436
          }, -- shunt/quicktype.yue:436
          { -- shunt/quicktype.yue:437
            token = T_COLON -- shunt/quicktype.yue:437
          }, -- shunt/quicktype.yue:437
          { -- shunt/quicktype.yue:438
            action = (function() -- shunt/quicktype.yue:438
              local _base_1 = self -- shunt/quicktype.yue:438
              local _fn_0 = _base_1.parse_type -- shunt/quicktype.yue:438
              return _fn_0 and function(...) -- shunt/quicktype.yue:438
                return _fn_0(_base_1, ...) -- shunt/quicktype.yue:438
              end -- shunt/quicktype.yue:438
            end)() -- shunt/quicktype.yue:438
          } -- shunt/quicktype.yue:438
        }) -- shunt/quicktype.yue:435
        name, type = _obj_0[1], _obj_0[3] -- shunt/quicktype.yue:435
      end -- shunt/quicktype.yue:438
      return Field(name, type) -- shunt/quicktype.yue:439
    end -- shunt/quicktype.yue:214
  } -- shunt/quicktype.yue:214
  for _key_0, _val_0 in pairs(_parent_0.__base) do -- shunt/quicktype.yue:439
    if _base_0[_key_0] == nil and _key_0:match("^__") and not (_key_0 == "__index" and _val_0 == _parent_0.__base) then -- shunt/quicktype.yue:214
      _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:214
    end -- shunt/quicktype.yue:214
  end -- shunt/quicktype.yue:439
  if _base_0.__index == nil then -- shunt/quicktype.yue:214
    _base_0.__index = _base_0 -- shunt/quicktype.yue:214
  end -- shunt/quicktype.yue:439
  setmetatable(_base_0, _parent_0.__base) -- shunt/quicktype.yue:214
  _class_0 = setmetatable({ -- shunt/quicktype.yue:214
    __init = function(self, ...) -- shunt/quicktype.yue:214
      return _class_0.__parent.__init(self, ...) -- shunt/quicktype.yue:214
    end, -- shunt/quicktype.yue:214
    __base = _base_0, -- shunt/quicktype.yue:214
    __name = "TypeSpecParser", -- shunt/quicktype.yue:214
    __parent = _parent_0 -- shunt/quicktype.yue:214
  }, { -- shunt/quicktype.yue:214
    __index = function(cls, name) -- shunt/quicktype.yue:214
      local val = rawget(_base_0, name) -- shunt/quicktype.yue:214
      if val == nil then -- shunt/quicktype.yue:214
        local parent = rawget(cls, "__parent") -- shunt/quicktype.yue:214
        if parent then -- shunt/quicktype.yue:214
          return parent[name] -- shunt/quicktype.yue:214
        end -- shunt/quicktype.yue:214
      else -- shunt/quicktype.yue:214
        return val -- shunt/quicktype.yue:214
      end -- shunt/quicktype.yue:214
    end, -- shunt/quicktype.yue:214
    __call = function(cls, ...) -- shunt/quicktype.yue:214
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:214
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:214
      return _self_0 -- shunt/quicktype.yue:214
    end -- shunt/quicktype.yue:214
  }) -- shunt/quicktype.yue:214
  _base_0.__class = _class_0 -- shunt/quicktype.yue:214
  if _parent_0.__inherited then -- shunt/quicktype.yue:214
    _parent_0.__inherited(_parent_0, _class_0) -- shunt/quicktype.yue:214
  end -- shunt/quicktype.yue:214
  TypeSpecParser = _class_0 -- shunt/quicktype.yue:214
end -- shunt/quicktype.yue:439
T_PAREN_OPEN = setmetatable({ }, { -- shunt/quicktype.yue:442
  __tostring = function(self) -- shunt/quicktype.yue:442
    return "'('" -- shunt/quicktype.yue:442
  end -- shunt/quicktype.yue:442
}) -- shunt/quicktype.yue:442
T_PAREN_CLOSE = setmetatable({ }, { -- shunt/quicktype.yue:443
  __tostring = function(self) -- shunt/quicktype.yue:443
    return "')'" -- shunt/quicktype.yue:443
  end -- shunt/quicktype.yue:443
}) -- shunt/quicktype.yue:443
T_BRACE_OPEN = setmetatable({ }, { -- shunt/quicktype.yue:444
  __tostring = function(self) -- shunt/quicktype.yue:444
    return "'{'" -- shunt/quicktype.yue:444
  end -- shunt/quicktype.yue:444
}) -- shunt/quicktype.yue:444
T_BRACE_CLOSE = setmetatable({ }, { -- shunt/quicktype.yue:445
  __tostring = function(self) -- shunt/quicktype.yue:445
    return "'}'" -- shunt/quicktype.yue:445
  end -- shunt/quicktype.yue:445
}) -- shunt/quicktype.yue:445
T_BRACKET_OPEN = setmetatable({ }, { -- shunt/quicktype.yue:446
  __tostring = function(self) -- shunt/quicktype.yue:446
    return "'['" -- shunt/quicktype.yue:446
  end -- shunt/quicktype.yue:446
}) -- shunt/quicktype.yue:446
T_BRACKET_CLOSE = setmetatable({ }, { -- shunt/quicktype.yue:447
  __tostring = function(self) -- shunt/quicktype.yue:447
    return "']'" -- shunt/quicktype.yue:447
  end -- shunt/quicktype.yue:447
}) -- shunt/quicktype.yue:447
T_ANGLE_OPEN = setmetatable({ }, { -- shunt/quicktype.yue:448
  __tostring = function(self) -- shunt/quicktype.yue:448
    return '"<"' -- shunt/quicktype.yue:448
  end -- shunt/quicktype.yue:448
}) -- shunt/quicktype.yue:448
T_ANGLE_CLOSE = setmetatable({ }, { -- shunt/quicktype.yue:449
  __tostring = function(self) -- shunt/quicktype.yue:449
    return '">"' -- shunt/quicktype.yue:449
  end -- shunt/quicktype.yue:449
}) -- shunt/quicktype.yue:449
T_TILDE = setmetatable({ }, { -- shunt/quicktype.yue:450
  __tostring = function(self) -- shunt/quicktype.yue:450
    return '~' -- shunt/quicktype.yue:450
  end -- shunt/quicktype.yue:450
}) -- shunt/quicktype.yue:450
T_COMMA = setmetatable({ }, { -- shunt/quicktype.yue:451
  __tostring = function(self) -- shunt/quicktype.yue:451
    return "','" -- shunt/quicktype.yue:451
  end -- shunt/quicktype.yue:451
}) -- shunt/quicktype.yue:451
T_COLON = setmetatable({ }, { -- shunt/quicktype.yue:452
  __tostring = function(self) -- shunt/quicktype.yue:452
    return "':'" -- shunt/quicktype.yue:452
  end -- shunt/quicktype.yue:452
}) -- shunt/quicktype.yue:452
T_BANG = setmetatable({ }, { -- shunt/quicktype.yue:453
  __tostring = function(self) -- shunt/quicktype.yue:453
    return "'!'" -- shunt/quicktype.yue:453
  end -- shunt/quicktype.yue:453
}) -- shunt/quicktype.yue:453
T_THIN_ARROW = setmetatable({ }, { -- shunt/quicktype.yue:454
  __tostring = function(self) -- shunt/quicktype.yue:454
    return "'->'" -- shunt/quicktype.yue:454
  end -- shunt/quicktype.yue:454
}) -- shunt/quicktype.yue:454
T_FAT_ARROW = setmetatable({ }, { -- shunt/quicktype.yue:455
  __tostring = function(self) -- shunt/quicktype.yue:455
    return "'=>'" -- shunt/quicktype.yue:455
  end -- shunt/quicktype.yue:455
}) -- shunt/quicktype.yue:455
T_DOTDOTDOT = setmetatable({ }, { -- shunt/quicktype.yue:456
  __tostring = function(self) -- shunt/quicktype.yue:456
    return "'...'" -- shunt/quicktype.yue:456
  end -- shunt/quicktype.yue:456
}) -- shunt/quicktype.yue:456
T_QUESTION = setmetatable({ }, { -- shunt/quicktype.yue:457
  __tostring = function(self) -- shunt/quicktype.yue:457
    return "'?'" -- shunt/quicktype.yue:457
  end -- shunt/quicktype.yue:457
}) -- shunt/quicktype.yue:457
T_PLUS = setmetatable({ }, { -- shunt/quicktype.yue:458
  __tostring = function(self) -- shunt/quicktype.yue:458
    return "'+'" -- shunt/quicktype.yue:458
  end -- shunt/quicktype.yue:458
}) -- shunt/quicktype.yue:458
T_PIPE = setmetatable({ }, { -- shunt/quicktype.yue:459
  __tostring = function(self) -- shunt/quicktype.yue:459
    return "'|'" -- shunt/quicktype.yue:459
  end -- shunt/quicktype.yue:459
}) -- shunt/quicktype.yue:459
T_NAME = setmetatable({ }, { -- shunt/quicktype.yue:460
  __tostring = function(self) -- shunt/quicktype.yue:460
    return "<name>" -- shunt/quicktype.yue:460
  end -- shunt/quicktype.yue:460
}) -- shunt/quicktype.yue:460
T_PREFIXED_NAME = setmetatable({ }, { -- shunt/quicktype.yue:461
  __tostring = function(self) -- shunt/quicktype.yue:461
    return "<prefixed-name>" -- shunt/quicktype.yue:461
  end -- shunt/quicktype.yue:461
}) -- shunt/quicktype.yue:461
T_BOOLEAN = setmetatable({ }, { -- shunt/quicktype.yue:462
  __tostring = function(self) -- shunt/quicktype.yue:462
    return "<boolean>" -- shunt/quicktype.yue:462
  end -- shunt/quicktype.yue:462
}) -- shunt/quicktype.yue:462
T_NUMBER = setmetatable({ }, { -- shunt/quicktype.yue:463
  __tostring = function(self) -- shunt/quicktype.yue:463
    return "<number>" -- shunt/quicktype.yue:463
  end -- shunt/quicktype.yue:463
}) -- shunt/quicktype.yue:463
T_STRING = setmetatable({ }, { -- shunt/quicktype.yue:464
  __tostring = function(self) -- shunt/quicktype.yue:464
    return "<string>" -- shunt/quicktype.yue:464
  end -- shunt/quicktype.yue:464
}) -- shunt/quicktype.yue:464
do -- shunt/quicktype.yue:466
  local _class_0 -- shunt/quicktype.yue:466
  local _base_0 = { -- shunt/quicktype.yue:466
    peek = function(self) -- shunt/quicktype.yue:535
      if self.done then -- shunt/quicktype.yue:536
        return nil -- shunt/quicktype.yue:537
      end -- shunt/quicktype.yue:536
      if (self.peeked ~= nil) then -- shunt/quicktype.yue:539
        return self.peeked -- shunt/quicktype.yue:540
      end -- shunt/quicktype.yue:539
      self.peeked = self:tokens() -- shunt/quicktype.yue:542
      if not self.peeked then -- shunt/quicktype.yue:543
        self.done = true -- shunt/quicktype.yue:544
      end -- shunt/quicktype.yue:543
      return self.peeked -- shunt/quicktype.yue:545
    end, -- shunt/quicktype.yue:547
    next = function(self) -- shunt/quicktype.yue:547
      if self.done then -- shunt/quicktype.yue:548
        return nil -- shunt/quicktype.yue:549
      end -- shunt/quicktype.yue:548
      if (self.peeked ~= nil) then -- shunt/quicktype.yue:551
        local peeked = self.peeked -- shunt/quicktype.yue:552
        self.peeked = nil -- shunt/quicktype.yue:553
        return peeked -- shunt/quicktype.yue:554
      else -- shunt/quicktype.yue:556
        local ret = self:tokens() -- shunt/quicktype.yue:556
        if not (ret ~= nil) then -- shunt/quicktype.yue:557
          self.done = true -- shunt/quicktype.yue:558
        end -- shunt/quicktype.yue:557
        return ret -- shunt/quicktype.yue:559
      end -- shunt/quicktype.yue:551
    end, -- shunt/quicktype.yue:561
    checkpoint = function(self) -- shunt/quicktype.yue:561
      return Checkpoint(self.index, self.peeked) -- shunt/quicktype.yue:562
    end, -- shunt/quicktype.yue:564
    restore = function(self, checkpoint) -- shunt/quicktype.yue:564
      local index, peeked = checkpoint.index, checkpoint.peeked -- shunt/quicktype.yue:565
      self.index = index -- shunt/quicktype.yue:566
      self.peeked = peeked -- shunt/quicktype.yue:567
    end -- shunt/quicktype.yue:466
  } -- shunt/quicktype.yue:466
  if _base_0.__index == nil then -- shunt/quicktype.yue:466
    _base_0.__index = _base_0 -- shunt/quicktype.yue:466
  end -- shunt/quicktype.yue:567
  _class_0 = setmetatable({ -- shunt/quicktype.yue:466
    __init = function(self, type_spec) -- shunt/quicktype.yue:467
      self.type_spec = type_spec -- shunt/quicktype.yue:467
      self.index = 1 -- shunt/quicktype.yue:468
      self.done = false -- shunt/quicktype.yue:469
      self.peeked = nil -- shunt/quicktype.yue:470
      self.tokens = coroutine.wrap(function() -- shunt/quicktype.yue:471
        while self.index <= #type_spec do -- shunt/quicktype.yue:472
          local _continue_0 = false -- shunt/quicktype.yue:473
          repeat -- shunt/quicktype.yue:473
            local ty, value, bytes_consumed -- shunt/quicktype.yue:473
            do -- shunt/quicktype.yue:473
              local match = type_spec:match('^%-%-[^\r\n]*', self.index) -- shunt/quicktype.yue:473
              if match then -- shunt/quicktype.yue:473
                ty, value, bytes_consumed = nil, nil, #match -- shunt/quicktype.yue:474
              else -- shunt/quicktype.yue:475
                do -- shunt/quicktype.yue:475
                  local whitespace = type_spec:match('^[ \t\r\n]+', self.index) -- shunt/quicktype.yue:475
                  if whitespace then -- shunt/quicktype.yue:475
                    ty, value, bytes_consumed = nil, nil, #whitespace -- shunt/quicktype.yue:476
                  else -- shunt/quicktype.yue:477
                    match = type_spec:match('^%(', self.index) -- shunt/quicktype.yue:477
                    if match then -- shunt/quicktype.yue:477
                      ty, value, bytes_consumed = T_PAREN_OPEN, nil, #match -- shunt/quicktype.yue:478
                    else -- shunt/quicktype.yue:479
                      match = type_spec:match('^%)', self.index) -- shunt/quicktype.yue:479
                      if match then -- shunt/quicktype.yue:479
                        ty, value, bytes_consumed = T_PAREN_CLOSE, nil, #match -- shunt/quicktype.yue:480
                      else -- shunt/quicktype.yue:481
                        match = type_spec:match('^,', self.index) -- shunt/quicktype.yue:481
                        if match then -- shunt/quicktype.yue:481
                          ty, value, bytes_consumed = T_COMMA, nil, #match -- shunt/quicktype.yue:482
                        else -- shunt/quicktype.yue:483
                          match = type_spec:match('^{', self.index) -- shunt/quicktype.yue:483
                          if match then -- shunt/quicktype.yue:483
                            ty, value, bytes_consumed = T_BRACE_OPEN, nil, #match -- shunt/quicktype.yue:484
                          else -- shunt/quicktype.yue:485
                            match = type_spec:match('^}', self.index) -- shunt/quicktype.yue:485
                            if match then -- shunt/quicktype.yue:485
                              ty, value, bytes_consumed = T_BRACE_CLOSE, nil, #match -- shunt/quicktype.yue:486
                            else -- shunt/quicktype.yue:487
                              match = type_spec:match('^%[', self.index) -- shunt/quicktype.yue:487
                              if match then -- shunt/quicktype.yue:487
                                ty, value, bytes_consumed = T_BRACKET_OPEN, nil, #match -- shunt/quicktype.yue:488
                              else -- shunt/quicktype.yue:489
                                match = type_spec:match('^]', self.index) -- shunt/quicktype.yue:489
                                if match then -- shunt/quicktype.yue:489
                                  ty, value, bytes_consumed = T_BRACKET_CLOSE, nil, #match -- shunt/quicktype.yue:490
                                else -- shunt/quicktype.yue:491
                                  match = type_spec:match('^:', self.index) -- shunt/quicktype.yue:491
                                  if match then -- shunt/quicktype.yue:491
                                    ty, value, bytes_consumed = T_COLON, nil, #match -- shunt/quicktype.yue:492
                                  else -- shunt/quicktype.yue:493
                                    match = type_spec:match('^!', self.index) -- shunt/quicktype.yue:493
                                    if match then -- shunt/quicktype.yue:493
                                      ty, value, bytes_consumed = T_BANG, nil, #match -- shunt/quicktype.yue:494
                                    else -- shunt/quicktype.yue:495
                                      match = type_spec:match('^->', self.index) -- shunt/quicktype.yue:495
                                      if match then -- shunt/quicktype.yue:495
                                        ty, value, bytes_consumed = T_THIN_ARROW, nil, #match -- shunt/quicktype.yue:496
                                      else -- shunt/quicktype.yue:497
                                        match = type_spec:match('^=>', self.index) -- shunt/quicktype.yue:497
                                        if match then -- shunt/quicktype.yue:497
                                          ty, value, bytes_consumed = T_FAT_ARROW, nil, #match -- shunt/quicktype.yue:498
                                        else -- shunt/quicktype.yue:499
                                          match = type_spec:match('^%.%.%.', self.index) -- shunt/quicktype.yue:499
                                          if match then -- shunt/quicktype.yue:499
                                            ty, value, bytes_consumed = T_DOTDOTDOT, nil, #match -- shunt/quicktype.yue:500
                                          else -- shunt/quicktype.yue:501
                                            match = type_spec:match('^<', self.index) -- shunt/quicktype.yue:501
                                            if match then -- shunt/quicktype.yue:501
                                              ty, value, bytes_consumed = T_ANGLE_OPEN, nil, #match -- shunt/quicktype.yue:502
                                            else -- shunt/quicktype.yue:503
                                              match = type_spec:match('^>', self.index) -- shunt/quicktype.yue:503
                                              if match then -- shunt/quicktype.yue:503
                                                ty, value, bytes_consumed = T_ANGLE_CLOSE, nil, #match -- shunt/quicktype.yue:504
                                              else -- shunt/quicktype.yue:505
                                                match = type_spec:match('^?', self.index) -- shunt/quicktype.yue:505
                                                if match then -- shunt/quicktype.yue:505
                                                  ty, value, bytes_consumed = T_QUESTION, nil, #match -- shunt/quicktype.yue:506
                                                else -- shunt/quicktype.yue:507
                                                  match = type_spec:match('^+', self.index) -- shunt/quicktype.yue:507
                                                  if match then -- shunt/quicktype.yue:507
                                                    ty, value, bytes_consumed = T_PLUS, nil, #match -- shunt/quicktype.yue:508
                                                  else -- shunt/quicktype.yue:509
                                                    match = type_spec:match('^|', self.index) -- shunt/quicktype.yue:509
                                                    if match then -- shunt/quicktype.yue:509
                                                      ty, value, bytes_consumed = T_PIPE, nil, #match -- shunt/quicktype.yue:510
                                                    else -- shunt/quicktype.yue:511
                                                      match = type_spec:match('^true', self.index) -- shunt/quicktype.yue:511
                                                      if match then -- shunt/quicktype.yue:511
                                                        ty, value, bytes_consumed = T_BOOLEAN, true, #match -- shunt/quicktype.yue:512
                                                      else -- shunt/quicktype.yue:513
                                                        match = type_spec:match('^false', self.index) -- shunt/quicktype.yue:513
                                                        if match then -- shunt/quicktype.yue:513
                                                          ty, value, bytes_consumed = T_BOOLEAN, false, #match -- shunt/quicktype.yue:514
                                                        else -- shunt/quicktype.yue:515
                                                          do -- shunt/quicktype.yue:515
                                                            local prefixed_name = type_spec:match('^([a-zA-Z_][a-zA-Z0-9_]*[a-zA-Z0-9_]%.[a-zA-Z_][a-zA-Z0-9_]*[a-zA-Z0-9_])', self.index) -- shunt/quicktype.yue:515
                                                            if prefixed_name then -- shunt/quicktype.yue:515
                                                              ty, value, bytes_consumed = T_PREFIXED_NAME, prefixed_name, #prefixed_name -- shunt/quicktype.yue:516
                                                            else -- shunt/quicktype.yue:517
                                                              do -- shunt/quicktype.yue:517
                                                                local name = type_spec:match('^([a-zA-Z_][a-zA-Z0-9_-]*[a-zA-Z0-9_])', self.index) -- shunt/quicktype.yue:517
                                                                if name then -- shunt/quicktype.yue:517
                                                                  ty, value, bytes_consumed = T_NAME, name, #name -- shunt/quicktype.yue:518
                                                                else -- shunt/quicktype.yue:519
                                                                  do -- shunt/quicktype.yue:519
                                                                    local number = type_spec:match('^%-?[0-9]*%.[0-9]+', self.index) -- shunt/quicktype.yue:519
                                                                    if number then -- shunt/quicktype.yue:519
                                                                      ty, value, bytes_consumed = T_NUMBER, (assert(tonumber(number))), #number -- shunt/quicktype.yue:520
                                                                    else -- shunt/quicktype.yue:521
                                                                      number = type_spec:match('^%-?[0-9]+', self.index) -- shunt/quicktype.yue:521
                                                                      if number then -- shunt/quicktype.yue:521
                                                                        ty, value, bytes_consumed = T_NUMBER, (assert(tonumber(number))), #number -- shunt/quicktype.yue:522
                                                                      else -- shunt/quicktype.yue:523
                                                                        do -- shunt/quicktype.yue:523
                                                                          local string = type_spec:match([[^"([^"]*)"]], self.index) -- shunt/quicktype.yue:523
                                                                          if string then -- shunt/quicktype.yue:523
                                                                            ty, value, bytes_consumed = T_STRING, string, #string + 2 -- shunt/quicktype.yue:524
                                                                          else -- shunt/quicktype.yue:525
                                                                            match = type_spec:match('^~', self.index) -- shunt/quicktype.yue:525
                                                                            if match then -- shunt/quicktype.yue:525
                                                                              ty, value, bytes_consumed = T_TILDE, nil, #match -- shunt/quicktype.yue:526
                                                                            else -- shunt/quicktype.yue:528
                                                                              ty, value, bytes_consumed = error("unexpected character '" .. tostring(type_spec:sub(self.index, self.index)) .. "' in type spec '" .. tostring(type_spec) .. "'") -- shunt/quicktype.yue:528
                                                                            end -- shunt/quicktype.yue:525
                                                                          end -- shunt/quicktype.yue:523
                                                                        end -- shunt/quicktype.yue:523
                                                                      end -- shunt/quicktype.yue:521
                                                                    end -- shunt/quicktype.yue:519
                                                                  end -- shunt/quicktype.yue:519
                                                                end -- shunt/quicktype.yue:517
                                                              end -- shunt/quicktype.yue:517
                                                            end -- shunt/quicktype.yue:515
                                                          end -- shunt/quicktype.yue:515
                                                        end -- shunt/quicktype.yue:513
                                                      end -- shunt/quicktype.yue:511
                                                    end -- shunt/quicktype.yue:509
                                                  end -- shunt/quicktype.yue:507
                                                end -- shunt/quicktype.yue:505
                                              end -- shunt/quicktype.yue:503
                                            end -- shunt/quicktype.yue:501
                                          end -- shunt/quicktype.yue:499
                                        end -- shunt/quicktype.yue:497
                                      end -- shunt/quicktype.yue:495
                                    end -- shunt/quicktype.yue:493
                                  end -- shunt/quicktype.yue:491
                                end -- shunt/quicktype.yue:489
                              end -- shunt/quicktype.yue:487
                            end -- shunt/quicktype.yue:485
                          end -- shunt/quicktype.yue:483
                        end -- shunt/quicktype.yue:481
                      end -- shunt/quicktype.yue:479
                    end -- shunt/quicktype.yue:477
                  end -- shunt/quicktype.yue:475
                end -- shunt/quicktype.yue:475
              end -- shunt/quicktype.yue:473
            end -- shunt/quicktype.yue:473
            self.index = self.index + bytes_consumed -- shunt/quicktype.yue:530
            if not (ty ~= nil) then -- shunt/quicktype.yue:531
              _continue_0 = true -- shunt/quicktype.yue:532
              break -- shunt/quicktype.yue:532
            end -- shunt/quicktype.yue:531
            coroutine.yield(Symbol(ty, value)) -- shunt/quicktype.yue:533
            _continue_0 = true -- shunt/quicktype.yue:473
          until true -- shunt/quicktype.yue:533
          if not _continue_0 then -- shunt/quicktype.yue:533
            break -- shunt/quicktype.yue:533
          end -- shunt/quicktype.yue:533
        end -- shunt/quicktype.yue:533
      end) -- shunt/quicktype.yue:471
    end, -- shunt/quicktype.yue:466
    __base = _base_0, -- shunt/quicktype.yue:466
    __name = "Lexer" -- shunt/quicktype.yue:466
  }, { -- shunt/quicktype.yue:466
    __index = _base_0, -- shunt/quicktype.yue:466
    __call = function(cls, ...) -- shunt/quicktype.yue:466
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:466
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:466
      return _self_0 -- shunt/quicktype.yue:466
    end -- shunt/quicktype.yue:466
  }) -- shunt/quicktype.yue:466
  _base_0.__class = _class_0 -- shunt/quicktype.yue:466
  Lexer = _class_0 -- shunt/quicktype.yue:466
end -- shunt/quicktype.yue:567
do -- shunt/quicktype.yue:569
  local _class_0 -- shunt/quicktype.yue:569
  local _base_0 = { } -- shunt/quicktype.yue:569
  if _base_0.__index == nil then -- shunt/quicktype.yue:569
    _base_0.__index = _base_0 -- shunt/quicktype.yue:569
  end -- shunt/quicktype.yue:570
  _class_0 = setmetatable({ -- shunt/quicktype.yue:569
    __init = function(self, index, peeked) -- shunt/quicktype.yue:570
      self.index = index -- shunt/quicktype.yue:570
      self.peeked = peeked -- shunt/quicktype.yue:570
    end, -- shunt/quicktype.yue:569
    __base = _base_0, -- shunt/quicktype.yue:569
    __name = "Checkpoint" -- shunt/quicktype.yue:569
  }, { -- shunt/quicktype.yue:569
    __index = _base_0, -- shunt/quicktype.yue:569
    __call = function(cls, ...) -- shunt/quicktype.yue:569
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:569
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:569
      return _self_0 -- shunt/quicktype.yue:569
    end -- shunt/quicktype.yue:569
  }) -- shunt/quicktype.yue:569
  _base_0.__class = _class_0 -- shunt/quicktype.yue:569
  Checkpoint = _class_0 -- shunt/quicktype.yue:569
end -- shunt/quicktype.yue:570
do -- shunt/quicktype.yue:572
  local _class_0 -- shunt/quicktype.yue:572
  local _base_0 = { -- shunt/quicktype.yue:572
    __tostring = function(self) -- shunt/quicktype.yue:575
      if (self.value ~= nil) then -- shunt/quicktype.yue:576
        return tostring(self.type) .. "(" .. tostring(self.value) .. ")" -- shunt/quicktype.yue:577
      else -- shunt/quicktype.yue:579
        return tostring(self.type) -- shunt/quicktype.yue:579
      end -- shunt/quicktype.yue:576
    end -- shunt/quicktype.yue:572
  } -- shunt/quicktype.yue:572
  if _base_0.__index == nil then -- shunt/quicktype.yue:572
    _base_0.__index = _base_0 -- shunt/quicktype.yue:572
  end -- shunt/quicktype.yue:579
  _class_0 = setmetatable({ -- shunt/quicktype.yue:572
    __init = function(self, type, value) -- shunt/quicktype.yue:573
      if value == nil then -- shunt/quicktype.yue:573
        value = nil -- shunt/quicktype.yue:573
      end -- shunt/quicktype.yue:573
      self.type = type -- shunt/quicktype.yue:573
      self.value = value -- shunt/quicktype.yue:573
    end, -- shunt/quicktype.yue:572
    __base = _base_0, -- shunt/quicktype.yue:572
    __name = "Symbol" -- shunt/quicktype.yue:572
  }, { -- shunt/quicktype.yue:572
    __index = _base_0, -- shunt/quicktype.yue:572
    __call = function(cls, ...) -- shunt/quicktype.yue:572
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:572
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:572
      return _self_0 -- shunt/quicktype.yue:572
    end -- shunt/quicktype.yue:572
  }) -- shunt/quicktype.yue:572
  _base_0.__class = _class_0 -- shunt/quicktype.yue:572
  Symbol = _class_0 -- shunt/quicktype.yue:572
end -- shunt/quicktype.yue:579
_module_0["Symbol"] = Symbol -- shunt/quicktype.yue:572
known_primitives = { -- shunt/quicktype.yue:582
  ["nil"] = true, -- shunt/quicktype.yue:582
  boolean = true, -- shunt/quicktype.yue:583
  number = true, -- shunt/quicktype.yue:584
  string = true, -- shunt/quicktype.yue:585
  ["function"] = true, -- shunt/quicktype.yue:586
  table = true, -- shunt/quicktype.yue:587
  thread = true, -- shunt/quicktype.yue:588
  userdata = true -- shunt/quicktype.yue:589
} -- shunt/quicktype.yue:581
named_type = function(name) -- shunt/quicktype.yue:591
  if (known_primitives[name] ~= nil) then -- shunt/quicktype.yue:592
    return Primitive(name) -- shunt/quicktype.yue:593
  else -- shunt/quicktype.yue:594
    if name == 'any' then -- shunt/quicktype.yue:594
      return Any() -- shunt/quicktype.yue:595
    else -- shunt/quicktype.yue:596
      if name == 'some' then -- shunt/quicktype.yue:596
        return Some() -- shunt/quicktype.yue:597
      else -- shunt/quicktype.yue:598
        if not name:match('^[A-Z]') then -- shunt/quicktype.yue:598
          return error("cannot use '" .. tostring(name) .. "' as user type name: name must start with an uppercase letter") -- shunt/quicktype.yue:599
        else -- shunt/quicktype.yue:601
          return UserType(name) -- shunt/quicktype.yue:601
        end -- shunt/quicktype.yue:598
      end -- shunt/quicktype.yue:596
    end -- shunt/quicktype.yue:594
  end -- shunt/quicktype.yue:592
end -- shunt/quicktype.yue:591
prefixed_named_type = function(prefixed_name) -- shunt/quicktype.yue:603
  local prefix, name = prefixed_name:match('^([^.]+)%.([^.]*)$') -- shunt/quicktype.yue:604
  if not (prefix ~= nil) or not (name ~= nil) then -- shunt/quicktype.yue:605
    error("internal error: cannot parse prefixed name '" .. tostring(prefixed_name) .. "'") -- shunt/quicktype.yue:606
  end -- shunt/quicktype.yue:605
  if (known_primitives[prefix] ~= nil) then -- shunt/quicktype.yue:607
    error("cannot use '" .. tostring(prefix) .. "' as type-prefix: must not be a primitive") -- shunt/quicktype.yue:608
  end -- shunt/quicktype.yue:607
  if not prefix:match('^[a-z]') then -- shunt/quicktype.yue:609
    error("cannot use '" .. tostring(prefix) .. "' as type-prefix: must start with a lowercase letter") -- shunt/quicktype.yue:610
  end -- shunt/quicktype.yue:609
  if not name:match('^[A-Z]') then -- shunt/quicktype.yue:611
    error("cannot use '" .. tostring(name) .. "' as disambiguated type name: must start with an uppercase letter") -- shunt/quicktype.yue:612
  end -- shunt/quicktype.yue:611
  return UserType(prefixed_name) -- shunt/quicktype.yue:613
end -- shunt/quicktype.yue:603
do -- shunt/quicktype.yue:615
  local _class_0 -- shunt/quicktype.yue:615
  local _base_0 = { -- shunt/quicktype.yue:615
    is = function(self, ty) -- shunt/quicktype.yue:616
      return getmetatable(self).__class.__name == ty.__base.__class.__name -- shunt/quicktype.yue:617
    end -- shunt/quicktype.yue:615
  } -- shunt/quicktype.yue:615
  if _base_0.__index == nil then -- shunt/quicktype.yue:615
    _base_0.__index = _base_0 -- shunt/quicktype.yue:615
  end -- shunt/quicktype.yue:617
  _class_0 = setmetatable({ -- shunt/quicktype.yue:615
    __init = function() end, -- shunt/quicktype.yue:615
    __base = _base_0, -- shunt/quicktype.yue:615
    __name = "Is" -- shunt/quicktype.yue:615
  }, { -- shunt/quicktype.yue:615
    __index = _base_0, -- shunt/quicktype.yue:615
    __call = function(cls, ...) -- shunt/quicktype.yue:615
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:615
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:615
      return _self_0 -- shunt/quicktype.yue:615
    end -- shunt/quicktype.yue:615
  }) -- shunt/quicktype.yue:615
  _base_0.__class = _class_0 -- shunt/quicktype.yue:615
  Is = _class_0 -- shunt/quicktype.yue:615
end -- shunt/quicktype.yue:617
do -- shunt/quicktype.yue:619
  local _class_0 -- shunt/quicktype.yue:619
  local _base_0 = { -- shunt/quicktype.yue:619
    __tostring = function(self) -- shunt/quicktype.yue:622
      return self.name -- shunt/quicktype.yue:622
    end, -- shunt/quicktype.yue:624
    checker = function(self, checker_builder) -- shunt/quicktype.yue:624
      if checker_builder == nil then -- shunt/quicktype.yue:624
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:624
      end -- shunt/quicktype.yue:624
      checker_builder:add(C_ASSERT_PRIMITIVE, self.name) -- shunt/quicktype.yue:626
      return checker_builder -- shunt/quicktype.yue:625
    end -- shunt/quicktype.yue:619
  } -- shunt/quicktype.yue:619
  local _list_0 = { -- shunt/quicktype.yue:619
    Is -- shunt/quicktype.yue:619
  } -- shunt/quicktype.yue:619
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:626
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:619
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:619
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:626
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:619
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:619
      end -- shunt/quicktype.yue:619
    end -- shunt/quicktype.yue:626
  end -- shunt/quicktype.yue:626
  if _base_0.__index == nil then -- shunt/quicktype.yue:619
    _base_0.__index = _base_0 -- shunt/quicktype.yue:619
  end -- shunt/quicktype.yue:626
  _class_0 = setmetatable({ -- shunt/quicktype.yue:619
    __init = function(self, name) -- shunt/quicktype.yue:620
      self.name = name -- shunt/quicktype.yue:620
    end, -- shunt/quicktype.yue:619
    __base = _base_0, -- shunt/quicktype.yue:619
    __name = "Primitive" -- shunt/quicktype.yue:619
  }, { -- shunt/quicktype.yue:619
    __index = _base_0, -- shunt/quicktype.yue:619
    __call = function(cls, ...) -- shunt/quicktype.yue:619
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:619
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:619
      return _self_0 -- shunt/quicktype.yue:619
    end -- shunt/quicktype.yue:619
  }) -- shunt/quicktype.yue:619
  _base_0.__class = _class_0 -- shunt/quicktype.yue:619
  Primitive = _class_0 -- shunt/quicktype.yue:619
end -- shunt/quicktype.yue:626
do -- shunt/quicktype.yue:628
  local _class_0 -- shunt/quicktype.yue:628
  local _base_0 = { -- shunt/quicktype.yue:628
    __tostring = function(self) -- shunt/quicktype.yue:629
      return 'any' -- shunt/quicktype.yue:630
    end, -- shunt/quicktype.yue:632
    checker = function(self, checker_builder) -- shunt/quicktype.yue:632
      if checker_builder == nil then -- shunt/quicktype.yue:632
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:632
      end -- shunt/quicktype.yue:632
      return checker_builder -- shunt/quicktype.yue:633
    end -- shunt/quicktype.yue:628
  } -- shunt/quicktype.yue:628
  local _list_0 = { -- shunt/quicktype.yue:628
    Is -- shunt/quicktype.yue:628
  } -- shunt/quicktype.yue:628
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:633
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:628
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:628
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:633
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:628
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:628
      end -- shunt/quicktype.yue:628
    end -- shunt/quicktype.yue:633
  end -- shunt/quicktype.yue:633
  if _base_0.__index == nil then -- shunt/quicktype.yue:628
    _base_0.__index = _base_0 -- shunt/quicktype.yue:628
  end -- shunt/quicktype.yue:633
  _class_0 = setmetatable({ -- shunt/quicktype.yue:628
    __init = function() end, -- shunt/quicktype.yue:628
    __base = _base_0, -- shunt/quicktype.yue:628
    __name = "Any" -- shunt/quicktype.yue:628
  }, { -- shunt/quicktype.yue:628
    __index = _base_0, -- shunt/quicktype.yue:628
    __call = function(cls, ...) -- shunt/quicktype.yue:628
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:628
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:628
      return _self_0 -- shunt/quicktype.yue:628
    end -- shunt/quicktype.yue:628
  }) -- shunt/quicktype.yue:628
  _base_0.__class = _class_0 -- shunt/quicktype.yue:628
  Any = _class_0 -- shunt/quicktype.yue:628
end -- shunt/quicktype.yue:633
do -- shunt/quicktype.yue:635
  local _class_0 -- shunt/quicktype.yue:635
  local _base_0 = { -- shunt/quicktype.yue:635
    __tostring = function(self) -- shunt/quicktype.yue:636
      return 'some' -- shunt/quicktype.yue:637
    end, -- shunt/quicktype.yue:639
    checker = function(self, checker_builder) -- shunt/quicktype.yue:639
      if checker_builder == nil then -- shunt/quicktype.yue:639
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:639
      end -- shunt/quicktype.yue:639
      checker_builder:add(C_ASSERT_NON_NIL) -- shunt/quicktype.yue:641
      return checker_builder -- shunt/quicktype.yue:640
    end -- shunt/quicktype.yue:635
  } -- shunt/quicktype.yue:635
  local _list_0 = { -- shunt/quicktype.yue:635
    Is -- shunt/quicktype.yue:635
  } -- shunt/quicktype.yue:635
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:641
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:635
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:635
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:641
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:635
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:635
      end -- shunt/quicktype.yue:635
    end -- shunt/quicktype.yue:641
  end -- shunt/quicktype.yue:641
  if _base_0.__index == nil then -- shunt/quicktype.yue:635
    _base_0.__index = _base_0 -- shunt/quicktype.yue:635
  end -- shunt/quicktype.yue:641
  _class_0 = setmetatable({ -- shunt/quicktype.yue:635
    __init = function() end, -- shunt/quicktype.yue:635
    __base = _base_0, -- shunt/quicktype.yue:635
    __name = "Some" -- shunt/quicktype.yue:635
  }, { -- shunt/quicktype.yue:635
    __index = _base_0, -- shunt/quicktype.yue:635
    __call = function(cls, ...) -- shunt/quicktype.yue:635
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:635
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:635
      return _self_0 -- shunt/quicktype.yue:635
    end -- shunt/quicktype.yue:635
  }) -- shunt/quicktype.yue:635
  _base_0.__class = _class_0 -- shunt/quicktype.yue:635
  Some = _class_0 -- shunt/quicktype.yue:635
end -- shunt/quicktype.yue:641
do -- shunt/quicktype.yue:643
  local _class_0 -- shunt/quicktype.yue:643
  local _base_0 = { -- shunt/quicktype.yue:643
    __tostring = function(self) -- shunt/quicktype.yue:644
      return '!' -- shunt/quicktype.yue:645
    end, -- shunt/quicktype.yue:647
    checker = function(self, checker_builder) -- shunt/quicktype.yue:647
      if checker_builder == nil then -- shunt/quicktype.yue:647
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:647
      end -- shunt/quicktype.yue:647
      checker_builder:add(C_ASSERT_NEVER) -- shunt/quicktype.yue:649
      return checker_builder -- shunt/quicktype.yue:648
    end -- shunt/quicktype.yue:643
  } -- shunt/quicktype.yue:643
  local _list_0 = { -- shunt/quicktype.yue:643
    Is -- shunt/quicktype.yue:643
  } -- shunt/quicktype.yue:643
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:649
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:643
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:643
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:649
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:643
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:643
      end -- shunt/quicktype.yue:643
    end -- shunt/quicktype.yue:649
  end -- shunt/quicktype.yue:649
  if _base_0.__index == nil then -- shunt/quicktype.yue:643
    _base_0.__index = _base_0 -- shunt/quicktype.yue:643
  end -- shunt/quicktype.yue:649
  _class_0 = setmetatable({ -- shunt/quicktype.yue:643
    __init = function() end, -- shunt/quicktype.yue:643
    __base = _base_0, -- shunt/quicktype.yue:643
    __name = "Never" -- shunt/quicktype.yue:643
  }, { -- shunt/quicktype.yue:643
    __index = _base_0, -- shunt/quicktype.yue:643
    __call = function(cls, ...) -- shunt/quicktype.yue:643
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:643
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:643
      return _self_0 -- shunt/quicktype.yue:643
    end -- shunt/quicktype.yue:643
  }) -- shunt/quicktype.yue:643
  _base_0.__class = _class_0 -- shunt/quicktype.yue:643
  Never = _class_0 -- shunt/quicktype.yue:643
end -- shunt/quicktype.yue:649
do -- shunt/quicktype.yue:651
  local _class_0 -- shunt/quicktype.yue:651
  local _base_0 = { -- shunt/quicktype.yue:651
    __tostring = function(self) -- shunt/quicktype.yue:654
      return self.name -- shunt/quicktype.yue:654
    end, -- shunt/quicktype.yue:656
    checker = function(self, checker_builder) -- shunt/quicktype.yue:656
      if checker_builder == nil then -- shunt/quicktype.yue:656
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:656
      end -- shunt/quicktype.yue:656
      local parsed_user_type = user_types[self.name] -- shunt/quicktype.yue:658
      if not (parsed_user_type ~= nil) or checker_builder:already_building(self) then -- shunt/quicktype.yue:659
        checker_builder:add(C_PUSH_CHECKER, self.name) -- shunt/quicktype.yue:660
      else -- shunt/quicktype.yue:662
        checker_builder:push_building(self) -- shunt/quicktype.yue:662
        parsed_user_type:checker(checker_builder) -- shunt/quicktype.yue:663
        checker_builder:pop_building(self) -- shunt/quicktype.yue:664
      end -- shunt/quicktype.yue:659
      return checker_builder -- shunt/quicktype.yue:657
    end -- shunt/quicktype.yue:651
  } -- shunt/quicktype.yue:651
  local _list_0 = { -- shunt/quicktype.yue:651
    Is -- shunt/quicktype.yue:651
  } -- shunt/quicktype.yue:651
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:664
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:651
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:651
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:664
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:651
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:651
      end -- shunt/quicktype.yue:651
    end -- shunt/quicktype.yue:664
  end -- shunt/quicktype.yue:664
  if _base_0.__index == nil then -- shunt/quicktype.yue:651
    _base_0.__index = _base_0 -- shunt/quicktype.yue:651
  end -- shunt/quicktype.yue:664
  _class_0 = setmetatable({ -- shunt/quicktype.yue:651
    __init = function(self, name) -- shunt/quicktype.yue:652
      self.name = name -- shunt/quicktype.yue:652
    end, -- shunt/quicktype.yue:651
    __base = _base_0, -- shunt/quicktype.yue:651
    __name = "UserType" -- shunt/quicktype.yue:651
  }, { -- shunt/quicktype.yue:651
    __index = _base_0, -- shunt/quicktype.yue:651
    __call = function(cls, ...) -- shunt/quicktype.yue:651
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:651
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:651
      return _self_0 -- shunt/quicktype.yue:651
    end -- shunt/quicktype.yue:651
  }) -- shunt/quicktype.yue:651
  _base_0.__class = _class_0 -- shunt/quicktype.yue:651
  UserType = _class_0 -- shunt/quicktype.yue:651
end -- shunt/quicktype.yue:664
do -- shunt/quicktype.yue:666
  local _class_0 -- shunt/quicktype.yue:666
  local _base_0 = { -- shunt/quicktype.yue:666
    __tostring = function(self) -- shunt/quicktype.yue:669
      return self.name -- shunt/quicktype.yue:669
    end, -- shunt/quicktype.yue:671
    checker = function(self, checker_builder) -- shunt/quicktype.yue:671
      if checker_builder == nil then -- shunt/quicktype.yue:671
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:671
      end -- shunt/quicktype.yue:671
      checker_builder:add(C_ASSERT_EQ, self.value) -- shunt/quicktype.yue:673
      return checker_builder -- shunt/quicktype.yue:672
    end -- shunt/quicktype.yue:666
  } -- shunt/quicktype.yue:666
  local _list_0 = { -- shunt/quicktype.yue:666
    Is -- shunt/quicktype.yue:666
  } -- shunt/quicktype.yue:666
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:673
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:666
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:666
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:673
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:666
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:666
      end -- shunt/quicktype.yue:666
    end -- shunt/quicktype.yue:673
  end -- shunt/quicktype.yue:673
  if _base_0.__index == nil then -- shunt/quicktype.yue:666
    _base_0.__index = _base_0 -- shunt/quicktype.yue:666
  end -- shunt/quicktype.yue:673
  _class_0 = setmetatable({ -- shunt/quicktype.yue:666
    __init = function(self, name, value) -- shunt/quicktype.yue:667
      self.name = name -- shunt/quicktype.yue:667
      self.value = value -- shunt/quicktype.yue:667
    end, -- shunt/quicktype.yue:666
    __base = _base_0, -- shunt/quicktype.yue:666
    __name = "SingletonType" -- shunt/quicktype.yue:666
  }, { -- shunt/quicktype.yue:666
    __index = _base_0, -- shunt/quicktype.yue:666
    __call = function(cls, ...) -- shunt/quicktype.yue:666
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:666
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:666
      return _self_0 -- shunt/quicktype.yue:666
    end -- shunt/quicktype.yue:666
  }) -- shunt/quicktype.yue:666
  _base_0.__class = _class_0 -- shunt/quicktype.yue:666
  SingletonType = _class_0 -- shunt/quicktype.yue:666
end -- shunt/quicktype.yue:673
do -- shunt/quicktype.yue:675
  local _class_0 -- shunt/quicktype.yue:675
  local _base_0 = { -- shunt/quicktype.yue:675
    __tostring = function(self) -- shunt/quicktype.yue:678
      return tostring(self.value) -- shunt/quicktype.yue:679
    end, -- shunt/quicktype.yue:681
    checker = function(self, checker_builder) -- shunt/quicktype.yue:681
      if checker_builder == nil then -- shunt/quicktype.yue:681
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:681
      end -- shunt/quicktype.yue:681
      checker_builder:add(C_ASSERT_PRIMITIVE, 'boolean') -- shunt/quicktype.yue:683
      checker_builder:add(C_ASSERT_EQ, self.value) -- shunt/quicktype.yue:684
      return checker_builder -- shunt/quicktype.yue:682
    end -- shunt/quicktype.yue:675
  } -- shunt/quicktype.yue:675
  local _list_0 = { -- shunt/quicktype.yue:675
    Is -- shunt/quicktype.yue:675
  } -- shunt/quicktype.yue:675
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:684
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:675
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:675
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:684
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:675
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:675
      end -- shunt/quicktype.yue:675
    end -- shunt/quicktype.yue:684
  end -- shunt/quicktype.yue:684
  if _base_0.__index == nil then -- shunt/quicktype.yue:675
    _base_0.__index = _base_0 -- shunt/quicktype.yue:675
  end -- shunt/quicktype.yue:684
  _class_0 = setmetatable({ -- shunt/quicktype.yue:675
    __init = function(self, value) -- shunt/quicktype.yue:676
      self.value = value -- shunt/quicktype.yue:676
    end, -- shunt/quicktype.yue:675
    __base = _base_0, -- shunt/quicktype.yue:675
    __name = "BooleanType" -- shunt/quicktype.yue:675
  }, { -- shunt/quicktype.yue:675
    __index = _base_0, -- shunt/quicktype.yue:675
    __call = function(cls, ...) -- shunt/quicktype.yue:675
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:675
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:675
      return _self_0 -- shunt/quicktype.yue:675
    end -- shunt/quicktype.yue:675
  }) -- shunt/quicktype.yue:675
  _base_0.__class = _class_0 -- shunt/quicktype.yue:675
  BooleanType = _class_0 -- shunt/quicktype.yue:675
end -- shunt/quicktype.yue:684
do -- shunt/quicktype.yue:686
  local _class_0 -- shunt/quicktype.yue:686
  local _base_0 = { -- shunt/quicktype.yue:686
    __tostring = function(self) -- shunt/quicktype.yue:689
      return tostring(self.value) -- shunt/quicktype.yue:690
    end, -- shunt/quicktype.yue:692
    checker = function(self, checker_builder) -- shunt/quicktype.yue:692
      if checker_builder == nil then -- shunt/quicktype.yue:692
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:692
      end -- shunt/quicktype.yue:692
      checker_builder:add(C_ASSERT_PRIMITIVE, 'number') -- shunt/quicktype.yue:694
      checker_builder:add(C_ASSERT_EQ, self.value) -- shunt/quicktype.yue:695
      return checker_builder -- shunt/quicktype.yue:693
    end -- shunt/quicktype.yue:686
  } -- shunt/quicktype.yue:686
  local _list_0 = { -- shunt/quicktype.yue:686
    Is -- shunt/quicktype.yue:686
  } -- shunt/quicktype.yue:686
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:695
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:686
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:686
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:695
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:686
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:686
      end -- shunt/quicktype.yue:686
    end -- shunt/quicktype.yue:695
  end -- shunt/quicktype.yue:695
  if _base_0.__index == nil then -- shunt/quicktype.yue:686
    _base_0.__index = _base_0 -- shunt/quicktype.yue:686
  end -- shunt/quicktype.yue:695
  _class_0 = setmetatable({ -- shunt/quicktype.yue:686
    __init = function(self, value) -- shunt/quicktype.yue:687
      self.value = value -- shunt/quicktype.yue:687
    end, -- shunt/quicktype.yue:686
    __base = _base_0, -- shunt/quicktype.yue:686
    __name = "NumberType" -- shunt/quicktype.yue:686
  }, { -- shunt/quicktype.yue:686
    __index = _base_0, -- shunt/quicktype.yue:686
    __call = function(cls, ...) -- shunt/quicktype.yue:686
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:686
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:686
      return _self_0 -- shunt/quicktype.yue:686
    end -- shunt/quicktype.yue:686
  }) -- shunt/quicktype.yue:686
  _base_0.__class = _class_0 -- shunt/quicktype.yue:686
  NumberType = _class_0 -- shunt/quicktype.yue:686
end -- shunt/quicktype.yue:695
do -- shunt/quicktype.yue:697
  local _class_0 -- shunt/quicktype.yue:697
  local _base_0 = { -- shunt/quicktype.yue:697
    __tostring = function(self) -- shunt/quicktype.yue:700
      return "\"" .. tostring(self.content) .. "\"" -- shunt/quicktype.yue:701
    end, -- shunt/quicktype.yue:703
    checker = function(self, checker_builder) -- shunt/quicktype.yue:703
      if checker_builder == nil then -- shunt/quicktype.yue:703
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:703
      end -- shunt/quicktype.yue:703
      checker_builder:add(C_ASSERT_PRIMITIVE, 'string') -- shunt/quicktype.yue:705
      checker_builder:add(C_ASSERT_EQ, self.content) -- shunt/quicktype.yue:706
      return checker_builder -- shunt/quicktype.yue:704
    end -- shunt/quicktype.yue:697
  } -- shunt/quicktype.yue:697
  local _list_0 = { -- shunt/quicktype.yue:697
    Is -- shunt/quicktype.yue:697
  } -- shunt/quicktype.yue:697
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:706
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:697
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:697
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:706
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:697
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:697
      end -- shunt/quicktype.yue:697
    end -- shunt/quicktype.yue:706
  end -- shunt/quicktype.yue:706
  if _base_0.__index == nil then -- shunt/quicktype.yue:697
    _base_0.__index = _base_0 -- shunt/quicktype.yue:697
  end -- shunt/quicktype.yue:706
  _class_0 = setmetatable({ -- shunt/quicktype.yue:697
    __init = function(self, content) -- shunt/quicktype.yue:698
      self.content = content -- shunt/quicktype.yue:698
    end, -- shunt/quicktype.yue:697
    __base = _base_0, -- shunt/quicktype.yue:697
    __name = "StringType" -- shunt/quicktype.yue:697
  }, { -- shunt/quicktype.yue:697
    __index = _base_0, -- shunt/quicktype.yue:697
    __call = function(cls, ...) -- shunt/quicktype.yue:697
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:697
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:697
      return _self_0 -- shunt/quicktype.yue:697
    end -- shunt/quicktype.yue:697
  }) -- shunt/quicktype.yue:697
  _base_0.__class = _class_0 -- shunt/quicktype.yue:697
  StringType = _class_0 -- shunt/quicktype.yue:697
end -- shunt/quicktype.yue:706
do -- shunt/quicktype.yue:708
  local _class_0 -- shunt/quicktype.yue:708
  local _base_0 = { -- shunt/quicktype.yue:708
    __tostring = function(self) -- shunt/quicktype.yue:711
      return "?" .. tostring(self.inner_type) -- shunt/quicktype.yue:712
    end, -- shunt/quicktype.yue:714
    checker = function(self, checker_builder) -- shunt/quicktype.yue:714
      if checker_builder == nil then -- shunt/quicktype.yue:714
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:714
      end -- shunt/quicktype.yue:714
      local inner_skip_target = checker_builder:add_with_unresolved_target(C_JMP_IF_NIL) -- shunt/quicktype.yue:716
      self.inner_type:checker(checker_builder) -- shunt/quicktype.yue:717
      inner_skip_target:resolve_here() -- shunt/quicktype.yue:718
      return checker_builder -- shunt/quicktype.yue:715
    end -- shunt/quicktype.yue:708
  } -- shunt/quicktype.yue:708
  local _list_0 = { -- shunt/quicktype.yue:708
    Is -- shunt/quicktype.yue:708
  } -- shunt/quicktype.yue:708
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:718
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:708
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:708
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:718
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:708
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:708
      end -- shunt/quicktype.yue:708
    end -- shunt/quicktype.yue:718
  end -- shunt/quicktype.yue:718
  if _base_0.__index == nil then -- shunt/quicktype.yue:708
    _base_0.__index = _base_0 -- shunt/quicktype.yue:708
  end -- shunt/quicktype.yue:718
  _class_0 = setmetatable({ -- shunt/quicktype.yue:708
    __init = function(self, inner_type) -- shunt/quicktype.yue:709
      self.inner_type = inner_type -- shunt/quicktype.yue:709
    end, -- shunt/quicktype.yue:708
    __base = _base_0, -- shunt/quicktype.yue:708
    __name = "Optional" -- shunt/quicktype.yue:708
  }, { -- shunt/quicktype.yue:708
    __index = _base_0, -- shunt/quicktype.yue:708
    __call = function(cls, ...) -- shunt/quicktype.yue:708
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:708
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:708
      return _self_0 -- shunt/quicktype.yue:708
    end -- shunt/quicktype.yue:708
  }) -- shunt/quicktype.yue:708
  _base_0.__class = _class_0 -- shunt/quicktype.yue:708
  Optional = _class_0 -- shunt/quicktype.yue:708
end -- shunt/quicktype.yue:718
do -- shunt/quicktype.yue:720
  local _class_0 -- shunt/quicktype.yue:720
  local _base_0 = { -- shunt/quicktype.yue:720
    table_like = function(self, _table_like) -- shunt/quicktype.yue:724
      self._table_like = _table_like -- shunt/quicktype.yue:724
      return self -- shunt/quicktype.yue:725
    end, -- shunt/quicktype.yue:727
    __tostring = function(self) -- shunt/quicktype.yue:727
      return "[" .. tostring(self.elem_type) .. "]" -- shunt/quicktype.yue:728
    end, -- shunt/quicktype.yue:730
    checker = function(self, checker_builder) -- shunt/quicktype.yue:730
      if checker_builder == nil then -- shunt/quicktype.yue:730
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:730
      end -- shunt/quicktype.yue:730
      if self._table_like then -- shunt/quicktype.yue:731
        error("table-like arrays are not supported") -- shunt/quicktype.yue:732
      end -- shunt/quicktype.yue:731
      checker_builder:add(C_ASSERT_PRIMITIVE, 'table') -- shunt/quicktype.yue:734
      checker_builder:add(C_PUSH, 1) -- shunt/quicktype.yue:735
      local loop_start = checker_builder:add_labelled(C_GET_FIELD) -- shunt/quicktype.yue:737
      local loop_exit_target = checker_builder:add_with_unresolved_target(C_JMP_IF_NIL) -- shunt/quicktype.yue:739
      self.elem_type:checker(checker_builder) -- shunt/quicktype.yue:740
      checker_builder:add(C_POP) -- shunt/quicktype.yue:741
      checker_builder:add(C_INCR) -- shunt/quicktype.yue:742
      checker_builder:add(C_JMP, loop_start.index) -- shunt/quicktype.yue:743
      loop_exit_target:resolve_here() -- shunt/quicktype.yue:745
      checker_builder:add(C_POP) -- shunt/quicktype.yue:746
      checker_builder:add(C_DECR) -- shunt/quicktype.yue:747
      checker_builder:add(C_ASSERT_LEN) -- shunt/quicktype.yue:748
      checker_builder:add(C_POP) -- shunt/quicktype.yue:749
      return checker_builder -- shunt/quicktype.yue:733
    end -- shunt/quicktype.yue:720
  } -- shunt/quicktype.yue:720
  local _list_0 = { -- shunt/quicktype.yue:720
    Is -- shunt/quicktype.yue:720
  } -- shunt/quicktype.yue:720
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:749
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:720
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:720
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:749
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:720
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:720
      end -- shunt/quicktype.yue:720
    end -- shunt/quicktype.yue:749
  end -- shunt/quicktype.yue:749
  if _base_0.__index == nil then -- shunt/quicktype.yue:720
    _base_0.__index = _base_0 -- shunt/quicktype.yue:720
  end -- shunt/quicktype.yue:749
  _class_0 = setmetatable({ -- shunt/quicktype.yue:720
    __init = function(self, elem_type) -- shunt/quicktype.yue:721
      self.elem_type = elem_type -- shunt/quicktype.yue:721
      self._table_like = false -- shunt/quicktype.yue:722
    end, -- shunt/quicktype.yue:720
    __base = _base_0, -- shunt/quicktype.yue:720
    __name = "Array" -- shunt/quicktype.yue:720
  }, { -- shunt/quicktype.yue:720
    __index = _base_0, -- shunt/quicktype.yue:720
    __call = function(cls, ...) -- shunt/quicktype.yue:720
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:720
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:720
      return _self_0 -- shunt/quicktype.yue:720
    end -- shunt/quicktype.yue:720
  }) -- shunt/quicktype.yue:720
  _base_0.__class = _class_0 -- shunt/quicktype.yue:720
  Array = _class_0 -- shunt/quicktype.yue:720
end -- shunt/quicktype.yue:749
do -- shunt/quicktype.yue:751
  local _class_0 -- shunt/quicktype.yue:751
  local _base_0 = { -- shunt/quicktype.yue:751
    table_like = function(self, _table_like) -- shunt/quicktype.yue:755
      self._table_like = _table_like -- shunt/quicktype.yue:755
      return self -- shunt/quicktype.yue:756
    end, -- shunt/quicktype.yue:758
    __tostring = function(self) -- shunt/quicktype.yue:758
      local elem_type_reprs -- shunt/quicktype.yue:759
      do -- shunt/quicktype.yue:759
        local _accum_0 = { } -- shunt/quicktype.yue:759
        local _len_0 = 1 -- shunt/quicktype.yue:759
        local _list_0 = self.elem_types -- shunt/quicktype.yue:759
        for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:759
          local elem_type = _list_0[_index_0] -- shunt/quicktype.yue:759
          _accum_0[_len_0] = tostring(elem_type) -- shunt/quicktype.yue:759
          _len_0 = _len_0 + 1 -- shunt/quicktype.yue:759
        end -- shunt/quicktype.yue:759
        elem_type_reprs = _accum_0 -- shunt/quicktype.yue:759
      end -- shunt/quicktype.yue:759
      return "(" .. tostring(table.concat(elem_type_reprs, ', ')) .. ")" -- shunt/quicktype.yue:760
    end, -- shunt/quicktype.yue:762
    checker = function(self, checker_builder) -- shunt/quicktype.yue:762
      if checker_builder == nil then -- shunt/quicktype.yue:762
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:762
      end -- shunt/quicktype.yue:762
      if self._table_like then -- shunt/quicktype.yue:763
        error("table-like arrays are not supported") -- shunt/quicktype.yue:764
      end -- shunt/quicktype.yue:763
      checker_builder:add(C_ASSERT_PRIMITIVE, 'table') -- shunt/quicktype.yue:766
      for i = 1, #self.elem_types do -- shunt/quicktype.yue:768
        checker_builder:add(C_PUSH, i) -- shunt/quicktype.yue:769
        checker_builder:add(C_GET_FIELD) -- shunt/quicktype.yue:770
        self.elem_types[i]:checker(checker_builder) -- shunt/quicktype.yue:771
        checker_builder:add(C_POP) -- shunt/quicktype.yue:772
        checker_builder:add(C_POP) -- shunt/quicktype.yue:773
      end -- shunt/quicktype.yue:773
      return checker_builder -- shunt/quicktype.yue:765
    end -- shunt/quicktype.yue:751
  } -- shunt/quicktype.yue:751
  local _list_0 = { -- shunt/quicktype.yue:751
    Is -- shunt/quicktype.yue:751
  } -- shunt/quicktype.yue:751
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:773
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:751
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:751
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:773
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:751
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:751
      end -- shunt/quicktype.yue:751
    end -- shunt/quicktype.yue:773
  end -- shunt/quicktype.yue:773
  if _base_0.__index == nil then -- shunt/quicktype.yue:751
    _base_0.__index = _base_0 -- shunt/quicktype.yue:751
  end -- shunt/quicktype.yue:773
  _class_0 = setmetatable({ -- shunt/quicktype.yue:751
    __init = function(self, elem_types) -- shunt/quicktype.yue:752
      self.elem_types = elem_types -- shunt/quicktype.yue:752
      self._table_like = false -- shunt/quicktype.yue:753
    end, -- shunt/quicktype.yue:751
    __base = _base_0, -- shunt/quicktype.yue:751
    __name = "Tuple" -- shunt/quicktype.yue:751
  }, { -- shunt/quicktype.yue:751
    __index = _base_0, -- shunt/quicktype.yue:751
    __call = function(cls, ...) -- shunt/quicktype.yue:751
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:751
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:751
      return _self_0 -- shunt/quicktype.yue:751
    end -- shunt/quicktype.yue:751
  }) -- shunt/quicktype.yue:751
  _base_0.__class = _class_0 -- shunt/quicktype.yue:751
  Tuple = _class_0 -- shunt/quicktype.yue:751
end -- shunt/quicktype.yue:773
do -- shunt/quicktype.yue:775
  local _class_0 -- shunt/quicktype.yue:775
  local _base_0 = { -- shunt/quicktype.yue:775
    table_like = function(self, _table_like) -- shunt/quicktype.yue:779
      self._table_like = _table_like -- shunt/quicktype.yue:779
      return self -- shunt/quicktype.yue:780
    end, -- shunt/quicktype.yue:782
    __tostring = function(self) -- shunt/quicktype.yue:782
      local field_reprs -- shunt/quicktype.yue:783
      do -- shunt/quicktype.yue:783
        local _accum_0 = { } -- shunt/quicktype.yue:783
        local _len_0 = 1 -- shunt/quicktype.yue:783
        local _list_0 = self.fields -- shunt/quicktype.yue:783
        for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:783
          local field = _list_0[_index_0] -- shunt/quicktype.yue:783
          _accum_0[_len_0] = tostring(field) -- shunt/quicktype.yue:783
          _len_0 = _len_0 + 1 -- shunt/quicktype.yue:783
        end -- shunt/quicktype.yue:783
        field_reprs = _accum_0 -- shunt/quicktype.yue:783
      end -- shunt/quicktype.yue:783
      return "{" .. tostring(table.concat(field_reprs, ', ')) .. "}" -- shunt/quicktype.yue:784
    end, -- shunt/quicktype.yue:786
    checker = function(self, checker_builder) -- shunt/quicktype.yue:786
      if checker_builder == nil then -- shunt/quicktype.yue:786
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:786
      end -- shunt/quicktype.yue:786
      if self._table_like then -- shunt/quicktype.yue:788
        checker_builder:add(C_ASSERT_TABLE_LIKE) -- shunt/quicktype.yue:789
      else -- shunt/quicktype.yue:791
        checker_builder:add(C_ASSERT_PRIMITIVE, 'table') -- shunt/quicktype.yue:791
      end -- shunt/quicktype.yue:788
      if (self.metatable_type ~= nil) then -- shunt/quicktype.yue:793
        checker_builder:add(C_PUSH_METATABLE) -- shunt/quicktype.yue:794
        self.metatable_type:checker(checker_builder) -- shunt/quicktype.yue:795
        checker_builder:add(C_POP) -- shunt/quicktype.yue:796
      end -- shunt/quicktype.yue:793
      local _list_0 = self.fields -- shunt/quicktype.yue:797
      for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:797
        local field = _list_0[_index_0] -- shunt/quicktype.yue:797
        checker_builder:add(C_PUSH, field.name) -- shunt/quicktype.yue:798
        checker_builder:add(C_GET_FIELD) -- shunt/quicktype.yue:799
        field:checker(checker_builder) -- shunt/quicktype.yue:800
        checker_builder:add(C_POP) -- shunt/quicktype.yue:801
        checker_builder:add(C_POP) -- shunt/quicktype.yue:802
      end -- shunt/quicktype.yue:802
      return checker_builder -- shunt/quicktype.yue:787
    end -- shunt/quicktype.yue:775
  } -- shunt/quicktype.yue:775
  local _list_0 = { -- shunt/quicktype.yue:775
    Is -- shunt/quicktype.yue:775
  } -- shunt/quicktype.yue:775
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:802
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:775
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:775
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:802
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:775
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:775
      end -- shunt/quicktype.yue:775
    end -- shunt/quicktype.yue:802
  end -- shunt/quicktype.yue:802
  if _base_0.__index == nil then -- shunt/quicktype.yue:775
    _base_0.__index = _base_0 -- shunt/quicktype.yue:775
  end -- shunt/quicktype.yue:802
  _class_0 = setmetatable({ -- shunt/quicktype.yue:775
    __init = function(self, metatable_type, fields) -- shunt/quicktype.yue:776
      self.metatable_type = metatable_type -- shunt/quicktype.yue:776
      self.fields = fields -- shunt/quicktype.yue:776
      self._table_like = false -- shunt/quicktype.yue:777
    end, -- shunt/quicktype.yue:775
    __base = _base_0, -- shunt/quicktype.yue:775
    __name = "Struct" -- shunt/quicktype.yue:775
  }, { -- shunt/quicktype.yue:775
    __index = _base_0, -- shunt/quicktype.yue:775
    __call = function(cls, ...) -- shunt/quicktype.yue:775
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:775
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:775
      return _self_0 -- shunt/quicktype.yue:775
    end -- shunt/quicktype.yue:775
  }) -- shunt/quicktype.yue:775
  _base_0.__class = _class_0 -- shunt/quicktype.yue:775
  Struct = _class_0 -- shunt/quicktype.yue:775
end -- shunt/quicktype.yue:802
do -- shunt/quicktype.yue:804
  local _class_0 -- shunt/quicktype.yue:804
  local _base_0 = { -- shunt/quicktype.yue:804
    __tostring = function(self) -- shunt/quicktype.yue:807
      return tostring(self.name) .. ": " .. tostring(self.type) -- shunt/quicktype.yue:808
    end, -- shunt/quicktype.yue:810
    checker = function(self, checker_builder) -- shunt/quicktype.yue:810
      if checker_builder == nil then -- shunt/quicktype.yue:810
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:810
      end -- shunt/quicktype.yue:810
      return self.type:checker(checker_builder) -- shunt/quicktype.yue:811
    end -- shunt/quicktype.yue:804
  } -- shunt/quicktype.yue:804
  local _list_0 = { -- shunt/quicktype.yue:804
    Is -- shunt/quicktype.yue:804
  } -- shunt/quicktype.yue:804
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:811
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:804
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:804
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:811
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:804
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:804
      end -- shunt/quicktype.yue:804
    end -- shunt/quicktype.yue:811
  end -- shunt/quicktype.yue:811
  if _base_0.__index == nil then -- shunt/quicktype.yue:804
    _base_0.__index = _base_0 -- shunt/quicktype.yue:804
  end -- shunt/quicktype.yue:811
  _class_0 = setmetatable({ -- shunt/quicktype.yue:804
    __init = function(self, name, type) -- shunt/quicktype.yue:805
      self.name = name -- shunt/quicktype.yue:805
      self.type = type -- shunt/quicktype.yue:805
    end, -- shunt/quicktype.yue:804
    __base = _base_0, -- shunt/quicktype.yue:804
    __name = "Field" -- shunt/quicktype.yue:804
  }, { -- shunt/quicktype.yue:804
    __index = _base_0, -- shunt/quicktype.yue:804
    __call = function(cls, ...) -- shunt/quicktype.yue:804
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:804
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:804
      return _self_0 -- shunt/quicktype.yue:804
    end -- shunt/quicktype.yue:804
  }) -- shunt/quicktype.yue:804
  _base_0.__class = _class_0 -- shunt/quicktype.yue:804
  Field = _class_0 -- shunt/quicktype.yue:804
end -- shunt/quicktype.yue:811
do -- shunt/quicktype.yue:813
  local _class_0 -- shunt/quicktype.yue:813
  local _base_0 = { -- shunt/quicktype.yue:813
    table_like = function(self, _table_like) -- shunt/quicktype.yue:817
      self._table_like = _table_like -- shunt/quicktype.yue:817
      return self -- shunt/quicktype.yue:818
    end, -- shunt/quicktype.yue:820
    __tostring = function(self) -- shunt/quicktype.yue:820
      return "{" .. tostring(self.elem_type) .. "}" -- shunt/quicktype.yue:821
    end, -- shunt/quicktype.yue:823
    checker = function(self, checker_builder) -- shunt/quicktype.yue:823
      if checker_builder == nil then -- shunt/quicktype.yue:823
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:823
      end -- shunt/quicktype.yue:823
      if self._table_like then -- shunt/quicktype.yue:824
        error("table-like arrays are not supported") -- shunt/quicktype.yue:825
      end -- shunt/quicktype.yue:824
      checker_builder:add(C_ASSERT_PRIMITIVE, 'table') -- shunt/quicktype.yue:827
      if (self.metatable_type ~= nil) then -- shunt/quicktype.yue:829
        checker_builder:add(C_PUSH_METATABLE) -- shunt/quicktype.yue:830
        self.metatable_type:checker(checker_builder) -- shunt/quicktype.yue:831
        checker_builder:add(C_POP) -- shunt/quicktype.yue:832
      end -- shunt/quicktype.yue:829
      checker_builder:add(C_PUSH, V_NIL) -- shunt/quicktype.yue:834
      checker_builder:add(C_NEXT) -- shunt/quicktype.yue:835
      local loop_start_label = checker_builder:add_with_unresolved_target(C_JMP_IF_NIL) -- shunt/quicktype.yue:837
      checker_builder:add(C_ASSERT_TRUTHY) -- shunt/quicktype.yue:838
      checker_builder:add(C_POP) -- shunt/quicktype.yue:839
      self.elem_type:checker(checker_builder) -- shunt/quicktype.yue:840
      checker_builder:add(C_NEXT) -- shunt/quicktype.yue:842
      checker_builder:add(C_JMP, loop_start_label.index) -- shunt/quicktype.yue:843
      loop_start_label:resolve_here() -- shunt/quicktype.yue:845
      checker_builder:add(C_POP) -- shunt/quicktype.yue:846
      checker_builder:add(C_POP) -- shunt/quicktype.yue:847
      return checker_builder -- shunt/quicktype.yue:826
    end -- shunt/quicktype.yue:813
  } -- shunt/quicktype.yue:813
  local _list_0 = { -- shunt/quicktype.yue:813
    Is -- shunt/quicktype.yue:813
  } -- shunt/quicktype.yue:813
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:847
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:813
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:813
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:847
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:813
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:813
      end -- shunt/quicktype.yue:813
    end -- shunt/quicktype.yue:847
  end -- shunt/quicktype.yue:847
  if _base_0.__index == nil then -- shunt/quicktype.yue:813
    _base_0.__index = _base_0 -- shunt/quicktype.yue:813
  end -- shunt/quicktype.yue:847
  _class_0 = setmetatable({ -- shunt/quicktype.yue:813
    __init = function(self, metatable_type, elem_type) -- shunt/quicktype.yue:814
      self.metatable_type = metatable_type -- shunt/quicktype.yue:814
      self.elem_type = elem_type -- shunt/quicktype.yue:814
      self._table_like = false -- shunt/quicktype.yue:815
    end, -- shunt/quicktype.yue:813
    __base = _base_0, -- shunt/quicktype.yue:813
    __name = "Set" -- shunt/quicktype.yue:813
  }, { -- shunt/quicktype.yue:813
    __index = _base_0, -- shunt/quicktype.yue:813
    __call = function(cls, ...) -- shunt/quicktype.yue:813
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:813
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:813
      return _self_0 -- shunt/quicktype.yue:813
    end -- shunt/quicktype.yue:813
  }) -- shunt/quicktype.yue:813
  _base_0.__class = _class_0 -- shunt/quicktype.yue:813
  Set = _class_0 -- shunt/quicktype.yue:813
end -- shunt/quicktype.yue:847
do -- shunt/quicktype.yue:849
  local _class_0 -- shunt/quicktype.yue:849
  local _base_0 = { -- shunt/quicktype.yue:849
    table_like = function(self, _table_like) -- shunt/quicktype.yue:853
      self._table_like = _table_like -- shunt/quicktype.yue:853
      return self -- shunt/quicktype.yue:854
    end, -- shunt/quicktype.yue:856
    __tostring = function(self) -- shunt/quicktype.yue:856
      return "{" .. tostring(self.in_type) .. " -> " .. tostring(self.out_type) .. "}" -- shunt/quicktype.yue:857
    end, -- shunt/quicktype.yue:859
    checker = function(self, checker_builder) -- shunt/quicktype.yue:859
      if checker_builder == nil then -- shunt/quicktype.yue:859
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:859
      end -- shunt/quicktype.yue:859
      if self._table_like then -- shunt/quicktype.yue:860
        error("table-like arrays are not supported") -- shunt/quicktype.yue:861
      end -- shunt/quicktype.yue:860
      checker_builder:add(C_ASSERT_PRIMITIVE, 'table') -- shunt/quicktype.yue:863
      if (self.metatable_type ~= nil) then -- shunt/quicktype.yue:865
        checker_builder:add(C_PUSH_METATABLE) -- shunt/quicktype.yue:866
        self.metatable_type:checker(checker_builder) -- shunt/quicktype.yue:867
        checker_builder:add(C_POP) -- shunt/quicktype.yue:868
      end -- shunt/quicktype.yue:865
      checker_builder:add(C_PUSH, V_NIL) -- shunt/quicktype.yue:870
      checker_builder:add(C_NEXT) -- shunt/quicktype.yue:871
      local loop_start_label = checker_builder:add_with_unresolved_target(C_JMP_IF_NIL) -- shunt/quicktype.yue:873
      self.out_type:checker(checker_builder) -- shunt/quicktype.yue:875
      checker_builder:add(C_POP) -- shunt/quicktype.yue:876
      self.in_type:checker(checker_builder) -- shunt/quicktype.yue:877
      checker_builder:add(C_NEXT) -- shunt/quicktype.yue:879
      checker_builder:add(C_JMP, loop_start_label.index) -- shunt/quicktype.yue:880
      loop_start_label:resolve_here() -- shunt/quicktype.yue:882
      checker_builder:add(C_POP) -- shunt/quicktype.yue:883
      checker_builder:add(C_POP) -- shunt/quicktype.yue:884
      return checker_builder -- shunt/quicktype.yue:862
    end -- shunt/quicktype.yue:849
  } -- shunt/quicktype.yue:849
  local _list_0 = { -- shunt/quicktype.yue:849
    Is -- shunt/quicktype.yue:849
  } -- shunt/quicktype.yue:849
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:884
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:849
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:849
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:884
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:849
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:849
      end -- shunt/quicktype.yue:849
    end -- shunt/quicktype.yue:884
  end -- shunt/quicktype.yue:884
  if _base_0.__index == nil then -- shunt/quicktype.yue:849
    _base_0.__index = _base_0 -- shunt/quicktype.yue:849
  end -- shunt/quicktype.yue:884
  _class_0 = setmetatable({ -- shunt/quicktype.yue:849
    __init = function(self, metatable_type, in_type, out_type) -- shunt/quicktype.yue:850
      self.metatable_type = metatable_type -- shunt/quicktype.yue:850
      self.in_type = in_type -- shunt/quicktype.yue:850
      self.out_type = out_type -- shunt/quicktype.yue:850
      self._table_like = false -- shunt/quicktype.yue:851
    end, -- shunt/quicktype.yue:849
    __base = _base_0, -- shunt/quicktype.yue:849
    __name = "Mapping" -- shunt/quicktype.yue:849
  }, { -- shunt/quicktype.yue:849
    __index = _base_0, -- shunt/quicktype.yue:849
    __call = function(cls, ...) -- shunt/quicktype.yue:849
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:849
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:849
      return _self_0 -- shunt/quicktype.yue:849
    end -- shunt/quicktype.yue:849
  }) -- shunt/quicktype.yue:849
  _base_0.__class = _class_0 -- shunt/quicktype.yue:849
  Mapping = _class_0 -- shunt/quicktype.yue:849
end -- shunt/quicktype.yue:884
do -- shunt/quicktype.yue:886
  local _class_0 -- shunt/quicktype.yue:886
  local _base_0 = { -- shunt/quicktype.yue:886
    param_checkers = function(self) -- shunt/quicktype.yue:893
      do -- shunt/quicktype.yue:894
        local param_checkers = self._param_checkers -- shunt/quicktype.yue:894
        if param_checkers then -- shunt/quicktype.yue:894
          return param_checkers -- shunt/quicktype.yue:895
        end -- shunt/quicktype.yue:894
      end -- shunt/quicktype.yue:894
      local param_checkers -- shunt/quicktype.yue:896
      do -- shunt/quicktype.yue:896
        local _with_0 = setmetatable({ }, { }) -- shunt/quicktype.yue:896
        local _list_0 = self.param_types -- shunt/quicktype.yue:897
        for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:897
          local param_type = _list_0[_index_0] -- shunt/quicktype.yue:897
          _with_0[#_with_0 + 1] = param_type:checker():build() -- shunt/quicktype.yue:898
        end -- shunt/quicktype.yue:898
        if (getmetatable(self.param_types) ~= nil) then -- shunt/quicktype.yue:899
          do -- shunt/quicktype.yue:900
            local remainder_type = self.remainder_param_type -- shunt/quicktype.yue:900
            if remainder_type then -- shunt/quicktype.yue:900
              local remainder_type_checker = remainder_type:checker():build() -- shunt/quicktype.yue:901
              getmetatable(_with_0).__index = function(self) -- shunt/quicktype.yue:902
                return remainder_type_checker -- shunt/quicktype.yue:902
              end -- shunt/quicktype.yue:902
            end -- shunt/quicktype.yue:900
          end -- shunt/quicktype.yue:900
        end -- shunt/quicktype.yue:899
        param_checkers = _with_0 -- shunt/quicktype.yue:896
      end -- shunt/quicktype.yue:896
      self._param_checkers = param_checkers -- shunt/quicktype.yue:903
      return param_checkers -- shunt/quicktype.yue:904
    end, -- shunt/quicktype.yue:906
    return_checkers = function(self) -- shunt/quicktype.yue:906
      do -- shunt/quicktype.yue:907
        local return_checkers = self._return_checkers -- shunt/quicktype.yue:907
        if return_checkers then -- shunt/quicktype.yue:907
          return return_checkers -- shunt/quicktype.yue:908
        end -- shunt/quicktype.yue:907
      end -- shunt/quicktype.yue:907
      local return_checkers -- shunt/quicktype.yue:909
      do -- shunt/quicktype.yue:909
        local _with_0 = setmetatable({ }, { }) -- shunt/quicktype.yue:909
        local _list_0 = self.return_types -- shunt/quicktype.yue:910
        for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:910
          local return_type = _list_0[_index_0] -- shunt/quicktype.yue:910
          _with_0[#_with_0 + 1] = return_type:checker():build() -- shunt/quicktype.yue:911
        end -- shunt/quicktype.yue:911
        if (getmetatable(self.return_types) ~= nil) then -- shunt/quicktype.yue:912
          do -- shunt/quicktype.yue:913
            local remainder_type = self.remainder_return_type -- shunt/quicktype.yue:913
            if remainder_type then -- shunt/quicktype.yue:913
              local remainder_type_checker = remainder_type:checker():build() -- shunt/quicktype.yue:914
              getmetatable(_with_0).__index = function(self) -- shunt/quicktype.yue:915
                return remainder_type_checker -- shunt/quicktype.yue:915
              end -- shunt/quicktype.yue:915
            end -- shunt/quicktype.yue:913
          end -- shunt/quicktype.yue:913
        end -- shunt/quicktype.yue:912
        return_checkers = _with_0 -- shunt/quicktype.yue:909
      end -- shunt/quicktype.yue:909
      self._return_checkers = return_checkers -- shunt/quicktype.yue:916
      return return_checkers -- shunt/quicktype.yue:917
    end, -- shunt/quicktype.yue:919
    __tostring = function(self) -- shunt/quicktype.yue:919
      return table.concat((function() -- shunt/quicktype.yue:920
        local _with_0 = { } -- shunt/quicktype.yue:920
        _with_0[#_with_0 + 1] = '(' -- shunt/quicktype.yue:921
        local first_param = true -- shunt/quicktype.yue:922
        local _list_0 = self.param_types -- shunt/quicktype.yue:923
        for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:923
          local param_type = _list_0[_index_0] -- shunt/quicktype.yue:923
          if not first_param then -- shunt/quicktype.yue:924
            _with_0[#_with_0 + 1] = ", " -- shunt/quicktype.yue:925
          end -- shunt/quicktype.yue:924
          first_param = false -- shunt/quicktype.yue:926
          _with_0[#_with_0 + 1] = tostring(param_type) -- shunt/quicktype.yue:928
        end -- shunt/quicktype.yue:928
        if (self.remainder_param_type ~= nil) then -- shunt/quicktype.yue:929
          if not first_param then -- shunt/quicktype.yue:930
            _with_0[#_with_0 + 1] = ', ' -- shunt/quicktype.yue:931
          end -- shunt/quicktype.yue:930
          _with_0[#_with_0 + 1] = tostring(self.remainder_param_type) -- shunt/quicktype.yue:932
          _with_0[#_with_0 + 1] = '...' -- shunt/quicktype.yue:933
        end -- shunt/quicktype.yue:929
        _with_0[#_with_0 + 1] = ') -> ' -- shunt/quicktype.yue:934
        if #self.return_types == 1 then -- shunt/quicktype.yue:935
          if (self.remainder_return_type ~= nil) then -- shunt/quicktype.yue:936
            _with_0[#_with_0 + 1] = tostring(self.remainder_return_type) -- shunt/quicktype.yue:937
            _with_0[#_with_0 + 1] = '...' -- shunt/quicktype.yue:938
          else -- shunt/quicktype.yue:940
            _with_0[#_with_0 + 1] = tostring(self.return_types[1]) -- shunt/quicktype.yue:940
          end -- shunt/quicktype.yue:936
        else -- shunt/quicktype.yue:942
          _with_0[#_with_0 + 1] = '<' -- shunt/quicktype.yue:942
          local first_ret = true -- shunt/quicktype.yue:943
          local _list_1 = self.return_types -- shunt/quicktype.yue:944
          for _index_0 = 1, #_list_1 do -- shunt/quicktype.yue:944
            local return_type = _list_1[_index_0] -- shunt/quicktype.yue:944
            if not first_ret then -- shunt/quicktype.yue:945
              _with_0[#_with_0 + 1] = ", " -- shunt/quicktype.yue:946
            end -- shunt/quicktype.yue:945
            first_ret = false -- shunt/quicktype.yue:947
            _with_0[#_with_0 + 1] = tostring(return_type) -- shunt/quicktype.yue:948
          end -- shunt/quicktype.yue:948
          if (self.remainder_return_type ~= nil) then -- shunt/quicktype.yue:949
            if not first_ret then -- shunt/quicktype.yue:950
              _with_0[#_with_0 + 1] = ', ' -- shunt/quicktype.yue:951
            end -- shunt/quicktype.yue:950
            _with_0[#_with_0 + 1] = tostring(self.remainder_return_type) -- shunt/quicktype.yue:952
            _with_0[#_with_0 + 1] = '...' -- shunt/quicktype.yue:953
          end -- shunt/quicktype.yue:949
          _with_0[#_with_0 + 1] = '>' -- shunt/quicktype.yue:954
        end -- shunt/quicktype.yue:935
        return _with_0 -- shunt/quicktype.yue:920
      end)()) -- shunt/quicktype.yue:954
    end, -- shunt/quicktype.yue:956
    checker = function(self, checker_builder) -- shunt/quicktype.yue:956
      if checker_builder == nil then -- shunt/quicktype.yue:956
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:956
      end -- shunt/quicktype.yue:956
      checker_builder:add(C_ASSERT_PRIMITIVE, 'function') -- shunt/quicktype.yue:958
      return checker_builder -- shunt/quicktype.yue:957
    end -- shunt/quicktype.yue:886
  } -- shunt/quicktype.yue:886
  local _list_0 = { -- shunt/quicktype.yue:886
    Is -- shunt/quicktype.yue:886
  } -- shunt/quicktype.yue:886
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:958
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:886
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:886
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:958
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:886
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:886
      end -- shunt/quicktype.yue:886
    end -- shunt/quicktype.yue:958
  end -- shunt/quicktype.yue:958
  if _base_0.__index == nil then -- shunt/quicktype.yue:886
    _base_0.__index = _base_0 -- shunt/quicktype.yue:886
  end -- shunt/quicktype.yue:958
  _class_0 = setmetatable({ -- shunt/quicktype.yue:886
    __init = function(self, param_types, return_types) -- shunt/quicktype.yue:887
      self.param_types = param_types -- shunt/quicktype.yue:887
      self.return_types = return_types -- shunt/quicktype.yue:887
      do -- shunt/quicktype.yue:888
        local _obj_0 = getmetatable(param_types) -- shunt/quicktype.yue:888
        if _obj_0 ~= nil then -- shunt/quicktype.yue:888
          do -- shunt/quicktype.yue:888
            local _obj_1 = _obj_0.__index -- shunt/quicktype.yue:888
            if _obj_1 ~= nil then -- shunt/quicktype.yue:888
              self.remainder_param_type = _obj_1() -- shunt/quicktype.yue:888
            end -- shunt/quicktype.yue:888
          end -- shunt/quicktype.yue:888
        end -- shunt/quicktype.yue:888
      end -- shunt/quicktype.yue:888
      do -- shunt/quicktype.yue:889
        local _obj_0 = getmetatable(return_types) -- shunt/quicktype.yue:889
        if _obj_0 ~= nil then -- shunt/quicktype.yue:889
          do -- shunt/quicktype.yue:889
            local _obj_1 = _obj_0.__index -- shunt/quicktype.yue:889
            if _obj_1 ~= nil then -- shunt/quicktype.yue:889
              self.remainder_return_type = _obj_1() -- shunt/quicktype.yue:889
            end -- shunt/quicktype.yue:889
          end -- shunt/quicktype.yue:889
        end -- shunt/quicktype.yue:889
      end -- shunt/quicktype.yue:889
      self._param_checkers = nil -- shunt/quicktype.yue:890
      self._return_checkers = nil -- shunt/quicktype.yue:891
    end, -- shunt/quicktype.yue:886
    __base = _base_0, -- shunt/quicktype.yue:886
    __name = "Function" -- shunt/quicktype.yue:886
  }, { -- shunt/quicktype.yue:886
    __index = _base_0, -- shunt/quicktype.yue:886
    __call = function(cls, ...) -- shunt/quicktype.yue:886
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:886
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:886
      return _self_0 -- shunt/quicktype.yue:886
    end -- shunt/quicktype.yue:886
  }) -- shunt/quicktype.yue:886
  _base_0.__class = _class_0 -- shunt/quicktype.yue:886
  Function = _class_0 -- shunt/quicktype.yue:886
end -- shunt/quicktype.yue:958
do -- shunt/quicktype.yue:960
  local _class_0 -- shunt/quicktype.yue:960
  local _parent_0 = Function -- shunt/quicktype.yue:960
  local _base_0 = { -- shunt/quicktype.yue:960
    __tostring = function(self) -- shunt/quicktype.yue:964
      return table.concat((function() -- shunt/quicktype.yue:965
        local _with_0 = { } -- shunt/quicktype.yue:965
        _with_0[#_with_0 + 1] = '(' -- shunt/quicktype.yue:966
        local first_param = true -- shunt/quicktype.yue:967
        do -- shunt/quicktype.yue:968
          local _list_0 = self.param_types -- shunt/quicktype.yue:968
          for _index_0 = 2, #_list_0 do -- shunt/quicktype.yue:968
            local param_type = _list_0[_index_0] -- shunt/quicktype.yue:968
            if not first_param then -- shunt/quicktype.yue:969
              _with_0[#_with_0 + 1] = ", " -- shunt/quicktype.yue:970
            end -- shunt/quicktype.yue:969
            first_param = false -- shunt/quicktype.yue:971
            _with_0[#_with_0 + 1] = tostring(param_type) -- shunt/quicktype.yue:973
          end -- shunt/quicktype.yue:973
        end -- shunt/quicktype.yue:973
        if (self.remainder_param_type ~= nil) then -- shunt/quicktype.yue:974
          if not first_param then -- shunt/quicktype.yue:975
            _with_0[#_with_0 + 1] = ', ' -- shunt/quicktype.yue:976
          end -- shunt/quicktype.yue:975
          _with_0[#_with_0 + 1] = tostring(self.remainder_param_type) -- shunt/quicktype.yue:977
          _with_0[#_with_0 + 1] = '...' -- shunt/quicktype.yue:978
        end -- shunt/quicktype.yue:974
        _with_0[#_with_0 + 1] = ') => ' -- shunt/quicktype.yue:979
        if #self.return_types == 1 then -- shunt/quicktype.yue:980
          if (self.remainder_return_type ~= nil) then -- shunt/quicktype.yue:981
            _with_0[#_with_0 + 1] = tostring(self.remainder_return_type) -- shunt/quicktype.yue:982
            _with_0[#_with_0 + 1] = '...' -- shunt/quicktype.yue:983
          else -- shunt/quicktype.yue:985
            _with_0[#_with_0 + 1] = tostring(self.return_types[1]) -- shunt/quicktype.yue:985
          end -- shunt/quicktype.yue:981
        else -- shunt/quicktype.yue:987
          _with_0[#_with_0 + 1] = '<' -- shunt/quicktype.yue:987
          local first_ret = true -- shunt/quicktype.yue:988
          local _list_0 = self.return_types -- shunt/quicktype.yue:989
          for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:989
            local return_type = _list_0[_index_0] -- shunt/quicktype.yue:989
            if not first_ret then -- shunt/quicktype.yue:990
              _with_0[#_with_0 + 1] = ", " -- shunt/quicktype.yue:991
            end -- shunt/quicktype.yue:990
            first_ret = false -- shunt/quicktype.yue:992
            _with_0[#_with_0 + 1] = tostring(return_type) -- shunt/quicktype.yue:993
          end -- shunt/quicktype.yue:993
          if (self.remainder_return_type ~= nil) then -- shunt/quicktype.yue:994
            if not first_ret then -- shunt/quicktype.yue:995
              _with_0[#_with_0 + 1] = ', ' -- shunt/quicktype.yue:996
            end -- shunt/quicktype.yue:995
            _with_0[#_with_0 + 1] = tostring(self.remainder_return_type) -- shunt/quicktype.yue:997
            _with_0[#_with_0 + 1] = '...' -- shunt/quicktype.yue:998
          end -- shunt/quicktype.yue:994
          _with_0[#_with_0 + 1] = '>' -- shunt/quicktype.yue:999
        end -- shunt/quicktype.yue:980
        return _with_0 -- shunt/quicktype.yue:965
      end)()) -- shunt/quicktype.yue:999
    end -- shunt/quicktype.yue:960
  } -- shunt/quicktype.yue:960
  for _key_0, _val_0 in pairs(_parent_0.__base) do -- shunt/quicktype.yue:999
    if _base_0[_key_0] == nil and _key_0:match("^__") and not (_key_0 == "__index" and _val_0 == _parent_0.__base) then -- shunt/quicktype.yue:960
      _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:960
    end -- shunt/quicktype.yue:960
  end -- shunt/quicktype.yue:999
  if _base_0.__index == nil then -- shunt/quicktype.yue:960
    _base_0.__index = _base_0 -- shunt/quicktype.yue:960
  end -- shunt/quicktype.yue:999
  setmetatable(_base_0, _parent_0.__base) -- shunt/quicktype.yue:960
  _class_0 = setmetatable({ -- shunt/quicktype.yue:960
    __init = function(self, param_types, return_types) -- shunt/quicktype.yue:961
      return _class_0.__parent.__init(self, (function() -- shunt/quicktype.yue:962
        local _tab_0 = { -- shunt/quicktype.yue:962
          Some() -- shunt/quicktype.yue:962
        } -- shunt/quicktype.yue:962
        local _idx_0 = 1 -- shunt/quicktype.yue:962
        for _key_0, _value_0 in pairs(param_types) do -- shunt/quicktype.yue:962
          if _idx_0 == _key_0 then -- shunt/quicktype.yue:962
            _tab_0[#_tab_0 + 1] = _value_0 -- shunt/quicktype.yue:962
            _idx_0 = _idx_0 + 1 -- shunt/quicktype.yue:962
          else -- shunt/quicktype.yue:962
            _tab_0[_key_0] = _value_0 -- shunt/quicktype.yue:962
          end -- shunt/quicktype.yue:962
        end -- shunt/quicktype.yue:962
        return _tab_0 -- shunt/quicktype.yue:962
      end)(), return_types) -- shunt/quicktype.yue:962
    end, -- shunt/quicktype.yue:960
    __base = _base_0, -- shunt/quicktype.yue:960
    __name = "Method", -- shunt/quicktype.yue:960
    __parent = _parent_0 -- shunt/quicktype.yue:960
  }, { -- shunt/quicktype.yue:960
    __index = function(cls, name) -- shunt/quicktype.yue:960
      local val = rawget(_base_0, name) -- shunt/quicktype.yue:960
      if val == nil then -- shunt/quicktype.yue:960
        local parent = rawget(cls, "__parent") -- shunt/quicktype.yue:960
        if parent then -- shunt/quicktype.yue:960
          return parent[name] -- shunt/quicktype.yue:960
        end -- shunt/quicktype.yue:960
      else -- shunt/quicktype.yue:960
        return val -- shunt/quicktype.yue:960
      end -- shunt/quicktype.yue:960
    end, -- shunt/quicktype.yue:960
    __call = function(cls, ...) -- shunt/quicktype.yue:960
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:960
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:960
      return _self_0 -- shunt/quicktype.yue:960
    end -- shunt/quicktype.yue:960
  }) -- shunt/quicktype.yue:960
  _base_0.__class = _class_0 -- shunt/quicktype.yue:960
  if _parent_0.__inherited then -- shunt/quicktype.yue:960
    _parent_0.__inherited(_parent_0, _class_0) -- shunt/quicktype.yue:960
  end -- shunt/quicktype.yue:960
  Method = _class_0 -- shunt/quicktype.yue:960
end -- shunt/quicktype.yue:999
do -- shunt/quicktype.yue:1001
  local _class_0 -- shunt/quicktype.yue:1001
  local _base_0 = { -- shunt/quicktype.yue:1001
    __tostring = function(self) -- shunt/quicktype.yue:1004
      return tostring(self.type) .. "..." -- shunt/quicktype.yue:1005
    end, -- shunt/quicktype.yue:1007
    checker = function(self, checker_builder) -- shunt/quicktype.yue:1007
      if checker_builder == nil then -- shunt/quicktype.yue:1007
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:1007
      end -- shunt/quicktype.yue:1007
      return error('internal error: Remainder unresolved in AST') -- shunt/quicktype.yue:1008
    end -- shunt/quicktype.yue:1001
  } -- shunt/quicktype.yue:1001
  local _list_0 = { -- shunt/quicktype.yue:1001
    Is -- shunt/quicktype.yue:1001
  } -- shunt/quicktype.yue:1001
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:1008
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:1001
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:1001
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:1008
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:1001
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:1001
      end -- shunt/quicktype.yue:1001
    end -- shunt/quicktype.yue:1008
  end -- shunt/quicktype.yue:1008
  if _base_0.__index == nil then -- shunt/quicktype.yue:1001
    _base_0.__index = _base_0 -- shunt/quicktype.yue:1001
  end -- shunt/quicktype.yue:1008
  _class_0 = setmetatable({ -- shunt/quicktype.yue:1001
    __init = function(self, type) -- shunt/quicktype.yue:1002
      self.type = type -- shunt/quicktype.yue:1002
    end, -- shunt/quicktype.yue:1001
    __base = _base_0, -- shunt/quicktype.yue:1001
    __name = "Remainder" -- shunt/quicktype.yue:1001
  }, { -- shunt/quicktype.yue:1001
    __index = _base_0, -- shunt/quicktype.yue:1001
    __call = function(cls, ...) -- shunt/quicktype.yue:1001
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:1001
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:1001
      return _self_0 -- shunt/quicktype.yue:1001
    end -- shunt/quicktype.yue:1001
  }) -- shunt/quicktype.yue:1001
  _base_0.__class = _class_0 -- shunt/quicktype.yue:1001
  Remainder = _class_0 -- shunt/quicktype.yue:1001
end -- shunt/quicktype.yue:1008
do -- shunt/quicktype.yue:1010
  local _class_0 -- shunt/quicktype.yue:1010
  local _base_0 = { -- shunt/quicktype.yue:1010
    __tostring = function(self) -- shunt/quicktype.yue:1015
      return table.concat((function() -- shunt/quicktype.yue:1016
        local _accum_0 = { } -- shunt/quicktype.yue:1016
        local _len_0 = 1 -- shunt/quicktype.yue:1016
        local _list_0 = self.types -- shunt/quicktype.yue:1016
        for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:1016
          local ty = _list_0[_index_0] -- shunt/quicktype.yue:1016
          _accum_0[_len_0] = tostring(ty) -- shunt/quicktype.yue:1016
          _len_0 = _len_0 + 1 -- shunt/quicktype.yue:1016
        end -- shunt/quicktype.yue:1016
        return _accum_0 -- shunt/quicktype.yue:1016
      end)(), '|') -- shunt/quicktype.yue:1016
    end, -- shunt/quicktype.yue:1018
    checker = function(self, checker_builder) -- shunt/quicktype.yue:1018
      if checker_builder == nil then -- shunt/quicktype.yue:1018
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:1018
      end -- shunt/quicktype.yue:1018
      checker_builder:add(C_PUSH_UNION_CTX, self) -- shunt/quicktype.yue:1020
      local next_variant_jump = checker_builder:add_with_unresolved_target(C_SET_UNION_BAIL_TARGET) -- shunt/quicktype.yue:1021
      self.types[1]:checker(checker_builder) -- shunt/quicktype.yue:1022
      local ok_jumps = { } -- shunt/quicktype.yue:1024
      do -- shunt/quicktype.yue:1025
        local _list_0 = self.types -- shunt/quicktype.yue:1025
        for _index_0 = 2, #_list_0 do -- shunt/quicktype.yue:1025
          local ty = _list_0[_index_0] -- shunt/quicktype.yue:1025
          ok_jumps[#ok_jumps + 1] = checker_builder:add_with_unresolved_target(C_JMP) -- shunt/quicktype.yue:1026
          next_variant_jump:resolve_here() -- shunt/quicktype.yue:1028
          checker_builder:add(C_CLEAR_BAILING) -- shunt/quicktype.yue:1029
          next_variant_jump = checker_builder:add_with_unresolved_target(C_SET_UNION_BAIL_TARGET) -- shunt/quicktype.yue:1030
          ty:checker(checker_builder) -- shunt/quicktype.yue:1031
        end -- shunt/quicktype.yue:1031
      end -- shunt/quicktype.yue:1031
      next_variant_jump:resolve_here() -- shunt/quicktype.yue:1033
      for _index_0 = 1, #ok_jumps do -- shunt/quicktype.yue:1034
        local ok_jump = ok_jumps[_index_0] -- shunt/quicktype.yue:1034
        ok_jump:resolve_here() -- shunt/quicktype.yue:1035
      end -- shunt/quicktype.yue:1035
      checker_builder:add(C_POP_UNION_CTX) -- shunt/quicktype.yue:1036
      return checker_builder -- shunt/quicktype.yue:1019
    end -- shunt/quicktype.yue:1010
  } -- shunt/quicktype.yue:1010
  local _list_0 = { -- shunt/quicktype.yue:1010
    Is -- shunt/quicktype.yue:1010
  } -- shunt/quicktype.yue:1010
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:1036
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:1010
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:1010
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:1036
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:1010
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:1010
      end -- shunt/quicktype.yue:1010
    end -- shunt/quicktype.yue:1036
  end -- shunt/quicktype.yue:1036
  if _base_0.__index == nil then -- shunt/quicktype.yue:1010
    _base_0.__index = _base_0 -- shunt/quicktype.yue:1010
  end -- shunt/quicktype.yue:1036
  _class_0 = setmetatable({ -- shunt/quicktype.yue:1010
    __init = function(self, types) -- shunt/quicktype.yue:1011
      self.types = types -- shunt/quicktype.yue:1011
      if #self.types <= 1 then -- shunt/quicktype.yue:1012
        return error('internal error: disjunction has too few elements') -- shunt/quicktype.yue:1013
      end -- shunt/quicktype.yue:1012
    end, -- shunt/quicktype.yue:1010
    __base = _base_0, -- shunt/quicktype.yue:1010
    __name = "Disjunction" -- shunt/quicktype.yue:1010
  }, { -- shunt/quicktype.yue:1010
    __index = _base_0, -- shunt/quicktype.yue:1010
    __call = function(cls, ...) -- shunt/quicktype.yue:1010
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:1010
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:1010
      return _self_0 -- shunt/quicktype.yue:1010
    end -- shunt/quicktype.yue:1010
  }) -- shunt/quicktype.yue:1010
  _base_0.__class = _class_0 -- shunt/quicktype.yue:1010
  Disjunction = _class_0 -- shunt/quicktype.yue:1010
end -- shunt/quicktype.yue:1036
do -- shunt/quicktype.yue:1038
  local _class_0 -- shunt/quicktype.yue:1038
  local _base_0 = { -- shunt/quicktype.yue:1038
    __tostring = function(self) -- shunt/quicktype.yue:1041
      return table.concat((function() -- shunt/quicktype.yue:1042
        local _accum_0 = { } -- shunt/quicktype.yue:1042
        local _len_0 = 1 -- shunt/quicktype.yue:1042
        local _list_0 = self.types -- shunt/quicktype.yue:1042
        for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:1042
          local ty = _list_0[_index_0] -- shunt/quicktype.yue:1042
          _accum_0[_len_0] = tostring(ty) -- shunt/quicktype.yue:1042
          _len_0 = _len_0 + 1 -- shunt/quicktype.yue:1042
        end -- shunt/quicktype.yue:1042
        return _accum_0 -- shunt/quicktype.yue:1042
      end)(), '+') -- shunt/quicktype.yue:1042
    end, -- shunt/quicktype.yue:1044
    checker = function(self, checker_builder) -- shunt/quicktype.yue:1044
      if checker_builder == nil then -- shunt/quicktype.yue:1044
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:1044
      end -- shunt/quicktype.yue:1044
      local _list_0 = self.types -- shunt/quicktype.yue:1046
      for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:1046
        local ty = _list_0[_index_0] -- shunt/quicktype.yue:1046
        ty:checker(checker_builder) -- shunt/quicktype.yue:1047
      end -- shunt/quicktype.yue:1047
      return checker_builder -- shunt/quicktype.yue:1045
    end -- shunt/quicktype.yue:1038
  } -- shunt/quicktype.yue:1038
  local _list_0 = { -- shunt/quicktype.yue:1038
    Is -- shunt/quicktype.yue:1038
  } -- shunt/quicktype.yue:1038
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:1047
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:1038
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:1038
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:1047
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:1038
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:1038
      end -- shunt/quicktype.yue:1038
    end -- shunt/quicktype.yue:1047
  end -- shunt/quicktype.yue:1047
  if _base_0.__index == nil then -- shunt/quicktype.yue:1038
    _base_0.__index = _base_0 -- shunt/quicktype.yue:1038
  end -- shunt/quicktype.yue:1047
  _class_0 = setmetatable({ -- shunt/quicktype.yue:1038
    __init = function(self, types) -- shunt/quicktype.yue:1039
      self.types = types -- shunt/quicktype.yue:1039
    end, -- shunt/quicktype.yue:1038
    __base = _base_0, -- shunt/quicktype.yue:1038
    __name = "Conjunction" -- shunt/quicktype.yue:1038
  }, { -- shunt/quicktype.yue:1038
    __index = _base_0, -- shunt/quicktype.yue:1038
    __call = function(cls, ...) -- shunt/quicktype.yue:1038
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:1038
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:1038
      return _self_0 -- shunt/quicktype.yue:1038
    end -- shunt/quicktype.yue:1038
  }) -- shunt/quicktype.yue:1038
  _base_0.__class = _class_0 -- shunt/quicktype.yue:1038
  Conjunction = _class_0 -- shunt/quicktype.yue:1038
end -- shunt/quicktype.yue:1047
do -- shunt/quicktype.yue:1049
  local _class_0 -- shunt/quicktype.yue:1049
  local _base_0 = { -- shunt/quicktype.yue:1049
    add = function(self, op, arg) -- shunt/quicktype.yue:1054
      if arg == nil then -- shunt/quicktype.yue:1054
        arg = '_' -- shunt/quicktype.yue:1054
      end -- shunt/quicktype.yue:1054
      do -- shunt/quicktype.yue:1055
        local _obj_0 = self.instructions -- shunt/quicktype.yue:1055
        _obj_0[#_obj_0 + 1] = op -- shunt/quicktype.yue:1055
      end -- shunt/quicktype.yue:1055
      do -- shunt/quicktype.yue:1056
        local _obj_0 = self.instructions -- shunt/quicktype.yue:1056
        _obj_0[#_obj_0 + 1] = arg -- shunt/quicktype.yue:1056
      end -- shunt/quicktype.yue:1056
    end, -- shunt/quicktype.yue:1058
    add_labelled = function(self, op, arg) -- shunt/quicktype.yue:1058
      if arg == nil then -- shunt/quicktype.yue:1058
        arg = '_' -- shunt/quicktype.yue:1058
      end -- shunt/quicktype.yue:1058
      local label = self:make_label() -- shunt/quicktype.yue:1059
      self:add(op, arg) -- shunt/quicktype.yue:1060
      return label -- shunt/quicktype.yue:1061
    end, -- shunt/quicktype.yue:1063
    add_with_unresolved_target = function(self, op) -- shunt/quicktype.yue:1063
      local label = self:make_label() -- shunt/quicktype.yue:1064
      self:add(op, LABEL_PLACEHOLDER) -- shunt/quicktype.yue:1065
      return label -- shunt/quicktype.yue:1066
    end, -- shunt/quicktype.yue:1068
    make_label = function(self) -- shunt/quicktype.yue:1068
      return Label(self.instructions) -- shunt/quicktype.yue:1069
    end, -- shunt/quicktype.yue:1071
    build = function(self) -- shunt/quicktype.yue:1071
      self:validate() -- shunt/quicktype.yue:1072
      return self.instructions -- shunt/quicktype.yue:1073
    end, -- shunt/quicktype.yue:1075
    validate = function(self) -- shunt/quicktype.yue:1075
      local _list_0 = self.instructions -- shunt/quicktype.yue:1076
      for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:1076
        local instruction = _list_0[_index_0] -- shunt/quicktype.yue:1076
        if instruction == LABEL_PLACEHOLDER then -- shunt/quicktype.yue:1077
          error("unresolved placeholder in check program:\n" .. tostring(repr(self.instructions))) -- shunt/quicktype.yue:1078
        end -- shunt/quicktype.yue:1077
      end -- shunt/quicktype.yue:1078
    end, -- shunt/quicktype.yue:1080
    already_building = function(self, user_type) -- shunt/quicktype.yue:1080
      local _list_0 = self.user_type_stack -- shunt/quicktype.yue:1081
      for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:1081
        local user_type_being_checked = _list_0[_index_0] -- shunt/quicktype.yue:1081
        if user_type.name == user_type_being_checked.name then -- shunt/quicktype.yue:1082
          return true -- shunt/quicktype.yue:1083
        end -- shunt/quicktype.yue:1082
      end -- shunt/quicktype.yue:1083
      return false -- shunt/quicktype.yue:1084
    end, -- shunt/quicktype.yue:1086
    push_building = function(self, user_type) -- shunt/quicktype.yue:1086
      do -- shunt/quicktype.yue:1087
        local _obj_0 = self.user_type_stack -- shunt/quicktype.yue:1087
        _obj_0[#_obj_0 + 1] = user_type -- shunt/quicktype.yue:1087
      end -- shunt/quicktype.yue:1087
    end, -- shunt/quicktype.yue:1089
    pop_building = function(self, user_type) -- shunt/quicktype.yue:1089
      if self.user_type_stack[#self.user_type_stack] ~= user_type then -- shunt/quicktype.yue:1090
        error("internal error: user type stack mismanaged, expected " .. tostring(user_type.name) .. " at the top of " .. tostring(repr(self.user_type_stack))) -- shunt/quicktype.yue:1091
      end -- shunt/quicktype.yue:1090
      self.user_type_stack[#self.user_type_stack] = nil -- shunt/quicktype.yue:1092
    end -- shunt/quicktype.yue:1049
  } -- shunt/quicktype.yue:1049
  if _base_0.__index == nil then -- shunt/quicktype.yue:1049
    _base_0.__index = _base_0 -- shunt/quicktype.yue:1049
  end -- shunt/quicktype.yue:1092
  _class_0 = setmetatable({ -- shunt/quicktype.yue:1049
    __init = function(self) -- shunt/quicktype.yue:1050
      self.instructions = { } -- shunt/quicktype.yue:1051
      self.user_type_stack = { } -- shunt/quicktype.yue:1052
    end, -- shunt/quicktype.yue:1049
    __base = _base_0, -- shunt/quicktype.yue:1049
    __name = "CheckerBuilder" -- shunt/quicktype.yue:1049
  }, { -- shunt/quicktype.yue:1049
    __index = _base_0, -- shunt/quicktype.yue:1049
    __call = function(cls, ...) -- shunt/quicktype.yue:1049
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:1049
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:1049
      return _self_0 -- shunt/quicktype.yue:1049
    end -- shunt/quicktype.yue:1049
  }) -- shunt/quicktype.yue:1049
  _base_0.__class = _class_0 -- shunt/quicktype.yue:1049
  CheckerBuilder = _class_0 -- shunt/quicktype.yue:1049
end -- shunt/quicktype.yue:1092
do -- shunt/quicktype.yue:1094
  local _class_0 -- shunt/quicktype.yue:1094
  local _base_0 = { -- shunt/quicktype.yue:1094
    resolve_here = function(self) -- shunt/quicktype.yue:1098
      self.instructions[self.index + 1] = #self.instructions + 1 -- shunt/quicktype.yue:1099
    end -- shunt/quicktype.yue:1094
  } -- shunt/quicktype.yue:1094
  if _base_0.__index == nil then -- shunt/quicktype.yue:1094
    _base_0.__index = _base_0 -- shunt/quicktype.yue:1094
  end -- shunt/quicktype.yue:1099
  _class_0 = setmetatable({ -- shunt/quicktype.yue:1094
    __init = function(self, instructions) -- shunt/quicktype.yue:1095
      self.instructions = instructions -- shunt/quicktype.yue:1095
      self.index = #self.instructions + 1 -- shunt/quicktype.yue:1096
    end, -- shunt/quicktype.yue:1094
    __base = _base_0, -- shunt/quicktype.yue:1094
    __name = "Label" -- shunt/quicktype.yue:1094
  }, { -- shunt/quicktype.yue:1094
    __index = _base_0, -- shunt/quicktype.yue:1094
    __call = function(cls, ...) -- shunt/quicktype.yue:1094
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:1094
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:1094
      return _self_0 -- shunt/quicktype.yue:1094
    end -- shunt/quicktype.yue:1094
  }) -- shunt/quicktype.yue:1094
  _base_0.__class = _class_0 -- shunt/quicktype.yue:1094
  Label = _class_0 -- shunt/quicktype.yue:1094
end -- shunt/quicktype.yue:1099
C_PUSH = setmetatable({ }, { -- shunt/quicktype.yue:1101
  __tostring = function(self) -- shunt/quicktype.yue:1101
    return '<push>' -- shunt/quicktype.yue:1101
  end -- shunt/quicktype.yue:1101
}) -- shunt/quicktype.yue:1101
C_PUSH_METATABLE = setmetatable({ }, { -- shunt/quicktype.yue:1102
  __tostring = function(self) -- shunt/quicktype.yue:1102
    return '<push-metatable>' -- shunt/quicktype.yue:1102
  end -- shunt/quicktype.yue:1102
}) -- shunt/quicktype.yue:1102
C_POP = setmetatable({ }, { -- shunt/quicktype.yue:1103
  __tostring = function(self) -- shunt/quicktype.yue:1103
    return '<pop>' -- shunt/quicktype.yue:1103
  end -- shunt/quicktype.yue:1103
}) -- shunt/quicktype.yue:1103
C_ASSERT_NON_NIL = setmetatable({ }, { -- shunt/quicktype.yue:1104
  __tostring = function(self) -- shunt/quicktype.yue:1104
    return '<assert-non-nil>' -- shunt/quicktype.yue:1104
  end -- shunt/quicktype.yue:1104
}) -- shunt/quicktype.yue:1104
C_ASSERT_PRIMITIVE = setmetatable({ }, { -- shunt/quicktype.yue:1105
  __tostring = function(self) -- shunt/quicktype.yue:1105
    return '<assert-primitive>' -- shunt/quicktype.yue:1105
  end -- shunt/quicktype.yue:1105
}) -- shunt/quicktype.yue:1105
C_ASSERT_TABLE_LIKE = setmetatable({ }, { -- shunt/quicktype.yue:1106
  __tostring = function(self) -- shunt/quicktype.yue:1106
    return '<assert-table-like>' -- shunt/quicktype.yue:1106
  end -- shunt/quicktype.yue:1106
}) -- shunt/quicktype.yue:1106
C_ASSERT_TRUTHY = setmetatable({ }, { -- shunt/quicktype.yue:1107
  __tostring = function(self) -- shunt/quicktype.yue:1107
    return '<assert-truthy>' -- shunt/quicktype.yue:1107
  end -- shunt/quicktype.yue:1107
}) -- shunt/quicktype.yue:1107
C_ASSERT_LEN = setmetatable({ }, { -- shunt/quicktype.yue:1108
  __tostring = function(self) -- shunt/quicktype.yue:1108
    return '<assert-len>' -- shunt/quicktype.yue:1108
  end -- shunt/quicktype.yue:1108
}) -- shunt/quicktype.yue:1108
C_ASSERT_EQ = setmetatable({ }, { -- shunt/quicktype.yue:1109
  __tostring = function(self) -- shunt/quicktype.yue:1109
    return '<assert-eq>' -- shunt/quicktype.yue:1109
  end -- shunt/quicktype.yue:1109
}) -- shunt/quicktype.yue:1109
C_ASSERT_NEVER = setmetatable({ }, { -- shunt/quicktype.yue:1110
  __tostring = function(self) -- shunt/quicktype.yue:1110
    return '<assert-never>' -- shunt/quicktype.yue:1110
  end -- shunt/quicktype.yue:1110
}) -- shunt/quicktype.yue:1110
C_GET_FIELD = setmetatable({ }, { -- shunt/quicktype.yue:1111
  __tostring = function(self) -- shunt/quicktype.yue:1111
    return '<field>' -- shunt/quicktype.yue:1111
  end -- shunt/quicktype.yue:1111
}) -- shunt/quicktype.yue:1111
C_INCR = setmetatable({ }, { -- shunt/quicktype.yue:1112
  __tostring = function(self) -- shunt/quicktype.yue:1112
    return '<incr>' -- shunt/quicktype.yue:1112
  end -- shunt/quicktype.yue:1112
}) -- shunt/quicktype.yue:1112
C_DECR = setmetatable({ }, { -- shunt/quicktype.yue:1113
  __tostring = function(self) -- shunt/quicktype.yue:1113
    return '<decr>' -- shunt/quicktype.yue:1113
  end -- shunt/quicktype.yue:1113
}) -- shunt/quicktype.yue:1113
C_NEXT = setmetatable({ }, { -- shunt/quicktype.yue:1114
  __tostring = function(self) -- shunt/quicktype.yue:1114
    return '<next>' -- shunt/quicktype.yue:1114
  end -- shunt/quicktype.yue:1114
}) -- shunt/quicktype.yue:1114
C_JMP = setmetatable({ }, { -- shunt/quicktype.yue:1115
  __tostring = function(self) -- shunt/quicktype.yue:1115
    return '<jmp>' -- shunt/quicktype.yue:1115
  end -- shunt/quicktype.yue:1115
}) -- shunt/quicktype.yue:1115
C_JMP_IF_NIL = setmetatable({ }, { -- shunt/quicktype.yue:1116
  __tostring = function(self) -- shunt/quicktype.yue:1116
    return '<jnil>' -- shunt/quicktype.yue:1116
  end -- shunt/quicktype.yue:1116
}) -- shunt/quicktype.yue:1116
C_PUSH_CHECKER = setmetatable({ }, { -- shunt/quicktype.yue:1117
  __tostring = function(self) -- shunt/quicktype.yue:1117
    return '<push-checker>' -- shunt/quicktype.yue:1117
  end -- shunt/quicktype.yue:1117
}) -- shunt/quicktype.yue:1117
C_PUSH_UNION_CTX = setmetatable({ }, { -- shunt/quicktype.yue:1118
  __tostring = function(self) -- shunt/quicktype.yue:1118
    return '<push-union-ctx>' -- shunt/quicktype.yue:1118
  end -- shunt/quicktype.yue:1118
}) -- shunt/quicktype.yue:1118
C_CLEAR_BAILING = setmetatable({ }, { -- shunt/quicktype.yue:1119
  __tostring = function(self) -- shunt/quicktype.yue:1119
    return '<clear-bailing>' -- shunt/quicktype.yue:1119
  end -- shunt/quicktype.yue:1119
}) -- shunt/quicktype.yue:1119
C_SET_UNION_BAIL_TARGET = setmetatable({ }, { -- shunt/quicktype.yue:1120
  __tostring = function(self) -- shunt/quicktype.yue:1120
    return '<set-union-bail-target>' -- shunt/quicktype.yue:1120
  end -- shunt/quicktype.yue:1120
}) -- shunt/quicktype.yue:1120
C_POP_UNION_CTX = setmetatable({ }, { -- shunt/quicktype.yue:1121
  __tostring = function(self) -- shunt/quicktype.yue:1121
    return '<pop-union-ctx>' -- shunt/quicktype.yue:1121
  end -- shunt/quicktype.yue:1121
}) -- shunt/quicktype.yue:1121
V_NIL = setmetatable({ }, { -- shunt/quicktype.yue:1122
  __tostring = function(self) -- shunt/quicktype.yue:1122
    return 'nil' -- shunt/quicktype.yue:1122
  end -- shunt/quicktype.yue:1122
}) -- shunt/quicktype.yue:1122
checker_program_repr = function(checker) -- shunt/quicktype.yue:1124
  return table.concat((function() -- shunt/quicktype.yue:1125
    local _accum_0 = { } -- shunt/quicktype.yue:1125
    local _len_0 = 1 -- shunt/quicktype.yue:1125
    for i = 1, #checker, 2 do -- shunt/quicktype.yue:1125
      _accum_0[_len_0] = tostring(i) .. ":\t" .. tostring(repr(checker[i])) .. "\t" .. tostring(checker[i + 1]) -- shunt/quicktype.yue:1125
      _len_0 = _len_0 + 1 -- shunt/quicktype.yue:1125
    end -- shunt/quicktype.yue:1125
    return _accum_0 -- shunt/quicktype.yue:1125
  end)(), '\n\t') -- shunt/quicktype.yue:1125
end -- shunt/quicktype.yue:1124
LABEL_PLACEHOLDER = setmetatable({ }, { -- shunt/quicktype.yue:1127
  __tostring = function(self) -- shunt/quicktype.yue:1127
    return '<LABEL-PLACEHOLDER>' -- shunt/quicktype.yue:1127
  end -- shunt/quicktype.yue:1127
}) -- shunt/quicktype.yue:1127
MAX_CHECKER_DEPTH = 1000 -- shunt/quicktype.yue:1129
_module_0["MAX_CHECKER_DEPTH"] = MAX_CHECKER_DEPTH -- shunt/quicktype.yue:1129
stack_size = 0 -- shunt/quicktype.yue:1130
stack = { } -- shunt/quicktype.yue:1131
keys_used = { } -- shunt/quicktype.yue:1132
num_unions = 0 -- shunt/quicktype.yue:1133
union_depths = { } -- shunt/quicktype.yue:1134
union_bail_jumps = { } -- shunt/quicktype.yue:1135
root_union = nil -- shunt/quicktype.yue:1136
num_running_checkers = 0 -- shunt/quicktype.yue:1137
instruction_counts = { } -- shunt/quicktype.yue:1138
check = function(check_prog, value, root) -- shunt/quicktype.yue:1163
  if root == nil then -- shunt/quicktype.yue:1163
    root = true -- shunt/quicktype.yue:1163
  end -- shunt/quicktype.yue:1163
  if root then -- shunt/quicktype.yue:1170
    stack_size = 1 -- shunt/quicktype.yue:1172
    stack[1] = value -- shunt/quicktype.yue:1173
    num_running_checkers = 1 -- shunt/quicktype.yue:1174
    root_union = 0 -- shunt/quicktype.yue:1175
    num_unions = 0 -- shunt/quicktype.yue:1176
    local initial_unions = 0 -- shunt/quicktype.yue:1177
  end -- shunt/quicktype.yue:1170
  local initial_stack_size = stack_size -- shunt/quicktype.yue:1178
  local initial_num_running_checkers = num_running_checkers -- shunt/quicktype.yue:1179
  local initial_unions = num_unions -- shunt/quicktype.yue:1180
  if num_running_checkers >= MAX_CHECKER_DEPTH then -- shunt/quicktype.yue:1182
    return "type checker recursed too many times (" .. tostring(num_running_checkers) .. " times). If this is okay, increase the MAX_CHECKER_DEPTH" -- shunt/quicktype.yue:1183
  end -- shunt/quicktype.yue:1182
  do -- shunt/quicktype.yue:1187
    local pc -- shunt/quicktype.yue:1188
    local bailing = false -- shunt/quicktype.yue:1189
    pc = -1 -- shunt/quicktype.yue:1191
    while true do -- shunt/quicktype.yue:1192
      pc = pc + 2 -- shunt/quicktype.yue:1193
      local instruction = check_prog[pc] -- shunt/quicktype.yue:1194
      if instruction == nil then -- shunt/quicktype.yue:1195
        break -- shunt/quicktype.yue:1196
      end -- shunt/quicktype.yue:1195
      if COLLECT_STATS then -- shunt/quicktype.yue:1198
        do -- shunt/quicktype.yue:1199
          local v = instruction_counts[instruction] -- shunt/quicktype.yue:1199
          if v then -- shunt/quicktype.yue:1199
            instruction_counts[instruction] = v + 1 -- shunt/quicktype.yue:1200
          else -- shunt/quicktype.yue:1202
            instruction_counts[instruction] = 1 -- shunt/quicktype.yue:1202
          end -- shunt/quicktype.yue:1199
        end -- shunt/quicktype.yue:1199
      end -- shunt/quicktype.yue:1198
      if C_PUSH == instruction then -- shunt/quicktype.yue:1208
        local arg = check_prog[pc + 1] -- shunt/quicktype.yue:1209
        if arg == V_NIL then -- shunt/quicktype.yue:1210
          arg = nil -- shunt/quicktype.yue:1211
        end -- shunt/quicktype.yue:1210
        stack_size = stack_size + 1 -- shunt/quicktype.yue:1212
        stack[stack_size] = arg -- shunt/quicktype.yue:1213
      elseif C_PUSH_METATABLE == instruction then -- shunt/quicktype.yue:1214
        local mt = getmetatable(stack[stack_size]) -- shunt/quicktype.yue:1215
        stack_size = stack_size + 1 -- shunt/quicktype.yue:1216
        stack[stack_size] = mt -- shunt/quicktype.yue:1217
        keys_used[stack_size] = '<>' -- shunt/quicktype.yue:1218
      elseif C_POP == instruction then -- shunt/quicktype.yue:1219
        stack[stack_size] = nil -- shunt/quicktype.yue:1220
        keys_used[stack_size] = nil -- shunt/quicktype.yue:1221
        stack_size = stack_size - 1 -- shunt/quicktype.yue:1222
      elseif C_ASSERT_NON_NIL == instruction then -- shunt/quicktype.yue:1223
        if stack[stack_size] == nil then -- shunt/quicktype.yue:1224
          local msg -- shunt/quicktype.yue:1225
          if num_unions == 0 then -- shunt/quicktype.yue:1225
            local pretty_key_parts = { } -- shunt/quicktype.yue:1225
            for i = 1, stack_size do -- shunt/quicktype.yue:1225
              pretty_key_parts[#pretty_key_parts + 1] = keys_used[i] -- shunt/quicktype.yue:1225
            end -- shunt/quicktype.yue:1225
            if #pretty_key_parts > 0 then -- shunt/quicktype.yue:1225
              local pretty_key = "(at field ." .. tostring(table.concat(pretty_key_parts, ".")) .. ")" -- shunt/quicktype.yue:1225
              msg = "incorrect type: expected some but got nil" .. ' ' .. pretty_key -- shunt/quicktype.yue:1225
            else -- shunt/quicktype.yue:1225
              msg = "incorrect type: expected some but got nil" -- shunt/quicktype.yue:1225
            end -- shunt/quicktype.yue:1225
          else -- shunt/quicktype.yue:1225
            msg = nil -- shunt/quicktype.yue:1225
          end -- shunt/quicktype.yue:1225
          local new_size -- shunt/quicktype.yue:1225
          do -- shunt/quicktype.yue:1225
            local _exp_0 = union_depths[num_unions] -- shunt/quicktype.yue:1225
            if _exp_0 ~= nil then -- shunt/quicktype.yue:1225
              new_size = _exp_0 -- shunt/quicktype.yue:1225
            else -- shunt/quicktype.yue:1225
              new_size = 0 -- shunt/quicktype.yue:1225
            end -- shunt/quicktype.yue:1225
          end -- shunt/quicktype.yue:1225
          for i = new_size + 1, stack_size do -- shunt/quicktype.yue:1225
            stack[i] = nil -- shunt/quicktype.yue:1225
          end -- shunt/quicktype.yue:1225
          stack_size = new_size -- shunt/quicktype.yue:1225
          if num_unions == initial_unions then -- shunt/quicktype.yue:1225
            return msg -- shunt/quicktype.yue:1225
          end -- shunt/quicktype.yue:1225
          pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1225
          bailing = true -- shunt/quicktype.yue:1225
        end -- shunt/quicktype.yue:1224
      elseif C_ASSERT_PRIMITIVE == instruction then -- shunt/quicktype.yue:1226
        local ty = type(stack[stack_size]) -- shunt/quicktype.yue:1227
        local arg = check_prog[pc + 1] -- shunt/quicktype.yue:1228
        if ty ~= arg then -- shunt/quicktype.yue:1229
          local msg -- shunt/quicktype.yue:1230
          if num_unions == 0 then -- shunt/quicktype.yue:1230
            local pretty_key_parts = { } -- shunt/quicktype.yue:1230
            for i = 1, stack_size do -- shunt/quicktype.yue:1230
              pretty_key_parts[#pretty_key_parts + 1] = keys_used[i] -- shunt/quicktype.yue:1230
            end -- shunt/quicktype.yue:1230
            if #pretty_key_parts > 0 then -- shunt/quicktype.yue:1230
              local pretty_key = "(at field ." .. tostring(table.concat(pretty_key_parts, ".")) .. ")" -- shunt/quicktype.yue:1230
              msg = "incorrect type: expected " .. tostring(arg) .. " but got " .. tostring(ty) .. " (" .. tostring(repr(stack[stack_size])) .. ")" .. ' ' .. pretty_key -- shunt/quicktype.yue:1230
            else -- shunt/quicktype.yue:1230
              msg = "incorrect type: expected " .. tostring(arg) .. " but got " .. tostring(ty) .. " (" .. tostring(repr(stack[stack_size])) .. ")" -- shunt/quicktype.yue:1230
            end -- shunt/quicktype.yue:1230
          else -- shunt/quicktype.yue:1230
            msg = nil -- shunt/quicktype.yue:1230
          end -- shunt/quicktype.yue:1230
          local new_size -- shunt/quicktype.yue:1230
          do -- shunt/quicktype.yue:1230
            local _exp_0 = union_depths[num_unions] -- shunt/quicktype.yue:1230
            if _exp_0 ~= nil then -- shunt/quicktype.yue:1230
              new_size = _exp_0 -- shunt/quicktype.yue:1230
            else -- shunt/quicktype.yue:1230
              new_size = 0 -- shunt/quicktype.yue:1230
            end -- shunt/quicktype.yue:1230
          end -- shunt/quicktype.yue:1230
          for i = new_size + 1, stack_size do -- shunt/quicktype.yue:1230
            stack[i] = nil -- shunt/quicktype.yue:1230
          end -- shunt/quicktype.yue:1230
          stack_size = new_size -- shunt/quicktype.yue:1230
          if num_unions == initial_unions then -- shunt/quicktype.yue:1230
            return msg -- shunt/quicktype.yue:1230
          end -- shunt/quicktype.yue:1230
          pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1230
          bailing = true -- shunt/quicktype.yue:1230
        end -- shunt/quicktype.yue:1229
      elseif C_ASSERT_TABLE_LIKE == instruction then -- shunt/quicktype.yue:1231
        value = stack[stack_size] -- shunt/quicktype.yue:1232
        local ty = type(value) -- shunt/quicktype.yue:1233
        if 'table' ~= ty and 'string' ~= ty and (not (getmetatable(value) ~= nil) or not (getmetatable(value).__index ~= nil)) then -- shunt/quicktype.yue:1234
          local msg -- shunt/quicktype.yue:1237
          if num_unions == 0 then -- shunt/quicktype.yue:1237
            local pretty_key_parts = { } -- shunt/quicktype.yue:1237
            for i = 1, stack_size do -- shunt/quicktype.yue:1237
              pretty_key_parts[#pretty_key_parts + 1] = keys_used[i] -- shunt/quicktype.yue:1237
            end -- shunt/quicktype.yue:1237
            if #pretty_key_parts > 0 then -- shunt/quicktype.yue:1237
              local pretty_key = "(at field ." .. tostring(table.concat(pretty_key_parts, ".")) .. ")" -- shunt/quicktype.yue:1237
              msg = "incorrect type: expected indexable but got " .. tostring(ty) .. ' ' .. pretty_key -- shunt/quicktype.yue:1237
            else -- shunt/quicktype.yue:1237
              msg = "incorrect type: expected indexable but got " .. tostring(ty) -- shunt/quicktype.yue:1237
            end -- shunt/quicktype.yue:1237
          else -- shunt/quicktype.yue:1237
            msg = nil -- shunt/quicktype.yue:1237
          end -- shunt/quicktype.yue:1237
          local new_size -- shunt/quicktype.yue:1237
          do -- shunt/quicktype.yue:1237
            local _exp_0 = union_depths[num_unions] -- shunt/quicktype.yue:1237
            if _exp_0 ~= nil then -- shunt/quicktype.yue:1237
              new_size = _exp_0 -- shunt/quicktype.yue:1237
            else -- shunt/quicktype.yue:1237
              new_size = 0 -- shunt/quicktype.yue:1237
            end -- shunt/quicktype.yue:1237
          end -- shunt/quicktype.yue:1237
          for i = new_size + 1, stack_size do -- shunt/quicktype.yue:1237
            stack[i] = nil -- shunt/quicktype.yue:1237
          end -- shunt/quicktype.yue:1237
          stack_size = new_size -- shunt/quicktype.yue:1237
          if num_unions == initial_unions then -- shunt/quicktype.yue:1237
            return msg -- shunt/quicktype.yue:1237
          end -- shunt/quicktype.yue:1237
          pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1237
          bailing = true -- shunt/quicktype.yue:1237
        end -- shunt/quicktype.yue:1234
      elseif C_ASSERT_TRUTHY == instruction then -- shunt/quicktype.yue:1238
        if not stack[stack_size] then -- shunt/quicktype.yue:1239
          local msg -- shunt/quicktype.yue:1240
          if num_unions == 0 then -- shunt/quicktype.yue:1240
            local pretty_key_parts = { } -- shunt/quicktype.yue:1240
            for i = 1, stack_size do -- shunt/quicktype.yue:1240
              pretty_key_parts[#pretty_key_parts + 1] = keys_used[i] -- shunt/quicktype.yue:1240
            end -- shunt/quicktype.yue:1240
            if #pretty_key_parts > 0 then -- shunt/quicktype.yue:1240
              local pretty_key = "(at field ." .. tostring(table.concat(pretty_key_parts, ".")) .. ")" -- shunt/quicktype.yue:1240
              msg = "incorrect type: expected a truthy value but got " .. tostring(stack[stack_size]) .. ' ' .. pretty_key -- shunt/quicktype.yue:1240
            else -- shunt/quicktype.yue:1240
              msg = "incorrect type: expected a truthy value but got " .. tostring(stack[stack_size]) -- shunt/quicktype.yue:1240
            end -- shunt/quicktype.yue:1240
          else -- shunt/quicktype.yue:1240
            msg = nil -- shunt/quicktype.yue:1240
          end -- shunt/quicktype.yue:1240
          local new_size -- shunt/quicktype.yue:1240
          do -- shunt/quicktype.yue:1240
            local _exp_0 = union_depths[num_unions] -- shunt/quicktype.yue:1240
            if _exp_0 ~= nil then -- shunt/quicktype.yue:1240
              new_size = _exp_0 -- shunt/quicktype.yue:1240
            else -- shunt/quicktype.yue:1240
              new_size = 0 -- shunt/quicktype.yue:1240
            end -- shunt/quicktype.yue:1240
          end -- shunt/quicktype.yue:1240
          for i = new_size + 1, stack_size do -- shunt/quicktype.yue:1240
            stack[i] = nil -- shunt/quicktype.yue:1240
          end -- shunt/quicktype.yue:1240
          stack_size = new_size -- shunt/quicktype.yue:1240
          if num_unions == initial_unions then -- shunt/quicktype.yue:1240
            return msg -- shunt/quicktype.yue:1240
          end -- shunt/quicktype.yue:1240
          pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1240
          bailing = true -- shunt/quicktype.yue:1240
        end -- shunt/quicktype.yue:1239
      elseif C_ASSERT_LEN == instruction then -- shunt/quicktype.yue:1241
        local actual_len = #stack[stack_size - 1] -- shunt/quicktype.yue:1242
        local counted_len = stack[stack_size] -- shunt/quicktype.yue:1243
        if counted_len ~= actual_len then -- shunt/quicktype.yue:1244
          local msg -- shunt/quicktype.yue:1245
          if num_unions == 0 then -- shunt/quicktype.yue:1245
            local pretty_key_parts = { } -- shunt/quicktype.yue:1245
            for i = 1, stack_size do -- shunt/quicktype.yue:1245
              pretty_key_parts[#pretty_key_parts + 1] = keys_used[i] -- shunt/quicktype.yue:1245
            end -- shunt/quicktype.yue:1245
            if #pretty_key_parts > 0 then -- shunt/quicktype.yue:1245
              local pretty_key = "(at field ." .. tostring(table.concat(pretty_key_parts, ".")) .. ")" -- shunt/quicktype.yue:1245
              msg = "incorrect type: expected array but got table (" .. tostring(repr(stack[stack_size])) .. ")" .. ' ' .. pretty_key -- shunt/quicktype.yue:1245
            else -- shunt/quicktype.yue:1245
              msg = "incorrect type: expected array but got table (" .. tostring(repr(stack[stack_size])) .. ")" -- shunt/quicktype.yue:1245
            end -- shunt/quicktype.yue:1245
          else -- shunt/quicktype.yue:1245
            msg = nil -- shunt/quicktype.yue:1245
          end -- shunt/quicktype.yue:1245
          local new_size -- shunt/quicktype.yue:1245
          do -- shunt/quicktype.yue:1245
            local _exp_0 = union_depths[num_unions] -- shunt/quicktype.yue:1245
            if _exp_0 ~= nil then -- shunt/quicktype.yue:1245
              new_size = _exp_0 -- shunt/quicktype.yue:1245
            else -- shunt/quicktype.yue:1245
              new_size = 0 -- shunt/quicktype.yue:1245
            end -- shunt/quicktype.yue:1245
          end -- shunt/quicktype.yue:1245
          for i = new_size + 1, stack_size do -- shunt/quicktype.yue:1245
            stack[i] = nil -- shunt/quicktype.yue:1245
          end -- shunt/quicktype.yue:1245
          stack_size = new_size -- shunt/quicktype.yue:1245
          if num_unions == initial_unions then -- shunt/quicktype.yue:1245
            return msg -- shunt/quicktype.yue:1245
          end -- shunt/quicktype.yue:1245
          pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1245
          bailing = true -- shunt/quicktype.yue:1245
        end -- shunt/quicktype.yue:1244
      elseif C_ASSERT_EQ == instruction then -- shunt/quicktype.yue:1246
        if stack[stack_size] ~= check_prog[pc + 1] then -- shunt/quicktype.yue:1247
          local msg -- shunt/quicktype.yue:1248
          if num_unions == 0 then -- shunt/quicktype.yue:1248
            local pretty_key_parts = { } -- shunt/quicktype.yue:1248
            for i = 1, stack_size do -- shunt/quicktype.yue:1248
              pretty_key_parts[#pretty_key_parts + 1] = keys_used[i] -- shunt/quicktype.yue:1248
            end -- shunt/quicktype.yue:1248
            if #pretty_key_parts > 0 then -- shunt/quicktype.yue:1248
              local pretty_key = "(at field ." .. tostring(table.concat(pretty_key_parts, ".")) .. ")" -- shunt/quicktype.yue:1248
              msg = "incorrect type: expected " .. tostring(type(check_prog[pc + 1])) .. " " .. tostring(repr(check_prog[pc + 1])) .. " but got " .. tostring(repr(stack[stack_size])) .. ' ' .. pretty_key -- shunt/quicktype.yue:1248
            else -- shunt/quicktype.yue:1248
              msg = "incorrect type: expected " .. tostring(type(check_prog[pc + 1])) .. " " .. tostring(repr(check_prog[pc + 1])) .. " but got " .. tostring(repr(stack[stack_size])) -- shunt/quicktype.yue:1248
            end -- shunt/quicktype.yue:1248
          else -- shunt/quicktype.yue:1248
            msg = nil -- shunt/quicktype.yue:1248
          end -- shunt/quicktype.yue:1248
          local new_size -- shunt/quicktype.yue:1248
          do -- shunt/quicktype.yue:1248
            local _exp_0 = union_depths[num_unions] -- shunt/quicktype.yue:1248
            if _exp_0 ~= nil then -- shunt/quicktype.yue:1248
              new_size = _exp_0 -- shunt/quicktype.yue:1248
            else -- shunt/quicktype.yue:1248
              new_size = 0 -- shunt/quicktype.yue:1248
            end -- shunt/quicktype.yue:1248
          end -- shunt/quicktype.yue:1248
          for i = new_size + 1, stack_size do -- shunt/quicktype.yue:1248
            stack[i] = nil -- shunt/quicktype.yue:1248
          end -- shunt/quicktype.yue:1248
          stack_size = new_size -- shunt/quicktype.yue:1248
          if num_unions == initial_unions then -- shunt/quicktype.yue:1248
            return msg -- shunt/quicktype.yue:1248
          end -- shunt/quicktype.yue:1248
          pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1248
          bailing = true -- shunt/quicktype.yue:1248
        end -- shunt/quicktype.yue:1247
      elseif C_ASSERT_NEVER == instruction then -- shunt/quicktype.yue:1249
        local msg -- shunt/quicktype.yue:1250
        if num_unions == 0 then -- shunt/quicktype.yue:1250
          local pretty_key_parts = { } -- shunt/quicktype.yue:1250
          for i = 1, stack_size do -- shunt/quicktype.yue:1250
            pretty_key_parts[#pretty_key_parts + 1] = keys_used[i] -- shunt/quicktype.yue:1250
          end -- shunt/quicktype.yue:1250
          if #pretty_key_parts > 0 then -- shunt/quicktype.yue:1250
            local pretty_key = "(at field ." .. tostring(table.concat(pretty_key_parts, ".")) .. ")" -- shunt/quicktype.yue:1250
            msg = 'never expected a value here' .. ' ' .. pretty_key -- shunt/quicktype.yue:1250
          else -- shunt/quicktype.yue:1250
            msg = 'never expected a value here' -- shunt/quicktype.yue:1250
          end -- shunt/quicktype.yue:1250
        else -- shunt/quicktype.yue:1250
          msg = nil -- shunt/quicktype.yue:1250
        end -- shunt/quicktype.yue:1250
        local new_size -- shunt/quicktype.yue:1250
        do -- shunt/quicktype.yue:1250
          local _exp_0 = union_depths[num_unions] -- shunt/quicktype.yue:1250
          if _exp_0 ~= nil then -- shunt/quicktype.yue:1250
            new_size = _exp_0 -- shunt/quicktype.yue:1250
          else -- shunt/quicktype.yue:1250
            new_size = 0 -- shunt/quicktype.yue:1250
          end -- shunt/quicktype.yue:1250
        end -- shunt/quicktype.yue:1250
        for i = new_size + 1, stack_size do -- shunt/quicktype.yue:1250
          stack[i] = nil -- shunt/quicktype.yue:1250
        end -- shunt/quicktype.yue:1250
        stack_size = new_size -- shunt/quicktype.yue:1250
        if num_unions == initial_unions then -- shunt/quicktype.yue:1250
          return msg -- shunt/quicktype.yue:1250
        end -- shunt/quicktype.yue:1250
        pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1250
        bailing = true -- shunt/quicktype.yue:1250
      elseif C_GET_FIELD == instruction then -- shunt/quicktype.yue:1251
        stack_size = stack_size + 1 -- shunt/quicktype.yue:1252
        stack[stack_size] = stack[stack_size - 2][stack[stack_size - 1]] -- shunt/quicktype.yue:1253
        keys_used[stack_size] = stack[stack_size - 1] -- shunt/quicktype.yue:1254
      elseif C_INCR == instruction then -- shunt/quicktype.yue:1255
        stack[stack_size] = stack[stack_size] + 1 -- shunt/quicktype.yue:1256
      elseif C_DECR == instruction then -- shunt/quicktype.yue:1257
        stack[stack_size] = stack[stack_size] - 1 -- shunt/quicktype.yue:1258
      elseif C_NEXT == instruction then -- shunt/quicktype.yue:1259
        local tab = stack[stack_size - 1] -- shunt/quicktype.yue:1260
        local idx = stack[stack_size] -- shunt/quicktype.yue:1261
        local next_idx -- shunt/quicktype.yue:1262
        next_idx, value = next(tab, idx) -- shunt/quicktype.yue:1262
        stack[stack_size] = next_idx -- shunt/quicktype.yue:1263
        stack_size = stack_size + 1 -- shunt/quicktype.yue:1264
        stack[stack_size] = value -- shunt/quicktype.yue:1265
      elseif C_JMP == instruction then -- shunt/quicktype.yue:1266
        pc = check_prog[pc + 1] - 2 -- shunt/quicktype.yue:1267
      elseif C_JMP_IF_NIL == instruction then -- shunt/quicktype.yue:1268
        if not (stack[stack_size] ~= nil) then -- shunt/quicktype.yue:1269
          pc = check_prog[pc + 1] - 2 -- shunt/quicktype.yue:1270
        end -- shunt/quicktype.yue:1269
      elseif C_PUSH_CHECKER == instruction then -- shunt/quicktype.yue:1271
        local arg = check_prog[pc + 1] -- shunt/quicktype.yue:1272
        local checker = type_checkers[arg] -- shunt/quicktype.yue:1273
        if not (checker ~= nil) then -- shunt/quicktype.yue:1274
          return "cannot typecheck: type " .. tostring(arg) .. " not defined" -- shunt/quicktype.yue:1275
        end -- shunt/quicktype.yue:1274
        if #checker == 2 and #check_prog == 2 then -- shunt/quicktype.yue:1276
          local ccmd, carg = checker[1], checker[2] -- shunt/quicktype.yue:1278
          if check_prog[pc] == ccmd and arg == carg then -- shunt/quicktype.yue:1279
            return "cannot typecheck: type " .. tostring(arg) .. " not defined" -- shunt/quicktype.yue:1280
          end -- shunt/quicktype.yue:1279
        end -- shunt/quicktype.yue:1276
        num_running_checkers = num_running_checkers + 1 -- shunt/quicktype.yue:1282
        local err = check(checker, nil, false) -- shunt/quicktype.yue:1283
        num_running_checkers = num_running_checkers - 1 -- shunt/quicktype.yue:1284
        if (err ~= nil) then -- shunt/quicktype.yue:1286
          if num_unions == 0 then -- shunt/quicktype.yue:1287
            return err -- shunt/quicktype.yue:1288
          end -- shunt/quicktype.yue:1287
          bailing = true -- shunt/quicktype.yue:1290
          pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1291
        end -- shunt/quicktype.yue:1286
      elseif C_CLEAR_BAILING == instruction then -- shunt/quicktype.yue:1292
        bailing = false -- shunt/quicktype.yue:1293
      elseif C_SET_UNION_BAIL_TARGET == instruction then -- shunt/quicktype.yue:1294
        union_bail_jumps[num_unions] = check_prog[pc + 1] -- shunt/quicktype.yue:1295
      elseif C_PUSH_UNION_CTX == instruction then -- shunt/quicktype.yue:1296
        num_unions = num_unions + 1 -- shunt/quicktype.yue:1297
        union_depths[num_unions] = #stack -- shunt/quicktype.yue:1298
        if num_unions == 1 then -- shunt/quicktype.yue:1299
          root_union = check_prog[pc + 1] -- shunt/quicktype.yue:1300
        end -- shunt/quicktype.yue:1299
      elseif C_POP_UNION_CTX == instruction then -- shunt/quicktype.yue:1301
        union_bail_jumps[num_unions] = nil -- shunt/quicktype.yue:1302
        union_depths[num_unions] = nil -- shunt/quicktype.yue:1303
        num_unions = num_unions - 1 -- shunt/quicktype.yue:1304
        local tmp_root_union = root_union -- shunt/quicktype.yue:1306
        if num_unions == 0 then -- shunt/quicktype.yue:1307
          root_union = nil -- shunt/quicktype.yue:1308
        end -- shunt/quicktype.yue:1307
        if bailing then -- shunt/quicktype.yue:1309
          if num_unions == 0 then -- shunt/quicktype.yue:1310
            local msg -- shunt/quicktype.yue:1311
            if num_unions == 0 then -- shunt/quicktype.yue:1311
              local pretty_key_parts = { } -- shunt/quicktype.yue:1311
              for i = 1, stack_size do -- shunt/quicktype.yue:1311
                pretty_key_parts[#pretty_key_parts + 1] = keys_used[i] -- shunt/quicktype.yue:1311
              end -- shunt/quicktype.yue:1311
              if #pretty_key_parts > 0 then -- shunt/quicktype.yue:1311
                local pretty_key = "(at field ." .. tostring(table.concat(pretty_key_parts, ".")) .. ")" -- shunt/quicktype.yue:1311
                msg = "incorrect type: expected " .. tostring(tmp_root_union) .. " but got " .. tostring(type(stack[stack_size])) .. " (" .. tostring(repr(stack[stack_size])) .. ")" .. ' ' .. pretty_key -- shunt/quicktype.yue:1311
              else -- shunt/quicktype.yue:1311
                msg = "incorrect type: expected " .. tostring(tmp_root_union) .. " but got " .. tostring(type(stack[stack_size])) .. " (" .. tostring(repr(stack[stack_size])) .. ")" -- shunt/quicktype.yue:1311
              end -- shunt/quicktype.yue:1311
            else -- shunt/quicktype.yue:1311
              msg = nil -- shunt/quicktype.yue:1311
            end -- shunt/quicktype.yue:1311
            local new_size -- shunt/quicktype.yue:1311
            do -- shunt/quicktype.yue:1311
              local _exp_0 = union_depths[num_unions] -- shunt/quicktype.yue:1311
              if _exp_0 ~= nil then -- shunt/quicktype.yue:1311
                new_size = _exp_0 -- shunt/quicktype.yue:1311
              else -- shunt/quicktype.yue:1311
                new_size = 0 -- shunt/quicktype.yue:1311
              end -- shunt/quicktype.yue:1311
            end -- shunt/quicktype.yue:1311
            for i = new_size + 1, stack_size do -- shunt/quicktype.yue:1311
              stack[i] = nil -- shunt/quicktype.yue:1311
            end -- shunt/quicktype.yue:1311
            stack_size = new_size -- shunt/quicktype.yue:1311
            if num_unions == initial_unions then -- shunt/quicktype.yue:1311
              return msg -- shunt/quicktype.yue:1311
            end -- shunt/quicktype.yue:1311
            pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1311
            bailing = true -- shunt/quicktype.yue:1311
          else -- shunt/quicktype.yue:1313
            local msg -- shunt/quicktype.yue:1313
            if num_unions == 0 then -- shunt/quicktype.yue:1313
              local pretty_key_parts = { } -- shunt/quicktype.yue:1313
              for i = 1, stack_size do -- shunt/quicktype.yue:1313
                pretty_key_parts[#pretty_key_parts + 1] = keys_used[i] -- shunt/quicktype.yue:1313
              end -- shunt/quicktype.yue:1313
              if #pretty_key_parts > 0 then -- shunt/quicktype.yue:1313
                local pretty_key = "(at field ." .. tostring(table.concat(pretty_key_parts, ".")) .. ")" -- shunt/quicktype.yue:1313
                msg = nil .. ' ' .. pretty_key -- shunt/quicktype.yue:1313
              else -- shunt/quicktype.yue:1313
                msg = nil -- shunt/quicktype.yue:1313
              end -- shunt/quicktype.yue:1313
            else -- shunt/quicktype.yue:1313
              msg = nil -- shunt/quicktype.yue:1313
            end -- shunt/quicktype.yue:1313
            local new_size -- shunt/quicktype.yue:1313
            do -- shunt/quicktype.yue:1313
              local _exp_0 = union_depths[num_unions] -- shunt/quicktype.yue:1313
              if _exp_0 ~= nil then -- shunt/quicktype.yue:1313
                new_size = _exp_0 -- shunt/quicktype.yue:1313
              else -- shunt/quicktype.yue:1313
                new_size = 0 -- shunt/quicktype.yue:1313
              end -- shunt/quicktype.yue:1313
            end -- shunt/quicktype.yue:1313
            for i = new_size + 1, stack_size do -- shunt/quicktype.yue:1313
              stack[i] = nil -- shunt/quicktype.yue:1313
            end -- shunt/quicktype.yue:1313
            stack_size = new_size -- shunt/quicktype.yue:1313
            if num_unions == initial_unions then -- shunt/quicktype.yue:1313
              return msg -- shunt/quicktype.yue:1313
            end -- shunt/quicktype.yue:1313
            pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1313
            bailing = true -- shunt/quicktype.yue:1313
          end -- shunt/quicktype.yue:1310
        end -- shunt/quicktype.yue:1309
      else -- shunt/quicktype.yue:1315
        error("internal error: illegal type-checker VM instruction " .. tostring(check_prog[pc]) .. "@" .. tostring(pc)) -- shunt/quicktype.yue:1315
      end -- shunt/quicktype.yue:1315
    end -- shunt/quicktype.yue:1315
    local ending_stack_size = stack_size -- shunt/quicktype.yue:1319
    if root then -- shunt/quicktype.yue:1320
      stack[1] = nil -- shunt/quicktype.yue:1322
      stack_size = 0 -- shunt/quicktype.yue:1323
    end -- shunt/quicktype.yue:1320
    if num_running_checkers ~= initial_num_running_checkers then -- shunt/quicktype.yue:1324
      error("internal error: checker depth incorrectly handled: expected " .. tostring(initial_num_running_checkers) .. " but got " .. tostring(num_running_checkers)) -- shunt/quicktype.yue:1325
    end -- shunt/quicktype.yue:1324
    if ending_stack_size ~= initial_stack_size then -- shunt/quicktype.yue:1326
      error("internal error: value stack incorrectly handled (" .. tostring(repr(check_prog)) .. ")") -- shunt/quicktype.yue:1327
    end -- shunt/quicktype.yue:1326
  end -- shunt/quicktype.yue:1187
  return nil -- shunt/quicktype.yue:1328
end -- shunt/quicktype.yue:1163
user_types = { } -- shunt/quicktype.yue:1330
declare_type = function(name, type_spec) -- shunt/quicktype.yue:1331
  if not (name ~= nil) then -- shunt/quicktype.yue:1332
    error("declare_type requires a name") -- shunt/quicktype.yue:1333
  end -- shunt/quicktype.yue:1332
  if 'string' ~= type(name) then -- shunt/quicktype.yue:1334
    error("declare_type requires a string name") -- shunt/quicktype.yue:1335
  end -- shunt/quicktype.yue:1334
  if not (type_spec ~= nil) then -- shunt/quicktype.yue:1336
    error("declare_type requires a type_spec") -- shunt/quicktype.yue:1337
  end -- shunt/quicktype.yue:1336
  if 'string' ~= type(type_spec) then -- shunt/quicktype.yue:1338
    error("declare_type requires a string type_spec") -- shunt/quicktype.yue:1339
  end -- shunt/quicktype.yue:1338
  local prefix, unprefixed_name = name:match('^([^.]+)%.([^.]*)$') -- shunt/quicktype.yue:1341
  if unprefixed_name == nil then -- shunt/quicktype.yue:1342
    unprefixed_name = name -- shunt/quicktype.yue:1342
  end -- shunt/quicktype.yue:1342
  if (prefix ~= nil) then -- shunt/quicktype.yue:1344
    if (known_primitives[prefix] ~= nil) then -- shunt/quicktype.yue:1345
      error("cannot use '" .. tostring(prefix) .. "' as type-prefix: must not be a primitive") -- shunt/quicktype.yue:1346
    end -- shunt/quicktype.yue:1345
    if not prefix:match('^[a-z]') then -- shunt/quicktype.yue:1347
      error("cannot use '" .. tostring(prefix) .. "' as type-prefix: must start with a lowercase letter") -- shunt/quicktype.yue:1348
    end -- shunt/quicktype.yue:1347
  end -- shunt/quicktype.yue:1344
  if #unprefixed_name < 2 then -- shunt/quicktype.yue:1350
    error("cannot declare type '" .. tostring(unprefixed_name) .. "': name too short") -- shunt/quicktype.yue:1351
  end -- shunt/quicktype.yue:1350
  if not (unprefixed_name:sub(1, 1)):match('^[A-Z_]$') then -- shunt/quicktype.yue:1352
    error("cannot declare type '" .. tostring(unprefixed_name) .. "': user types must start with uppercase or '_'") -- shunt/quicktype.yue:1353
  end -- shunt/quicktype.yue:1352
  if not unprefixed_name:match('^[a-zA-Z0-9_-]*[a-zA-Z0-9_]$') then -- shunt/quicktype.yue:1354
    error("cannot declare type '" .. tostring(unprefixed_name) .. "': not a valid identifier") -- shunt/quicktype.yue:1355
  end -- shunt/quicktype.yue:1354
  if (user_types[name] ~= nil) then -- shunt/quicktype.yue:1357
    error("cannot redefine type '" .. tostring(unprefixed_name) .. "'") -- shunt/quicktype.yue:1358
  end -- shunt/quicktype.yue:1357
  local parsed_type = parse(type_spec) -- shunt/quicktype.yue:1359
  user_types[name] = parsed_type -- shunt/quicktype.yue:1360
  type_checkers[name] = parsed_type:checker():build() -- shunt/quicktype.yue:1361
end -- shunt/quicktype.yue:1331
_module_0["declare_type"] = declare_type -- shunt/quicktype.yue:1361
declare_type('Self', 'some') -- shunt/quicktype.yue:1363
declare_singleton_type = function(value) -- shunt/quicktype.yue:1365
  if not (value ~= nil) then -- shunt/quicktype.yue:1366
    error("declare_singleton_type requires a value") -- shunt/quicktype.yue:1367
  end -- shunt/quicktype.yue:1366
  if 'table' ~= type(value) then -- shunt/quicktype.yue:1368
    error("declare_singleton_type requires a table value") -- shunt/quicktype.yue:1369
  end -- shunt/quicktype.yue:1368
  local name = tostring(value) -- shunt/quicktype.yue:1371
  if #name < 2 then -- shunt/quicktype.yue:1372
    error("cannot declare type '" .. tostring(name) .. "': name too short") -- shunt/quicktype.yue:1373
  end -- shunt/quicktype.yue:1372
  if not (name:sub(1, 1)):match('^[A-Z_]$') then -- shunt/quicktype.yue:1374
    error("cannot declare type '" .. tostring(name) .. "': user types must start with an uppercase letter or '_'") -- shunt/quicktype.yue:1375
  end -- shunt/quicktype.yue:1374
  if not name:match('^[a-zA-Z0-9_-]*[a-zA-Z0-9_]$') then -- shunt/quicktype.yue:1376
    error("cannot declare type '" .. tostring(name) .. "': not a valid identifier") -- shunt/quicktype.yue:1377
  end -- shunt/quicktype.yue:1376
  if (user_types[name] ~= nil) then -- shunt/quicktype.yue:1378
    error("cannot redefine type '" .. tostring(name) .. "'") -- shunt/quicktype.yue:1379
  end -- shunt/quicktype.yue:1378
  local ty = SingletonType(name, value) -- shunt/quicktype.yue:1381
  user_types[name] = ty -- shunt/quicktype.yue:1382
  type_checkers[name] = ty:checker():build() -- shunt/quicktype.yue:1383
end -- shunt/quicktype.yue:1365
_module_0["declare_singleton_type"] = declare_singleton_type -- shunt/quicktype.yue:1383
skip_typechecking = false -- shunt/quicktype.yue:1385
deactivate_typechecks = function() -- shunt/quicktype.yue:1386
  skip_typechecking = true -- shunt/quicktype.yue:1387
end -- shunt/quicktype.yue:1386
_module_0["deactivate_typechecks"] = deactivate_typechecks -- shunt/quicktype.yue:1387
stats = function() -- shunt/quicktype.yue:1389
  local stats_arr -- shunt/quicktype.yue:1390
  do -- shunt/quicktype.yue:1390
    local _accum_0 = { } -- shunt/quicktype.yue:1390
    local _len_0 = 1 -- shunt/quicktype.yue:1390
    for instruction, count in pairs(instruction_counts) do -- shunt/quicktype.yue:1390
      _accum_0[_len_0] = { -- shunt/quicktype.yue:1390
        instruction = instruction, -- shunt/quicktype.yue:1390
        count = count -- shunt/quicktype.yue:1390
      } -- shunt/quicktype.yue:1390
      _len_0 = _len_0 + 1 -- shunt/quicktype.yue:1390
    end -- shunt/quicktype.yue:1390
    stats_arr = _accum_0 -- shunt/quicktype.yue:1390
  end -- shunt/quicktype.yue:1390
  table.sort(stats_arr, function(a, b) -- shunt/quicktype.yue:1391
    return a.count > b.count -- shunt/quicktype.yue:1391
  end) -- shunt/quicktype.yue:1391
  return stats_arr -- shunt/quicktype.yue:1392
end -- shunt/quicktype.yue:1389
_module_0["stats"] = stats -- shunt/quicktype.yue:1392
spec(function() -- shunt/quicktype.yue:1394
  local describe, it, matchers -- shunt/quicktype.yue:0
  do -- shunt/quicktype.yue:0
    local _obj_0 = require('shunt.spec') -- shunt/quicktype.yue:0
    describe, it, matchers = _obj_0.describe, _obj_0.it, _obj_0.matchers -- shunt/quicktype.yue:0
  end -- shunt/quicktype.yue:0
  local anything, contains_value, deep_eq, each_value, eq, errors, has_fields, ge, gt, len, match, matches, no_errors = matchers.anything, matchers.contains_value, matchers.deep_eq, matchers.each_value, matchers.eq, matchers.errors, matchers.has_fields, matchers.ge, matchers.gt, matchers.len, matchers.match, matchers.matches, matchers.no_errors -- shunt/quicktype.yue:1399
  describe('Lexer', function() -- shunt/quicktype.yue:1401
    local tokens -- shunt/quicktype.yue:1402
    tokens = function(raw) -- shunt/quicktype.yue:1402
      assert(raw) -- shunt/quicktype.yue:1403
      local _with_0 = { } -- shunt/quicktype.yue:1404
      for token in (Lexer(raw)).tokens do -- shunt/quicktype.yue:1405
        _with_0[#_with_0 + 1] = token -- shunt/quicktype.yue:1406
      end -- shunt/quicktype.yue:1406
      return _with_0 -- shunt/quicktype.yue:1404
    end -- shunt/quicktype.yue:1402
    it('emits simple types', function() -- shunt/quicktype.yue:1408
      local simple_types = { -- shunt/quicktype.yue:1410
        type(nil), -- shunt/quicktype.yue:1410
        type(false), -- shunt/quicktype.yue:1411
        type(0), -- shunt/quicktype.yue:1412
        type(""), -- shunt/quicktype.yue:1413
        type(function() end), -- shunt/quicktype.yue:1414
        type(coroutine.create(function() end)), -- shunt/quicktype.yue:1415
        'any', -- shunt/quicktype.yue:1416
        'some' -- shunt/quicktype.yue:1417
      } -- shunt/quicktype.yue:1409
      for _index_0 = 1, #simple_types do -- shunt/quicktype.yue:1418
        local simple_type = simple_types[_index_0] -- shunt/quicktype.yue:1418
        require('shunt.spec')._expect_that([=[(tokens simple_type)]=], (tokens(simple_type)), (deep_eq({ -- shunt/quicktype.yue:1419
          Symbol(T_NAME, simple_type) -- shunt/quicktype.yue:1419
        })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1419)) -- shunt/quicktype.yue:1419
      end -- shunt/quicktype.yue:1421
    end) -- shunt/quicktype.yue:1408
    it('emits prefixed simple type', function() -- shunt/quicktype.yue:1423
      return require('shunt.spec')._expect_that([=[(tokens 'prefixed.Name')]=], (tokens('prefixed.Name')), (deep_eq({ -- shunt/quicktype.yue:1424
        Symbol(T_PREFIXED_NAME, 'prefixed.Name') -- shunt/quicktype.yue:1424
      })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1424)) -- shunt/quicktype.yue:1426
    end) -- shunt/quicktype.yue:1423
    it('emits the never type', function() -- shunt/quicktype.yue:1428
      return require('shunt.spec')._expect_that([=[(tokens '!')]=], (tokens('!')), (deep_eq({ -- shunt/quicktype.yue:1429
        Symbol(T_BANG) -- shunt/quicktype.yue:1429
      })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1429)) -- shunt/quicktype.yue:1431
    end) -- shunt/quicktype.yue:1428
    it('emits boolean types', function() -- shunt/quicktype.yue:1433
      return require('shunt.spec')._expect_that([=[(tokens 'true false')]=], (tokens('true false')), (deep_eq({ -- shunt/quicktype.yue:1434
        Symbol(T_BOOLEAN, true), -- shunt/quicktype.yue:1434
        Symbol(T_BOOLEAN, false) -- shunt/quicktype.yue:1434
      })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1434)) -- shunt/quicktype.yue:1436
    end) -- shunt/quicktype.yue:1433
    it('emits number types', function() -- shunt/quicktype.yue:1438
      return require('shunt.spec')._expect_that([=[(tokens '123 456.654 .789 -123 -456.654 -.789')]=], (tokens('123 456.654 .789 -123 -456.654 -.789')), (deep_eq({ -- shunt/quicktype.yue:1439
        Symbol(T_NUMBER, 123), -- shunt/quicktype.yue:1439
        Symbol(T_NUMBER, 456.654), -- shunt/quicktype.yue:1439
        Symbol(T_NUMBER, .789), -- shunt/quicktype.yue:1439
        Symbol(T_NUMBER, -123), -- shunt/quicktype.yue:1439
        Symbol(T_NUMBER, -456.654), -- shunt/quicktype.yue:1439
        Symbol(T_NUMBER, -.789) -- shunt/quicktype.yue:1439
      })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1439)) -- shunt/quicktype.yue:1446
    end) -- shunt/quicktype.yue:1438
    it('emits string types', function() -- shunt/quicktype.yue:1448
      return require('shunt.spec')._expect_that([=[(tokens '"hello" "world"')]=], (tokens('"hello" "world"')), (deep_eq({ -- shunt/quicktype.yue:1449
        Symbol(T_STRING, 'hello'), -- shunt/quicktype.yue:1449
        Symbol(T_STRING, 'world') -- shunt/quicktype.yue:1449
      })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1449)) -- shunt/quicktype.yue:1452
    end) -- shunt/quicktype.yue:1448
    it('emits strucural tokens', function() -- shunt/quicktype.yue:1454
      return require('shunt.spec')._expect_that([==[(tokens '(),{}[]:->=>...?+|~')]==], (tokens('(),{}[]:->=>...?+|~')), (deep_eq({ -- shunt/quicktype.yue:1455
        Symbol(T_PAREN_OPEN), -- shunt/quicktype.yue:1455
        Symbol(T_PAREN_CLOSE), -- shunt/quicktype.yue:1455
        Symbol(T_COMMA), -- shunt/quicktype.yue:1455
        Symbol(T_BRACE_OPEN), -- shunt/quicktype.yue:1455
        Symbol(T_BRACE_CLOSE), -- shunt/quicktype.yue:1455
        Symbol(T_BRACKET_OPEN), -- shunt/quicktype.yue:1455
        Symbol(T_BRACKET_CLOSE), -- shunt/quicktype.yue:1455
        Symbol(T_COLON), -- shunt/quicktype.yue:1455
        Symbol(T_THIN_ARROW), -- shunt/quicktype.yue:1455
        Symbol(T_FAT_ARROW), -- shunt/quicktype.yue:1455
        Symbol(T_DOTDOTDOT), -- shunt/quicktype.yue:1455
        Symbol(T_QUESTION), -- shunt/quicktype.yue:1455
        Symbol(T_PLUS), -- shunt/quicktype.yue:1455
        Symbol(T_PIPE), -- shunt/quicktype.yue:1455
        Symbol(T_TILDE) -- shunt/quicktype.yue:1455
      })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1455)) -- shunt/quicktype.yue:1471
    end) -- shunt/quicktype.yue:1454
    it('ignores whitespace', function() -- shunt/quicktype.yue:1473
      return require('shunt.spec')._expect_that([=[(tokens ' (\tstr_ing\r)\n-> str-ing ')]=], (tokens(' (\tstr_ing\r)\n-> str-ing ')), (deep_eq({ -- shunt/quicktype.yue:1474
        Symbol(T_PAREN_OPEN), -- shunt/quicktype.yue:1474
        Symbol(T_NAME, "str_ing"), -- shunt/quicktype.yue:1474
        Symbol(T_PAREN_CLOSE), -- shunt/quicktype.yue:1474
        Symbol(T_THIN_ARROW), -- shunt/quicktype.yue:1474
        Symbol(T_NAME, "str-ing") -- shunt/quicktype.yue:1474
      })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1474)) -- shunt/quicktype.yue:1480
    end) -- shunt/quicktype.yue:1473
    it('ignores comments', function() -- shunt/quicktype.yue:1482
      return require('shunt.spec')._expect_that([=[(tokens '-- hello\n--world!')]=], (tokens('-- hello\n--world!')), (deep_eq({ })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1483)) -- shunt/quicktype.yue:1483
    end) -- shunt/quicktype.yue:1482
    it('rejects unexpected characters', function() -- shunt/quicktype.yue:1485
      return require('shunt.spec')._expect_that([=[(-> tokens '*')]=], (function() -- shunt/quicktype.yue:1486
        return tokens('*') -- shunt/quicktype.yue:1486
      end), (errors(matches([[unexpected character '%*']]))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1486)) -- shunt/quicktype.yue:1486
    end) -- shunt/quicktype.yue:1485
    return describe(':peek', function() -- shunt/quicktype.yue:1488
      it('matches :next', function() -- shunt/quicktype.yue:1489
        local lexer = Lexer('()'); -- shunt/quicktype.yue:1490
        require('shunt.spec')._assert_that([=[lexer\peek!]=], lexer:peek(), (deep_eq(Symbol(T_PAREN_OPEN))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1491)); -- shunt/quicktype.yue:1491
        require('shunt.spec')._assert_that([=[lexer\peek!]=], lexer:peek(), (deep_eq(Symbol(T_PAREN_OPEN))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1492)); -- shunt/quicktype.yue:1492
        require('shunt.spec')._assert_that([=[lexer\next!]=], lexer:next(), (deep_eq(Symbol(T_PAREN_OPEN))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1493)); -- shunt/quicktype.yue:1493
        require('shunt.spec')._assert_that([=[lexer\peek!]=], lexer:peek(), (deep_eq(Symbol(T_PAREN_CLOSE))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1494)); -- shunt/quicktype.yue:1494
        require('shunt.spec')._assert_that([=[lexer\peek!]=], lexer:peek(), (deep_eq(Symbol(T_PAREN_CLOSE))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1495)); -- shunt/quicktype.yue:1495
        return require('shunt.spec')._assert_that([=[lexer\next!]=], lexer:next(), (deep_eq(Symbol(T_PAREN_CLOSE))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1496)) -- shunt/quicktype.yue:1496
      end) -- shunt/quicktype.yue:1489
      return it('returns nil at EOF', function() -- shunt/quicktype.yue:1498
        local lexer = Lexer(''); -- shunt/quicktype.yue:1499
        require('shunt.spec')._expect_that([=[lexer\peek!]=], lexer:peek(), (eq(nil)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1500)); -- shunt/quicktype.yue:1500
        return require('shunt.spec')._expect_that([=[lexer\peek!]=], lexer:peek(), (eq(nil)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1501)) -- shunt/quicktype.yue:1501
      end) -- shunt/quicktype.yue:1501
    end) -- shunt/quicktype.yue:1501
  end) -- shunt/quicktype.yue:1401
  describe('TypeSpecParser', function() -- shunt/quicktype.yue:1503
    describe('run on simple types', function() -- shunt/quicktype.yue:1504
      it('accepts primitives', function() -- shunt/quicktype.yue:1505
        require('shunt.spec')._expect_that([=[(parse 'nil')]=], (parse('nil')), (deep_eq(Primitive(type(nil)))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1506)); -- shunt/quicktype.yue:1506
        require('shunt.spec')._expect_that([=[(parse 'number')]=], (parse('number')), (deep_eq(Primitive(type(0)))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1507)); -- shunt/quicktype.yue:1507
        require('shunt.spec')._expect_that([=[(parse 'number')]=], (parse('number')), (deep_eq(Primitive(type(0.0)))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1508)); -- shunt/quicktype.yue:1508
        require('shunt.spec')._expect_that([=[(parse 'string')]=], (parse('string')), (deep_eq(Primitive(type("")))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1509)); -- shunt/quicktype.yue:1509
        require('shunt.spec')._expect_that([=[(parse 'table')]=], (parse('table')), (deep_eq(Primitive(type({ })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1510)); -- shunt/quicktype.yue:1510
        require('shunt.spec')._expect_that([=[(parse 'function')]=], (parse('function')), (deep_eq(Primitive(type(function() end)))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1511)); -- shunt/quicktype.yue:1511
        require('shunt.spec')._expect_that([=[(parse 'thread')]=], (parse('thread')), (deep_eq(Primitive(type(coroutine.create(function() end))))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1512)); -- shunt/quicktype.yue:1512
        require('shunt.spec')._expect_that([=[(parse 'userdata')]=], (parse('userdata')), (deep_eq(Primitive('userdata'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1513)); -- shunt/quicktype.yue:1513
        require('shunt.spec')._expect_that([=[(parse 'any')]=], (parse('any')), (deep_eq(Any())), tostring("shunt/quicktype.yue") .. ":" .. tostring(1514)); -- shunt/quicktype.yue:1514
        require('shunt.spec')._expect_that([=[(parse 'some')]=], (parse('some')), (deep_eq(Some())), tostring("shunt/quicktype.yue") .. ":" .. tostring(1515)); -- shunt/quicktype.yue:1515
        return require('shunt.spec')._expect_that([=[(parse '!')]=], (parse('!')), (deep_eq(Never())), tostring("shunt/quicktype.yue") .. ":" .. tostring(1516)) -- shunt/quicktype.yue:1516
      end) -- shunt/quicktype.yue:1505
      it('accepts user types', function() -- shunt/quicktype.yue:1518
        return require('shunt.spec')._expect_that([=[(parse 'UserType')]=], (parse('UserType')), (deep_eq(UserType('UserType'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1519)) -- shunt/quicktype.yue:1519
      end) -- shunt/quicktype.yue:1518
      it('accepts prefixed user types', function() -- shunt/quicktype.yue:1521
        return require('shunt.spec')._expect_that([=[(parse 'prefixed.UserType')]=], (parse('prefixed.UserType')), (deep_eq(UserType('prefixed.UserType'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1522)) -- shunt/quicktype.yue:1522
      end) -- shunt/quicktype.yue:1521
      it('accepts boolean types', function() -- shunt/quicktype.yue:1524
        require('shunt.spec')._expect_that([=[(parse 'true')]=], (parse('true')), (deep_eq(BooleanType(true))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1525)); -- shunt/quicktype.yue:1525
        return require('shunt.spec')._expect_that([=[(parse 'false')]=], (parse('false')), (deep_eq(BooleanType(false))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1526)) -- shunt/quicktype.yue:1526
      end) -- shunt/quicktype.yue:1524
      it('accepts number types', function() -- shunt/quicktype.yue:1528
        return require('shunt.spec')._expect_that([=[(parse '123')]=], (parse('123')), (deep_eq(NumberType(123))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1529)) -- shunt/quicktype.yue:1529
      end) -- shunt/quicktype.yue:1528
      it('accepts string types', function() -- shunt/quicktype.yue:1531
        return require('shunt.spec')._expect_that([=[(parse '"hello"')]=], (parse('"hello"')), (deep_eq(StringType('hello'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1532)) -- shunt/quicktype.yue:1532
      end) -- shunt/quicktype.yue:1531
      it('rejects unknown primitives', function() -- shunt/quicktype.yue:1534
        return require('shunt.spec')._expect_that([=[(-> parse 'user')]=], (function() -- shunt/quicktype.yue:1535
          return parse('user') -- shunt/quicktype.yue:1535
        end), (errors(matches([[cannot use 'user' as user type name: name must start with an uppercase letter]]))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1535)) -- shunt/quicktype.yue:1535
      end) -- shunt/quicktype.yue:1534
      it('rejects malformed prefixed identifiers', function() -- shunt/quicktype.yue:1537
        require('shunt.spec')._expect_that([=[(-> parse 'foo.')]=], (function() -- shunt/quicktype.yue:1538
          return parse('foo.') -- shunt/quicktype.yue:1538
        end), (errors(matches('foo'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1538)); -- shunt/quicktype.yue:1538
        require('shunt.spec')._expect_that([=[(-> parse '.Bar')]=], (function() -- shunt/quicktype.yue:1539
          return parse('.Bar') -- shunt/quicktype.yue:1539
        end), (errors(matches("unexpected character '%.'"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1539)); -- shunt/quicktype.yue:1539
        require('shunt.spec')._expect_that([=[(-> parse 'Foo.bar')]=], (function() -- shunt/quicktype.yue:1540
          return parse('Foo.bar') -- shunt/quicktype.yue:1540
        end), (errors(matches("cannot use 'Foo' as type%-prefix: must start with a lowercase letter"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1540)); -- shunt/quicktype.yue:1540
        require('shunt.spec')._expect_that([=[(-> parse 'foo.bar')]=], (function() -- shunt/quicktype.yue:1541
          return parse('foo.bar') -- shunt/quicktype.yue:1541
        end), (errors(matches("cannot use 'bar' as disambiguated type name: must start with an uppercase letter"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1541)); -- shunt/quicktype.yue:1541
        return require('shunt.spec')._expect_that([=[(-> parse 'number.Bar')]=], (function() -- shunt/quicktype.yue:1542
          return parse('number.Bar') -- shunt/quicktype.yue:1542
        end), (errors(matches("cannot use 'number' as type%-prefix: must not be a primitive"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1542)) -- shunt/quicktype.yue:1542
      end) -- shunt/quicktype.yue:1537
      it('rejects incomplete types', function() -- shunt/quicktype.yue:1544
        return require('shunt.spec')._expect_that([=[(-> parse '[')]=], (function() -- shunt/quicktype.yue:1545
          return parse('[') -- shunt/quicktype.yue:1545
        end), (errors(matches([[unexpected EOF]]))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1545)) -- shunt/quicktype.yue:1545
      end) -- shunt/quicktype.yue:1544
      return it('rejects inputs with trailing errors', function() -- shunt/quicktype.yue:1547
        return require('shunt.spec')._expect_that([=[(-> parse 'string]')]=], (function() -- shunt/quicktype.yue:1548
          return parse('string]') -- shunt/quicktype.yue:1548
        end), (errors(matches('type spec has trailing characters'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1548)) -- shunt/quicktype.yue:1548
      end) -- shunt/quicktype.yue:1548
    end) -- shunt/quicktype.yue:1504
    return describe('run on composite types', function() -- shunt/quicktype.yue:1550
      it('accepts optional', function() -- shunt/quicktype.yue:1551
        require('shunt.spec')._expect_that([=[(parse '?nil')]=], (parse('?nil')), (deep_eq(Optional(Primitive('nil')))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1552)); -- shunt/quicktype.yue:1552
        require('shunt.spec')._expect_that([=[(parse '?string')]=], (parse('?string')), (deep_eq(Optional(Primitive('string')))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1553)); -- shunt/quicktype.yue:1553
        return require('shunt.spec')._expect_that([=[(parse '?() -> nil')]=], (parse('?() -> nil')), (deep_eq(Optional(Function({ }, { -- shunt/quicktype.yue:1554
          Primitive('nil') -- shunt/quicktype.yue:1554
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1554)) -- shunt/quicktype.yue:1554
      end) -- shunt/quicktype.yue:1551
      it('accepts arrays', function() -- shunt/quicktype.yue:1556
        require('shunt.spec')._expect_that([=[(parse '[string]')]=], (parse('[string]')), (deep_eq(Array(Primitive('string')))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1557)); -- shunt/quicktype.yue:1557
        require('shunt.spec')._expect_that([=[(parse '[[string]]')]=], (parse('[[string]]')), (deep_eq(Array(Array(Primitive('string'))))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1558)); -- shunt/quicktype.yue:1558
        return require('shunt.spec')._expect_that([=[(parse '~[string]')]=], (parse('~[string]')), (deep_eq((Array(Primitive('string'))):table_like(true))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1559)) -- shunt/quicktype.yue:1560
      end) -- shunt/quicktype.yue:1556
      it('accepts tuples', function() -- shunt/quicktype.yue:1562
        require('shunt.spec')._expect_that([=[(parse '()')]=], (parse('()')), (deep_eq(Tuple({ }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1563)); -- shunt/quicktype.yue:1563
        require('shunt.spec')._expect_that([=[(parse '(nil,)')]=], (parse('(nil,)')), (deep_eq(Tuple({ -- shunt/quicktype.yue:1564
          Primitive('nil') -- shunt/quicktype.yue:1564
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1564)); -- shunt/quicktype.yue:1564
        require('shunt.spec')._expect_that([=[(parse '(nil, number)')]=], (parse('(nil, number)')), (deep_eq(Tuple({ -- shunt/quicktype.yue:1565
          (Primitive('nil')), -- shunt/quicktype.yue:1565
          Primitive('number') -- shunt/quicktype.yue:1565
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1565)); -- shunt/quicktype.yue:1565
        require('shunt.spec')._expect_that([=[(parse '((nil, number), string, (User, table))')]=], (parse('((nil, number), string, (User, table))')), (deep_eq(Tuple({ -- shunt/quicktype.yue:1566
          Tuple({ -- shunt/quicktype.yue:1566
            (Primitive('nil')), -- shunt/quicktype.yue:1566
            (Primitive('number')) -- shunt/quicktype.yue:1566
          }), -- shunt/quicktype.yue:1566
          Primitive('string'), -- shunt/quicktype.yue:1566
          Tuple({ -- shunt/quicktype.yue:1566
            (UserType('User')), -- shunt/quicktype.yue:1566
            (Primitive('table')) -- shunt/quicktype.yue:1566
          }) -- shunt/quicktype.yue:1566
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1566)); -- shunt/quicktype.yue:1566
        return require('shunt.spec')._expect_that([=[(parse '~()')]=], (parse('~()')), (deep_eq((Tuple({ })):table_like(true))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1572)) -- shunt/quicktype.yue:1573
      end) -- shunt/quicktype.yue:1562
      it('accepts sets', function() -- shunt/quicktype.yue:1575
        require('shunt.spec')._expect_that([=[(parse '{string}')]=], (parse('{string}')), (deep_eq(Set(nil, Primitive('string')))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1576)); -- shunt/quicktype.yue:1576
        require('shunt.spec')._expect_that([=[(parse '{{string}}')]=], (parse('{{string}}')), (deep_eq(Set(nil, Set(nil, Primitive('string'))))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1577)); -- shunt/quicktype.yue:1577
        require('shunt.spec')._expect_that([=[(parse '{<>: {}, string}')]=], (parse('{<>: {}, string}')), (deep_eq(Set((Struct(nil, { })), Primitive('string')))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1578)); -- shunt/quicktype.yue:1578
        return require('shunt.spec')._expect_that([=[(parse '~{string}')]=], (parse('~{string}')), (deep_eq((Set(nil, Primitive('string'))):table_like(true))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1580)) -- shunt/quicktype.yue:1581
      end) -- shunt/quicktype.yue:1575
      it('accepts mappings', function() -- shunt/quicktype.yue:1583
        require('shunt.spec')._expect_that([=[(parse '{boolean -> number}')]=], (parse('{boolean -> number}')), (deep_eq(Mapping(nil, (Primitive('boolean')), Primitive('number')))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1584)); -- shunt/quicktype.yue:1584
        require('shunt.spec')._expect_that([=[(parse '{{boolean -> number} -> {string -> thread}}')]=], (parse('{{boolean -> number} -> {string -> thread}}')), (deep_eq(Mapping(nil, (Mapping(nil, (Primitive('boolean')), Primitive('number'))), Mapping(nil, (Primitive('string')), Primitive('thread'))))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1585)); -- shunt/quicktype.yue:1585
        require('shunt.spec')._expect_that([=[(parse '{<>: {}, boolean -> number}')]=], (parse('{<>: {}, boolean -> number}')), (deep_eq(Mapping((Struct(nil, { })), (Primitive('boolean')), Primitive('number')))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1586)); -- shunt/quicktype.yue:1586
        return require('shunt.spec')._expect_that([=[(parse '~{boolean -> number}')]=], (parse('~{boolean -> number}')), (deep_eq((Mapping(nil, (Primitive('boolean')), Primitive('number'))):table_like(true))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1588)) -- shunt/quicktype.yue:1589
      end) -- shunt/quicktype.yue:1583
      it('accepts structs', function() -- shunt/quicktype.yue:1591
        require('shunt.spec')._expect_that([=[(parse '{}')]=], (parse('{}')), (deep_eq(Struct(nil, { }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1592)); -- shunt/quicktype.yue:1592
        require('shunt.spec')._expect_that([=[(parse '{field: boolean}')]=], (parse('{field: boolean}')), (deep_eq(Struct(nil, { -- shunt/quicktype.yue:1593
          Field('field', Primitive('boolean')) -- shunt/quicktype.yue:1593
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1593)); -- shunt/quicktype.yue:1593
        require('shunt.spec')._expect_that([=[(parse '{field: boolean,}')]=], (parse('{field: boolean,}')), (deep_eq(Struct(nil, { -- shunt/quicktype.yue:1595
          Field('field', Primitive('boolean')) -- shunt/quicktype.yue:1595
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1595)); -- shunt/quicktype.yue:1595
        require('shunt.spec')._expect_that([=[(parse '{field1: number, field2: string}')]=], (parse('{field1: number, field2: string}')), (deep_eq(Struct(nil, { -- shunt/quicktype.yue:1597
          Field('field1', Primitive('number')), -- shunt/quicktype.yue:1597
          Field('field2', Primitive('string')) -- shunt/quicktype.yue:1597
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1597)); -- shunt/quicktype.yue:1597
        require('shunt.spec')._expect_that([=[(parse '{outer1: {inner1: boolean}, outer2: {inner2: boolean}}')]=], (parse('{outer1: {inner1: boolean}, outer2: {inner2: boolean}}')), (deep_eq(Struct(nil, { -- shunt/quicktype.yue:1600
          Field('outer1', Struct(nil, { -- shunt/quicktype.yue:1600
            Field('inner1', Primitive('boolean')) -- shunt/quicktype.yue:1600
          })), -- shunt/quicktype.yue:1600
          Field('outer2', Struct(nil, { -- shunt/quicktype.yue:1600
            Field('inner2', Primitive('boolean')) -- shunt/quicktype.yue:1600
          })) -- shunt/quicktype.yue:1600
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1600)); -- shunt/quicktype.yue:1600
        require('shunt.spec')._expect_that([=[(parse '{<>: {}}')]=], (parse('{<>: {}}')), (deep_eq(Struct((Struct(nil, { })), { }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1605)); -- shunt/quicktype.yue:1605
        require('shunt.spec')._expect_that([=[(parse '{<>: {},}')]=], (parse('{<>: {},}')), (deep_eq(Struct((Struct(nil, { })), { }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1606)); -- shunt/quicktype.yue:1606
        require('shunt.spec')._expect_that([=[(parse '{<>: {<>: {__tostring: function}}}')]=], (parse('{<>: {<>: {__tostring: function}}}')), (deep_eq((function() -- shunt/quicktype.yue:1607
          return Struct((Struct((Struct(nil, { -- shunt/quicktype.yue:1607
            Field('__tostring', Primitive('function')) -- shunt/quicktype.yue:1607
          })), { })), { }) -- shunt/quicktype.yue:1607
        end)())), tostring("shunt/quicktype.yue") .. ":" .. tostring(1607)); -- shunt/quicktype.yue:1607
        return require('shunt.spec')._expect_that([=[(parse '~{}')]=], (parse('~{}')), (deep_eq((Struct(nil, { })):table_like(true))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1610)) -- shunt/quicktype.yue:1611
      end) -- shunt/quicktype.yue:1591
      it('accepts functions', function() -- shunt/quicktype.yue:1613
        require('shunt.spec')._expect_that([=[(parse '() -> <>')]=], (parse('() -> <>')), (deep_eq(Function({ }, { }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1614)); -- shunt/quicktype.yue:1614
        require('shunt.spec')._expect_that([=[(parse '() -> nil')]=], (parse('() -> nil')), (deep_eq(Function({ }, { -- shunt/quicktype.yue:1615
          Primitive('nil') -- shunt/quicktype.yue:1615
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1615)); -- shunt/quicktype.yue:1615
        require('shunt.spec')._expect_that([=[(parse '(string) -> number')]=], (parse('(string) -> number')), (deep_eq(Function({ -- shunt/quicktype.yue:1616
          Primitive('string') -- shunt/quicktype.yue:1616
        }, { -- shunt/quicktype.yue:1616
          Primitive('number') -- shunt/quicktype.yue:1616
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1616)); -- shunt/quicktype.yue:1616
        require('shunt.spec')._expect_that([=[(parse '(number, string) -> number')]=], (parse('(number, string) -> number')), (deep_eq(Function({ -- shunt/quicktype.yue:1617
          (Primitive('number')), -- shunt/quicktype.yue:1617
          (Primitive('string')) -- shunt/quicktype.yue:1617
        }, { -- shunt/quicktype.yue:1617
          Primitive('number') -- shunt/quicktype.yue:1617
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1617)); -- shunt/quicktype.yue:1617
        require('shunt.spec')._expect_that([=[(parse '(string) -> (number) -> boolean')]=], (parse('(string) -> (number) -> boolean')), (deep_eq(Function({ -- shunt/quicktype.yue:1618
          Primitive('string') -- shunt/quicktype.yue:1618
        }, { -- shunt/quicktype.yue:1618
          Function({ -- shunt/quicktype.yue:1618
            Primitive('number') -- shunt/quicktype.yue:1618
          }, { -- shunt/quicktype.yue:1618
            Primitive('boolean') -- shunt/quicktype.yue:1618
          }) -- shunt/quicktype.yue:1618
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1618)); -- shunt/quicktype.yue:1618
        require('shunt.spec')._expect_that([=[(parse '() -> <string>')]=], (parse('() -> <string>')), (deep_eq(Function({ }, { -- shunt/quicktype.yue:1619
          (Primitive('string')) -- shunt/quicktype.yue:1619
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1619)); -- shunt/quicktype.yue:1619
        require('shunt.spec')._expect_that([=[(parse '() -> <string,>')]=], (parse('() -> <string,>')), (deep_eq(Function({ }, { -- shunt/quicktype.yue:1620
          Primitive('string') -- shunt/quicktype.yue:1620
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1620)); -- shunt/quicktype.yue:1620
        require('shunt.spec')._expect_that([=[(parse '() -> <string, boolean>')]=], (parse('() -> <string, boolean>')), (deep_eq(Function({ }, { -- shunt/quicktype.yue:1621
          (Primitive('string')), -- shunt/quicktype.yue:1621
          (Primitive('boolean')) -- shunt/quicktype.yue:1621
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1621)); -- shunt/quicktype.yue:1621
        require('shunt.spec')._expect_that([=[(parse '(string...) -> number...')]=], (parse('(string...) -> number...')), (deep_eq(Function(setmetatable({ }, { -- shunt/quicktype.yue:1623
          __index = function(self) -- shunt/quicktype.yue:1623
            return Primitive('string') -- shunt/quicktype.yue:1623
          end -- shunt/quicktype.yue:1623
        }), setmetatable({ }, { -- shunt/quicktype.yue:1623
          __index = function(self) -- shunt/quicktype.yue:1623
            return Primitive('number') -- shunt/quicktype.yue:1623
          end -- shunt/quicktype.yue:1623
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1623)); -- shunt/quicktype.yue:1623
        require('shunt.spec')._expect_that([=[(parse '(string...) -> <number...>')]=], (parse('(string...) -> <number...>')), (deep_eq(Function(setmetatable({ }, { -- shunt/quicktype.yue:1624
          __index = function(self) -- shunt/quicktype.yue:1624
            return Primitive('string') -- shunt/quicktype.yue:1624
          end -- shunt/quicktype.yue:1624
        }), setmetatable({ }, { -- shunt/quicktype.yue:1624
          __index = function(self) -- shunt/quicktype.yue:1624
            return Primitive('number') -- shunt/quicktype.yue:1624
          end -- shunt/quicktype.yue:1624
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1624)); -- shunt/quicktype.yue:1624
        require('shunt.spec')._expect_that([=[(parse '(boolean, string...) -> <thread, number...>')]=], (parse('(boolean, string...) -> <thread, number...>')), (deep_eq(Function(setmetatable({ -- shunt/quicktype.yue:1625
          (Primitive('boolean')), -- shunt/quicktype.yue:1625
        }, { -- shunt/quicktype.yue:1625
          __index = function(self) -- shunt/quicktype.yue:1625
            return Primitive('string') -- shunt/quicktype.yue:1625
          end -- shunt/quicktype.yue:1625
        }), setmetatable({ -- shunt/quicktype.yue:1625
          (Primitive('thread')), -- shunt/quicktype.yue:1625
        }, { -- shunt/quicktype.yue:1625
          __index = function(self) -- shunt/quicktype.yue:1625
            return Primitive('number') -- shunt/quicktype.yue:1625
          end -- shunt/quicktype.yue:1625
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1625)); -- shunt/quicktype.yue:1625
        require('shunt.spec')._expect_that([=[(parse '() -> [string]...')]=], (parse('() -> [string]...')), (deep_eq(Function({ }, setmetatable({ }, { -- shunt/quicktype.yue:1626
          __index = function(self) -- shunt/quicktype.yue:1626
            return Array(Primitive('string')) -- shunt/quicktype.yue:1626
          end -- shunt/quicktype.yue:1626
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1626)); -- shunt/quicktype.yue:1626
        return require('shunt.spec')._expect_that([=[(-> parse '~() -> <>')]=], (function() -- shunt/quicktype.yue:1628
          return parse('~() -> <>') -- shunt/quicktype.yue:1628
        end), (errors(matches('functions cannot be table%-like'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1628)) -- shunt/quicktype.yue:1628
      end) -- shunt/quicktype.yue:1613
      it('accepts methods', function() -- shunt/quicktype.yue:1630
        require('shunt.spec')._expect_that([==[(parse '() => <>')]==], (parse('() => <>')), (deep_eq(Method({ }, { }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1631)); -- shunt/quicktype.yue:1631
        require('shunt.spec')._expect_that([==[(parse '() => nil')]==], (parse('() => nil')), (deep_eq(Method({ }, { -- shunt/quicktype.yue:1632
          Primitive('nil') -- shunt/quicktype.yue:1632
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1632)); -- shunt/quicktype.yue:1632
        require('shunt.spec')._expect_that([==[(parse '(string) => number')]==], (parse('(string) => number')), (deep_eq(Method({ -- shunt/quicktype.yue:1633
          Primitive('string') -- shunt/quicktype.yue:1633
        }, { -- shunt/quicktype.yue:1633
          Primitive('number') -- shunt/quicktype.yue:1633
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1633)); -- shunt/quicktype.yue:1633
        require('shunt.spec')._expect_that([==[(parse '(number, string) => number')]==], (parse('(number, string) => number')), (deep_eq(Method({ -- shunt/quicktype.yue:1634
          (Primitive('number')), -- shunt/quicktype.yue:1634
          (Primitive('string')) -- shunt/quicktype.yue:1634
        }, { -- shunt/quicktype.yue:1634
          Primitive('number') -- shunt/quicktype.yue:1634
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1634)); -- shunt/quicktype.yue:1634
        require('shunt.spec')._expect_that([==[(parse '(string) => (number) => boolean')]==], (parse('(string) => (number) => boolean')), (deep_eq(Method({ -- shunt/quicktype.yue:1635
          Primitive('string') -- shunt/quicktype.yue:1635
        }, { -- shunt/quicktype.yue:1635
          Method({ -- shunt/quicktype.yue:1635
            Primitive('number') -- shunt/quicktype.yue:1635
          }, { -- shunt/quicktype.yue:1635
            Primitive('boolean') -- shunt/quicktype.yue:1635
          }) -- shunt/quicktype.yue:1635
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1635)); -- shunt/quicktype.yue:1635
        require('shunt.spec')._expect_that([==[(parse '() => <string>')]==], (parse('() => <string>')), (deep_eq(Method({ }, { -- shunt/quicktype.yue:1636
          (Primitive('string')) -- shunt/quicktype.yue:1636
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1636)); -- shunt/quicktype.yue:1636
        require('shunt.spec')._expect_that([==[(parse '() => <string,>')]==], (parse('() => <string,>')), (deep_eq(Method({ }, { -- shunt/quicktype.yue:1637
          Primitive('string') -- shunt/quicktype.yue:1637
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1637)); -- shunt/quicktype.yue:1637
        require('shunt.spec')._expect_that([==[(parse '() => <string, boolean>')]==], (parse('() => <string, boolean>')), (deep_eq(Method({ }, { -- shunt/quicktype.yue:1638
          (Primitive('string')), -- shunt/quicktype.yue:1638
          (Primitive('boolean')) -- shunt/quicktype.yue:1638
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1638)); -- shunt/quicktype.yue:1638
        require('shunt.spec')._expect_that([==[(parse '(string...) => number...')]==], (parse('(string...) => number...')), (deep_eq(Method(setmetatable({ }, { -- shunt/quicktype.yue:1640
          __index = function(self) -- shunt/quicktype.yue:1640
            return Primitive('string') -- shunt/quicktype.yue:1640
          end -- shunt/quicktype.yue:1640
        }), setmetatable({ }, { -- shunt/quicktype.yue:1640
          __index = function(self) -- shunt/quicktype.yue:1640
            return Primitive('number') -- shunt/quicktype.yue:1640
          end -- shunt/quicktype.yue:1640
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1640)); -- shunt/quicktype.yue:1640
        require('shunt.spec')._expect_that([==[(parse '(string...) => <number...>')]==], (parse('(string...) => <number...>')), (deep_eq(Method(setmetatable({ }, { -- shunt/quicktype.yue:1641
          __index = function(self) -- shunt/quicktype.yue:1641
            return Primitive('string') -- shunt/quicktype.yue:1641
          end -- shunt/quicktype.yue:1641
        }), setmetatable({ }, { -- shunt/quicktype.yue:1641
          __index = function(self) -- shunt/quicktype.yue:1641
            return Primitive('number') -- shunt/quicktype.yue:1641
          end -- shunt/quicktype.yue:1641
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1641)); -- shunt/quicktype.yue:1641
        require('shunt.spec')._expect_that([==[(parse '(boolean, string...) => <thread, number...>')]==], (parse('(boolean, string...) => <thread, number...>')), (deep_eq(Method(setmetatable({ -- shunt/quicktype.yue:1642
          (Primitive('boolean')), -- shunt/quicktype.yue:1642
        }, { -- shunt/quicktype.yue:1642
          __index = function(self) -- shunt/quicktype.yue:1642
            return Primitive('string') -- shunt/quicktype.yue:1642
          end -- shunt/quicktype.yue:1642
        }), setmetatable({ -- shunt/quicktype.yue:1642
          (Primitive('thread')), -- shunt/quicktype.yue:1642
        }, { -- shunt/quicktype.yue:1642
          __index = function(self) -- shunt/quicktype.yue:1642
            return Primitive('number') -- shunt/quicktype.yue:1642
          end -- shunt/quicktype.yue:1642
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1642)); -- shunt/quicktype.yue:1642
        require('shunt.spec')._expect_that([==[(parse '() => [string]...')]==], (parse('() => [string]...')), (deep_eq(Method({ }, setmetatable({ }, { -- shunt/quicktype.yue:1643
          __index = function(self) -- shunt/quicktype.yue:1643
            return Array(Primitive('string')) -- shunt/quicktype.yue:1643
          end -- shunt/quicktype.yue:1643
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1643)); -- shunt/quicktype.yue:1643
        return require('shunt.spec')._expect_that([==[(-> parse '~() => <>')]==], (function() -- shunt/quicktype.yue:1645
          return parse('~() => <>') -- shunt/quicktype.yue:1645
        end), (errors(matches('methods cannot be table%-like'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1645)) -- shunt/quicktype.yue:1645
      end) -- shunt/quicktype.yue:1630
      it('accepts conjunctions', function() -- shunt/quicktype.yue:1647
        return require('shunt.spec')._expect_that([=[(parse '[string]+{number->string}+table+function')]=], (parse('[string]+{number->string}+table+function')), (deep_eq(Conjunction({ -- shunt/quicktype.yue:1648
          Array(Primitive('string')), -- shunt/quicktype.yue:1648
          Mapping(nil, (Primitive('number')), Primitive('string')), -- shunt/quicktype.yue:1648
          Primitive('table'), -- shunt/quicktype.yue:1648
          Primitive('function') -- shunt/quicktype.yue:1648
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1648)) -- shunt/quicktype.yue:1652
      end) -- shunt/quicktype.yue:1647
      it('accepts disjunctions', function() -- shunt/quicktype.yue:1654
        require('shunt.spec')._expect_that([=[(parse '[string]|{number->string}|table|function')]=], (parse('[string]|{number->string}|table|function')), (deep_eq(Disjunction({ -- shunt/quicktype.yue:1655
          Array(Primitive('string')), -- shunt/quicktype.yue:1655
          Mapping(nil, (Primitive('number')), Primitive('string')), -- shunt/quicktype.yue:1655
          Primitive('table'), -- shunt/quicktype.yue:1655
          Primitive('function') -- shunt/quicktype.yue:1655
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1655)); -- shunt/quicktype.yue:1655
        return require('shunt.spec')._expect_that([=[(parse '{string|number}')]=], (parse('{string|number}')), (deep_eq(Set(nil, Disjunction({ -- shunt/quicktype.yue:1660
          Primitive('string'), -- shunt/quicktype.yue:1660
          Primitive('number') -- shunt/quicktype.yue:1660
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1660)) -- shunt/quicktype.yue:1662
      end) -- shunt/quicktype.yue:1654
      return it('gives precedence to conjunctions', function() -- shunt/quicktype.yue:1664
        require('shunt.spec')._expect_that([=[(parse 'string+number|boolean')]=], (parse('string+number|boolean')), (deep_eq(Disjunction({ -- shunt/quicktype.yue:1665
          Conjunction({ -- shunt/quicktype.yue:1665
            Primitive('string'), -- shunt/quicktype.yue:1665
            Primitive('number') -- shunt/quicktype.yue:1665
          }), -- shunt/quicktype.yue:1665
          Primitive('boolean') -- shunt/quicktype.yue:1665
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1665)); -- shunt/quicktype.yue:1665
        return require('shunt.spec')._expect_that([=[(parse 'string|number+boolean')]=], (parse('string|number+boolean')), (deep_eq(Disjunction({ -- shunt/quicktype.yue:1670
          Primitive('string'), -- shunt/quicktype.yue:1670
          Conjunction({ -- shunt/quicktype.yue:1670
            Primitive('number'), -- shunt/quicktype.yue:1670
            Primitive('boolean') -- shunt/quicktype.yue:1670
          }) -- shunt/quicktype.yue:1670
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1670)) -- shunt/quicktype.yue:1674
      end) -- shunt/quicktype.yue:1674
    end) -- shunt/quicktype.yue:1674
  end) -- shunt/quicktype.yue:1503
  describe('T', function() -- shunt/quicktype.yue:1676
    it('requires two arguments', function() -- shunt/quicktype.yue:1677
      return require('shunt.spec')._expect_that([=[(-> T!)]=], (function() -- shunt/quicktype.yue:1678
        return T() -- shunt/quicktype.yue:1678
      end), (errors(matches('cannot typecheck: no type spec provided'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1678)) -- shunt/quicktype.yue:1678
    end) -- shunt/quicktype.yue:1677
    it('returns its second argument', function() -- shunt/quicktype.yue:1680
      local value = { }; -- shunt/quicktype.yue:1681
      return require('shunt.spec')._expect_that([=[(T '{}', value)]=], (T('{}', value)), (eq(value)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1682)) -- shunt/quicktype.yue:1682
    end) -- shunt/quicktype.yue:1680
    it('checks primitives', function() -- shunt/quicktype.yue:1684
      require('shunt.spec')._expect_that([=[(-> T 'nil', nil)]=], (function() -- shunt/quicktype.yue:1685
        return T('nil', nil) -- shunt/quicktype.yue:1685
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1685)); -- shunt/quicktype.yue:1685
      require('shunt.spec')._expect_that([=[(-> T 'number', 123)]=], (function() -- shunt/quicktype.yue:1686
        return T('number', 123) -- shunt/quicktype.yue:1686
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1686)); -- shunt/quicktype.yue:1686
      require('shunt.spec')._expect_that([=[(-> T 'string', 'some-string')]=], (function() -- shunt/quicktype.yue:1687
        return T('string', 'some-string') -- shunt/quicktype.yue:1687
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1687)); -- shunt/quicktype.yue:1687
      require('shunt.spec')._expect_that([=[(-> T 'nil', 123)]=], (function() -- shunt/quicktype.yue:1689
        return T('nil', 123) -- shunt/quicktype.yue:1689
      end), (errors(matches('incorrect type: expected nil but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1689)); -- shunt/quicktype.yue:1689
      require('shunt.spec')._expect_that([=[(-> T 'number', nil)]=], (function() -- shunt/quicktype.yue:1690
        return T('number', nil) -- shunt/quicktype.yue:1690
      end), (errors(matches('incorrect type: expected number but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1690)); -- shunt/quicktype.yue:1690
      return require('shunt.spec')._expect_that([=[(-> T 'string', 123)]=], (function() -- shunt/quicktype.yue:1691
        return T('string', 123) -- shunt/quicktype.yue:1691
      end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1691)) -- shunt/quicktype.yue:1691
    end) -- shunt/quicktype.yue:1684
    it('checks any', function() -- shunt/quicktype.yue:1693
      local values = { -- shunt/quicktype.yue:1695
        123, -- shunt/quicktype.yue:1695
        'str', -- shunt/quicktype.yue:1696
        { }, -- shunt/quicktype.yue:1697
        function() end, -- shunt/quicktype.yue:1698
        coroutine.create(function() end) -- shunt/quicktype.yue:1699
      } -- shunt/quicktype.yue:1694
      for _index_0 = 1, #values do -- shunt/quicktype.yue:1700
        local value = values[_index_0] -- shunt/quicktype.yue:1700
        require('shunt.spec')._expect_that([=[(-> T 'any', value)]=], (function() -- shunt/quicktype.yue:1701
          return T('any', value) -- shunt/quicktype.yue:1701
        end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1701)) -- shunt/quicktype.yue:1701
      end -- shunt/quicktype.yue:1701
      return require('shunt.spec')._expect_that([=[(-> T 'any', nil)]=], (function() -- shunt/quicktype.yue:1702
        return T('any', nil) -- shunt/quicktype.yue:1702
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1702)) -- shunt/quicktype.yue:1702
    end) -- shunt/quicktype.yue:1693
    it('checks some', function() -- shunt/quicktype.yue:1704
      local values = { -- shunt/quicktype.yue:1706
        123, -- shunt/quicktype.yue:1706
        'str', -- shunt/quicktype.yue:1707
        { }, -- shunt/quicktype.yue:1708
        function() end, -- shunt/quicktype.yue:1709
        coroutine.create(function() end) -- shunt/quicktype.yue:1710
      } -- shunt/quicktype.yue:1705
      for _index_0 = 1, #values do -- shunt/quicktype.yue:1711
        local value = values[_index_0] -- shunt/quicktype.yue:1711
        require('shunt.spec')._expect_that([=[(-> T 'some', value)]=], (function() -- shunt/quicktype.yue:1712
          return T('some', value) -- shunt/quicktype.yue:1712
        end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1712)) -- shunt/quicktype.yue:1712
      end -- shunt/quicktype.yue:1712
      return require('shunt.spec')._expect_that([=[(-> T 'some', nil)]=], (function() -- shunt/quicktype.yue:1713
        return T('some', nil) -- shunt/quicktype.yue:1713
      end), (errors(matches("incorrect type: expected some but got nil"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1713)) -- shunt/quicktype.yue:1713
    end) -- shunt/quicktype.yue:1704
    it('rejects never', function() -- shunt/quicktype.yue:1715
      return require('shunt.spec')._expect_that([=[(-> T '!', 123)]=], (function() -- shunt/quicktype.yue:1716
        return T('!', 123) -- shunt/quicktype.yue:1716
      end), (errors(matches('never expected a value here'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1716)) -- shunt/quicktype.yue:1716
    end) -- shunt/quicktype.yue:1715
    it('rejects nonexistent types', function() -- shunt/quicktype.yue:1718
      require('shunt.spec')._expect_that([=[(-> T 'IDoNotExist', 123)]=], (function() -- shunt/quicktype.yue:1719
        return T('IDoNotExist', 123) -- shunt/quicktype.yue:1719
      end), (errors(matches('cannot typecheck: type IDoNotExist not defined'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1719)) -- shunt/quicktype.yue:1719
      declare_type('ChildDoesNotExist', 'IDoNotExist'); -- shunt/quicktype.yue:1721
      return require('shunt.spec')._expect_that([=[(-> T 'ChildDoesNotExist', 123)]=], (function() -- shunt/quicktype.yue:1722
        return T('ChildDoesNotExist', 123) -- shunt/quicktype.yue:1722
      end), (errors(matches('cannot typecheck: type IDoNotExist not defined'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1722)) -- shunt/quicktype.yue:1722
    end) -- shunt/quicktype.yue:1718
    it('checks boolean types', function() -- shunt/quicktype.yue:1724
      require('shunt.spec')._expect_that([=[(-> T 'true', true)]=], (function() -- shunt/quicktype.yue:1725
        return T('true', true) -- shunt/quicktype.yue:1725
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1725)); -- shunt/quicktype.yue:1725
      require('shunt.spec')._expect_that([=[(-> T 'true', false)]=], (function() -- shunt/quicktype.yue:1726
        return T('true', false) -- shunt/quicktype.yue:1726
      end), (errors(matches('incorrect type: expected boolean true but got false'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1726)); -- shunt/quicktype.yue:1726
      require('shunt.spec')._expect_that([=[(-> T 'true', nil)]=], (function() -- shunt/quicktype.yue:1727
        return T('true', nil) -- shunt/quicktype.yue:1727
      end), (errors(matches('incorrect type: expected boolean but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1727)); -- shunt/quicktype.yue:1727
      require('shunt.spec')._expect_that([=[(-> T 'false', false)]=], (function() -- shunt/quicktype.yue:1729
        return T('false', false) -- shunt/quicktype.yue:1729
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1729)); -- shunt/quicktype.yue:1729
      require('shunt.spec')._expect_that([=[(-> T 'false', true)]=], (function() -- shunt/quicktype.yue:1730
        return T('false', true) -- shunt/quicktype.yue:1730
      end), (errors(matches('incorrect type: expected boolean false but got true'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1730)); -- shunt/quicktype.yue:1730
      return require('shunt.spec')._expect_that([=[(-> T 'false', nil)]=], (function() -- shunt/quicktype.yue:1731
        return T('false', nil) -- shunt/quicktype.yue:1731
      end), (errors(matches('incorrect type: expected boolean but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1731)) -- shunt/quicktype.yue:1731
    end) -- shunt/quicktype.yue:1724
    it('checks number types', function() -- shunt/quicktype.yue:1733
      require('shunt.spec')._expect_that([=[(-> T '123', 123)]=], (function() -- shunt/quicktype.yue:1734
        return T('123', 123) -- shunt/quicktype.yue:1734
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1734)); -- shunt/quicktype.yue:1734
      require('shunt.spec')._expect_that([=[(-> T '123', 0)]=], (function() -- shunt/quicktype.yue:1735
        return T('123', 0) -- shunt/quicktype.yue:1735
      end), (errors(matches("incorrect type: expected number 123"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1735)); -- shunt/quicktype.yue:1735
      return require('shunt.spec')._expect_that([=[(-> T '123', {})]=], (function() -- shunt/quicktype.yue:1736
        return T('123', { }) -- shunt/quicktype.yue:1736
      end), (errors(matches("incorrect type: expected number but got table"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1736)) -- shunt/quicktype.yue:1736
    end) -- shunt/quicktype.yue:1733
    it('checks string types', function() -- shunt/quicktype.yue:1738
      require('shunt.spec')._expect_that([=[(-> T '"hello"', 'hello')]=], (function() -- shunt/quicktype.yue:1739
        return T('"hello"', 'hello') -- shunt/quicktype.yue:1739
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1739)); -- shunt/quicktype.yue:1739
      return require('shunt.spec')._expect_that([=[(-> T '"hello"', 'world')]=], (function() -- shunt/quicktype.yue:1740
        return T('"hello"', 'world') -- shunt/quicktype.yue:1740
      end), (errors(matches("incorrect type: expected string 'hello'"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1740)) -- shunt/quicktype.yue:1740
    end) -- shunt/quicktype.yue:1738
    it('checks singleton types', function() -- shunt/quicktype.yue:1742
      local make_singleton -- shunt/quicktype.yue:1743
      make_singleton = function(name) -- shunt/quicktype.yue:1743
        return setmetatable({ }, { -- shunt/quicktype.yue:1743
          __tostring = function(self) -- shunt/quicktype.yue:1743
            return name -- shunt/quicktype.yue:1743
          end -- shunt/quicktype.yue:1743
        }) -- shunt/quicktype.yue:1743
      end -- shunt/quicktype.yue:1743
      local SINGLETON = make_singleton('Singleton') -- shunt/quicktype.yue:1744
      declare_singleton_type(SINGLETON); -- shunt/quicktype.yue:1745
      require('shunt.spec')._expect_that([=[(-> T 'Singleton', SINGLETON)]=], (function() -- shunt/quicktype.yue:1747
        return T('Singleton', SINGLETON) -- shunt/quicktype.yue:1747
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1747)); -- shunt/quicktype.yue:1747
      require('shunt.spec')._expect_that([=[(-> T 'Singleton', nil)]=], (function() -- shunt/quicktype.yue:1749
        return T('Singleton', nil) -- shunt/quicktype.yue:1749
      end), (errors(matches("incorrect type: expected table Singleton"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1749)); -- shunt/quicktype.yue:1749
      require('shunt.spec')._expect_that([=[(-> T 'Singleton', {})]=], (function() -- shunt/quicktype.yue:1750
        return T('Singleton', { }) -- shunt/quicktype.yue:1750
      end), (errors(matches("incorrect type: expected table Singleton"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1750)); -- shunt/quicktype.yue:1750
      return require('shunt.spec')._expect_that([=[(-> T 'Singleton', make_singleton 'Singleton')]=], (function() -- shunt/quicktype.yue:1751
        return T('Singleton', make_singleton('Singleton')) -- shunt/quicktype.yue:1751
      end), (errors(matches("incorrect type: expected table Singleton"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1751)) -- shunt/quicktype.yue:1751
    end) -- shunt/quicktype.yue:1742
    it('checks optionals', function() -- shunt/quicktype.yue:1753
      require('shunt.spec')._expect_that([=[(-> T '?number', nil)]=], (function() -- shunt/quicktype.yue:1754
        return T('?number', nil) -- shunt/quicktype.yue:1754
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1754)); -- shunt/quicktype.yue:1754
      require('shunt.spec')._expect_that([=[(-> T '?number', 123)]=], (function() -- shunt/quicktype.yue:1755
        return T('?number', 123) -- shunt/quicktype.yue:1755
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1755)); -- shunt/quicktype.yue:1755
      require('shunt.spec')._expect_that([=[(-> T '?number', 'str')]=], (function() -- shunt/quicktype.yue:1756
        return T('?number', 'str') -- shunt/quicktype.yue:1756
      end), (errors(matches('incorrect type: expected number but got string'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1756)); -- shunt/quicktype.yue:1756
      return require('shunt.spec')._expect_that([=[(-> T '?(number)', 'str')]=], (function() -- shunt/quicktype.yue:1757
        return T('?(number)', 'str') -- shunt/quicktype.yue:1757
      end), (errors(matches('incorrect type: expected table but got string'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1757)) -- shunt/quicktype.yue:1757
    end) -- shunt/quicktype.yue:1753
    it('checks arrays', function() -- shunt/quicktype.yue:1759
      require('shunt.spec')._expect_that([=[(-> T '[number]', {})]=], (function() -- shunt/quicktype.yue:1760
        return T('[number]', { }) -- shunt/quicktype.yue:1760
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1760)); -- shunt/quicktype.yue:1760
      require('shunt.spec')._expect_that([=[(-> T '[number]', {123, 312})]=], (function() -- shunt/quicktype.yue:1761
        return T('[number]', { -- shunt/quicktype.yue:1761
          123, -- shunt/quicktype.yue:1761
          312 -- shunt/quicktype.yue:1761
        }) -- shunt/quicktype.yue:1761
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1761)); -- shunt/quicktype.yue:1761
      require('shunt.spec')._expect_that([=[(-> T '[[number]]', {{123}, {312}})]=], (function() -- shunt/quicktype.yue:1762
        return T('[[number]]', { -- shunt/quicktype.yue:1762
          { -- shunt/quicktype.yue:1762
            123 -- shunt/quicktype.yue:1762
          }, -- shunt/quicktype.yue:1762
          { -- shunt/quicktype.yue:1762
            312 -- shunt/quicktype.yue:1762
          } -- shunt/quicktype.yue:1762
        }) -- shunt/quicktype.yue:1762
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1762)); -- shunt/quicktype.yue:1762
      require('shunt.spec')._expect_that([=[(-> T '[string]', 123)]=], (function() -- shunt/quicktype.yue:1764
        return T('[string]', 123) -- shunt/quicktype.yue:1764
      end), (errors(matches('incorrect type: expected table but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1764)); -- shunt/quicktype.yue:1764
      require('shunt.spec')._expect_that([=[(-> T '[[number]]', {{123}, {'asdf'}})]=], (function() -- shunt/quicktype.yue:1765
        return T('[[number]]', { -- shunt/quicktype.yue:1765
          { -- shunt/quicktype.yue:1765
            123 -- shunt/quicktype.yue:1765
          }, -- shunt/quicktype.yue:1765
          { -- shunt/quicktype.yue:1765
            'asdf' -- shunt/quicktype.yue:1765
          } -- shunt/quicktype.yue:1765
        }) -- shunt/quicktype.yue:1765
      end), (errors(matches('incorrect type: expected number but got string'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1765)) -- shunt/quicktype.yue:1765
      local hybrid = { -- shunt/quicktype.yue:1767
        123, -- shunt/quicktype.yue:1767
        456, -- shunt/quicktype.yue:1767
        789, -- shunt/quicktype.yue:1767
        field = 'a' -- shunt/quicktype.yue:1767
      } -- shunt/quicktype.yue:1767
      if #hybrid ~= 3 then -- shunt/quicktype.yue:1768
        return require('shunt.spec')._expect_that([=[(-> T '[string]', hybrid)]=], (function() -- shunt/quicktype.yue:1769
          return T('[string]', hybrid) -- shunt/quicktype.yue:1769
        end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1769)) -- shunt/quicktype.yue:1769
      else -- shunt/quicktype.yue:1771
        return require('shunt.spec')._expect_that([=[(-> T '[string]', hybrid)]=], (function() -- shunt/quicktype.yue:1771
          return T('[string]', hybrid) -- shunt/quicktype.yue:1771
        end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1771)) -- shunt/quicktype.yue:1771
      end -- shunt/quicktype.yue:1768
    end) -- shunt/quicktype.yue:1759
    it('checks tuples', function() -- shunt/quicktype.yue:1773
      require('shunt.spec')._expect_that([=[(-> T '()', {})]=], (function() -- shunt/quicktype.yue:1774
        return T('()', { }) -- shunt/quicktype.yue:1774
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1774)); -- shunt/quicktype.yue:1774
      require('shunt.spec')._expect_that([=[(-> T '(number, boolean, string)', {123, true, 'hello'})]=], (function() -- shunt/quicktype.yue:1775
        return T('(number, boolean, string)', { -- shunt/quicktype.yue:1775
          123, -- shunt/quicktype.yue:1775
          true, -- shunt/quicktype.yue:1775
          'hello' -- shunt/quicktype.yue:1775
        }) -- shunt/quicktype.yue:1775
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1775)); -- shunt/quicktype.yue:1775
      require('shunt.spec')._expect_that([=[(-> T '(number, boolean, string)', {123, true, 'hello', coroutine.create ->})]=], (function() -- shunt/quicktype.yue:1776
        return T('(number, boolean, string)', { -- shunt/quicktype.yue:1776
          123, -- shunt/quicktype.yue:1776
          true, -- shunt/quicktype.yue:1776
          'hello', -- shunt/quicktype.yue:1776
          coroutine.create(function() end) -- shunt/quicktype.yue:1776
        }) -- shunt/quicktype.yue:1776
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1776)); -- shunt/quicktype.yue:1776
      require('shunt.spec')._expect_that([=[(-> T '((number, boolean), (string, thread))', {{123, true}, {'hello', coroutine.create ->}})]=], (function() -- shunt/quicktype.yue:1777
        return T('((number, boolean), (string, thread))', { -- shunt/quicktype.yue:1777
          { -- shunt/quicktype.yue:1777
            123, -- shunt/quicktype.yue:1777
            true -- shunt/quicktype.yue:1777
          }, -- shunt/quicktype.yue:1777
          { -- shunt/quicktype.yue:1777
            'hello', -- shunt/quicktype.yue:1777
            coroutine.create(function() end) -- shunt/quicktype.yue:1777
          } -- shunt/quicktype.yue:1777
        }) -- shunt/quicktype.yue:1777
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1777)); -- shunt/quicktype.yue:1777
      require('shunt.spec')._expect_that([=[(-> T '(number, boolean, string)', nil)]=], (function() -- shunt/quicktype.yue:1779
        return T('(number, boolean, string)', nil) -- shunt/quicktype.yue:1779
      end), (errors(matches('incorrect type: expected table but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1779)); -- shunt/quicktype.yue:1779
      require('shunt.spec')._expect_that([=[(-> T '(number, boolean, string)', {})]=], (function() -- shunt/quicktype.yue:1780
        return T('(number, boolean, string)', { }) -- shunt/quicktype.yue:1780
      end), (errors(matches('incorrect type: expected number but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1780)); -- shunt/quicktype.yue:1780
      require('shunt.spec')._expect_that([=[(-> T '(number, boolean, string)', {123})]=], (function() -- shunt/quicktype.yue:1781
        return T('(number, boolean, string)', { -- shunt/quicktype.yue:1781
          123 -- shunt/quicktype.yue:1781
        }) -- shunt/quicktype.yue:1781
      end), (errors(matches('incorrect type: expected boolean but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1781)); -- shunt/quicktype.yue:1781
      return require('shunt.spec')._expect_that([=[(-> T '(number, boolean, string)', {'interloper'})]=], (function() -- shunt/quicktype.yue:1782
        return T('(number, boolean, string)', { -- shunt/quicktype.yue:1782
          'interloper' -- shunt/quicktype.yue:1782
        }) -- shunt/quicktype.yue:1782
      end), (errors(matches('incorrect type: expected number but got string'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1782)) -- shunt/quicktype.yue:1782
    end) -- shunt/quicktype.yue:1773
    it('checks sets', function() -- shunt/quicktype.yue:1784
      require('shunt.spec')._expect_that([=[(-> T '{number}', {})]=], (function() -- shunt/quicktype.yue:1785
        return T('{number}', { }) -- shunt/quicktype.yue:1785
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1785)); -- shunt/quicktype.yue:1785
      require('shunt.spec')._expect_that([=[(-> T '{number}', {[123]: true, [321]: {}})]=], (function() -- shunt/quicktype.yue:1786
        return T('{number}', { -- shunt/quicktype.yue:1786
          [123] = true, -- shunt/quicktype.yue:1786
          [321] = { } -- shunt/quicktype.yue:1786
        }) -- shunt/quicktype.yue:1786
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1786)); -- shunt/quicktype.yue:1786
      require('shunt.spec')._expect_that([=[(-> T '{{number}}', {[{123}]: true})]=], (function() -- shunt/quicktype.yue:1787
        return T('{{number}}', { -- shunt/quicktype.yue:1787
          [{ -- shunt/quicktype.yue:1787
            123 -- shunt/quicktype.yue:1787
          }] = true -- shunt/quicktype.yue:1787
        }) -- shunt/quicktype.yue:1787
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1787)); -- shunt/quicktype.yue:1787
      require('shunt.spec')._expect_that([=[(-> T '{<>: {}, number}', <>: {})]=], (function() -- shunt/quicktype.yue:1788
        return T('{<>: {}, number}', setmetatable({ }, { })) -- shunt/quicktype.yue:1788
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1788)); -- shunt/quicktype.yue:1788
      require('shunt.spec')._expect_that([=[(-> T '{number}', nil)]=], (function() -- shunt/quicktype.yue:1790
        return T('{number}', nil) -- shunt/quicktype.yue:1790
      end), (errors(matches('incorrect type: expected table but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1790)); -- shunt/quicktype.yue:1790
      require('shunt.spec')._expect_that([=[(-> T '{number}', {[123]: false})]=], (function() -- shunt/quicktype.yue:1791
        return T('{number}', { -- shunt/quicktype.yue:1791
          [123] = false -- shunt/quicktype.yue:1791
        }) -- shunt/quicktype.yue:1791
      end), (errors(matches('incorrect type: expected a truthy value but got false'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1791)); -- shunt/quicktype.yue:1791
      require('shunt.spec')._expect_that([=[(-> T '{{number}}', {[{['asdf']: true}]: true})]=], (function() -- shunt/quicktype.yue:1792
        return T('{{number}}', { -- shunt/quicktype.yue:1792
          [{ -- shunt/quicktype.yue:1792
            ['asdf'] = true -- shunt/quicktype.yue:1792
          }] = true -- shunt/quicktype.yue:1792
        }) -- shunt/quicktype.yue:1792
      end), (errors(matches('incorrect type: expected number but got string'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1792)); -- shunt/quicktype.yue:1792
      return require('shunt.spec')._expect_that([=[(-> T '{<>: {}, number}', {})]=], (function() -- shunt/quicktype.yue:1793
        return T('{<>: {}, number}', { }) -- shunt/quicktype.yue:1793
      end), (errors(matches('incorrect type: expected table but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1793)) -- shunt/quicktype.yue:1793
    end) -- shunt/quicktype.yue:1784
    it('checks mappings', function() -- shunt/quicktype.yue:1795
      require('shunt.spec')._expect_that([=[(-> T '{string -> number}', {})]=], (function() -- shunt/quicktype.yue:1796
        return T('{string -> number}', { }) -- shunt/quicktype.yue:1796
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1796)); -- shunt/quicktype.yue:1796
      require('shunt.spec')._expect_that([=[(-> T '{number -> string}', {'hello', [10]: 'world'})]=], (function() -- shunt/quicktype.yue:1797
        return T('{number -> string}', { -- shunt/quicktype.yue:1797
          'hello', -- shunt/quicktype.yue:1797
          [10] = 'world' -- shunt/quicktype.yue:1797
        }) -- shunt/quicktype.yue:1797
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1797)); -- shunt/quicktype.yue:1797
      require('shunt.spec')._expect_that([=[(-> T '{{boolean -> number} -> {string -> thread}}', {[{[true]: 123}]: {asdf: coroutine.create ->}})]=], (function() -- shunt/quicktype.yue:1798
        return T('{{boolean -> number} -> {string -> thread}}', { -- shunt/quicktype.yue:1798
          [{ -- shunt/quicktype.yue:1798
            [true] = 123 -- shunt/quicktype.yue:1798
          }] = { -- shunt/quicktype.yue:1798
            asdf = coroutine.create(function() end) -- shunt/quicktype.yue:1798
          } -- shunt/quicktype.yue:1798
        }) -- shunt/quicktype.yue:1798
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1798)); -- shunt/quicktype.yue:1798
      require('shunt.spec')._expect_that([=[(-> T '{<>: {}, string -> number}', <>: {})]=], (function() -- shunt/quicktype.yue:1799
        return T('{<>: {}, string -> number}', setmetatable({ }, { })) -- shunt/quicktype.yue:1799
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1799)); -- shunt/quicktype.yue:1799
      require('shunt.spec')._expect_that([=[(-> T '{number -> string}', nil)]=], (function() -- shunt/quicktype.yue:1801
        return T('{number -> string}', nil) -- shunt/quicktype.yue:1801
      end), (errors(matches('incorrect type: expected table but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1801)); -- shunt/quicktype.yue:1801
      require('shunt.spec')._expect_that([=[(-> T '{number -> string}', {123})]=], (function() -- shunt/quicktype.yue:1802
        return T('{number -> string}', { -- shunt/quicktype.yue:1802
          123 -- shunt/quicktype.yue:1802
        }) -- shunt/quicktype.yue:1802
      end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1802)); -- shunt/quicktype.yue:1802
      require('shunt.spec')._expect_that([=[(-> T '{number -> string}', {'hello', 'world', 'foo', 'bar', 'baz', 123})]=], (function() -- shunt/quicktype.yue:1803
        return T('{number -> string}', { -- shunt/quicktype.yue:1803
          'hello', -- shunt/quicktype.yue:1803
          'world', -- shunt/quicktype.yue:1803
          'foo', -- shunt/quicktype.yue:1803
          'bar', -- shunt/quicktype.yue:1803
          'baz', -- shunt/quicktype.yue:1803
          123 -- shunt/quicktype.yue:1803
        }) -- shunt/quicktype.yue:1803
      end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1803)); -- shunt/quicktype.yue:1803
      return require('shunt.spec')._expect_that([=[(-> T '{<>: {}, string -> number}', {})]=], (function() -- shunt/quicktype.yue:1804
        return T('{<>: {}, string -> number}', { }) -- shunt/quicktype.yue:1804
      end), (errors(matches('incorrect type: expected table but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1804)) -- shunt/quicktype.yue:1804
    end) -- shunt/quicktype.yue:1795
    it('checks structs', function() -- shunt/quicktype.yue:1806
      require('shunt.spec')._expect_that([=[(-> T '{}', {})]=], (function() -- shunt/quicktype.yue:1807
        return T('{}', { }) -- shunt/quicktype.yue:1807
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1807)); -- shunt/quicktype.yue:1807
      require('shunt.spec')._expect_that([=[(-> T '{}', {123})]=], (function() -- shunt/quicktype.yue:1808
        return T('{}', { -- shunt/quicktype.yue:1808
          123 -- shunt/quicktype.yue:1808
        }) -- shunt/quicktype.yue:1808
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1808)); -- shunt/quicktype.yue:1808
      require('shunt.spec')._expect_that([=[(-> T '{}', {hello: 123})]=], (function() -- shunt/quicktype.yue:1809
        return T('{}', { -- shunt/quicktype.yue:1809
          hello = 123 -- shunt/quicktype.yue:1809
        }) -- shunt/quicktype.yue:1809
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1809)); -- shunt/quicktype.yue:1809
      require('shunt.spec')._expect_that([=[(-> T '{hello: string}', {hello: 'hello'})]=], (function() -- shunt/quicktype.yue:1810
        return T('{hello: string}', { -- shunt/quicktype.yue:1810
          hello = 'hello' -- shunt/quicktype.yue:1810
        }) -- shunt/quicktype.yue:1810
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1810)); -- shunt/quicktype.yue:1810
      require('shunt.spec')._expect_that([=[(-> T '{hello: {world: string}}', {hello: world: 'world'})]=], (function() -- shunt/quicktype.yue:1811
        return T('{hello: {world: string}}', { -- shunt/quicktype.yue:1811
          hello = { -- shunt/quicktype.yue:1811
            world = 'world' -- shunt/quicktype.yue:1811
          } -- shunt/quicktype.yue:1811
        }) -- shunt/quicktype.yue:1811
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1811)); -- shunt/quicktype.yue:1811
      require('shunt.spec')._expect_that([=[(-> T '{hello: {world: string}, foo: boolean}', hello: {world:'asdf'}, foo: true)]=], (function() -- shunt/quicktype.yue:1812
        return T('{hello: {world: string}, foo: boolean}', { -- shunt/quicktype.yue:1812
          hello = { -- shunt/quicktype.yue:1812
            world = 'asdf' -- shunt/quicktype.yue:1812
          }, -- shunt/quicktype.yue:1812
          foo = true -- shunt/quicktype.yue:1812
        }) -- shunt/quicktype.yue:1812
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1812)); -- shunt/quicktype.yue:1812
      require('shunt.spec')._expect_that([=[(-> T '{<>: {}}', <>: {})]=], (function() -- shunt/quicktype.yue:1813
        return T('{<>: {}}', setmetatable({ }, { })) -- shunt/quicktype.yue:1813
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1813)); -- shunt/quicktype.yue:1813
      require('shunt.spec')._expect_that([=[(-> T '{}', 132)]=], (function() -- shunt/quicktype.yue:1815
        return T('{}', 132) -- shunt/quicktype.yue:1815
      end), (errors(matches('incorrect type: expected table but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1815)); -- shunt/quicktype.yue:1815
      require('shunt.spec')._expect_that([=[(-> T '{hello: string}', {})]=], (function() -- shunt/quicktype.yue:1816
        return T('{hello: string}', { }) -- shunt/quicktype.yue:1816
      end), (errors(matches('incorrect type: expected string but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1816)); -- shunt/quicktype.yue:1816
      require('shunt.spec')._expect_that([=[(-> T '{hello: string}', hello: 123)]=], (function() -- shunt/quicktype.yue:1817
        return T('{hello: string}', { -- shunt/quicktype.yue:1817
          hello = 123 -- shunt/quicktype.yue:1817
        }) -- shunt/quicktype.yue:1817
      end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1817)); -- shunt/quicktype.yue:1817
      require('shunt.spec')._expect_that([=[(-> T '{hello: {world: string}}', hello: 123)]=], (function() -- shunt/quicktype.yue:1818
        return T('{hello: {world: string}}', { -- shunt/quicktype.yue:1818
          hello = 123 -- shunt/quicktype.yue:1818
        }) -- shunt/quicktype.yue:1818
      end), (errors(matches('incorrect type: expected table but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1818)); -- shunt/quicktype.yue:1818
      require('shunt.spec')._expect_that([=[(-> T '{hello: {world: string}}', hello: {})]=], (function() -- shunt/quicktype.yue:1819
        return T('{hello: {world: string}}', { -- shunt/quicktype.yue:1819
          hello = { } -- shunt/quicktype.yue:1819
        }) -- shunt/quicktype.yue:1819
      end), (errors(matches('incorrect type: expected string but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1819)); -- shunt/quicktype.yue:1819
      require('shunt.spec')._expect_that([=[(-> T '{hello: {world: string}}', hello: world: 123)]=], (function() -- shunt/quicktype.yue:1820
        return T('{hello: {world: string}}', { -- shunt/quicktype.yue:1820
          hello = { -- shunt/quicktype.yue:1820
            world = 123 -- shunt/quicktype.yue:1820
          } -- shunt/quicktype.yue:1820
        }) -- shunt/quicktype.yue:1820
      end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1820)); -- shunt/quicktype.yue:1820
      require('shunt.spec')._expect_that([=[(-> T '{hello: {world: string}, foo: boolean}', hello: {world:'asdf'}, foo: 123)]=], (function() -- shunt/quicktype.yue:1821
        return T('{hello: {world: string}, foo: boolean}', { -- shunt/quicktype.yue:1821
          hello = { -- shunt/quicktype.yue:1821
            world = 'asdf' -- shunt/quicktype.yue:1821
          }, -- shunt/quicktype.yue:1821
          foo = 123 -- shunt/quicktype.yue:1821
        }) -- shunt/quicktype.yue:1821
      end), (errors(matches('incorrect type: expected boolean but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1821)); -- shunt/quicktype.yue:1821
      return require('shunt.spec')._expect_that([=[(-> T '{<>: {}}', {})]=], (function() -- shunt/quicktype.yue:1822
        return T('{<>: {}}', { }) -- shunt/quicktype.yue:1822
      end), (errors(matches('incorrect type: expected table but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1822)) -- shunt/quicktype.yue:1822
    end) -- shunt/quicktype.yue:1806
    it('checks table-likes', function() -- shunt/quicktype.yue:1824
      return require('shunt.spec')._expect_that([=[(-> T '~{char: function}', '')]=], (function() -- shunt/quicktype.yue:1829
        return T('~{char: function}', '') -- shunt/quicktype.yue:1829
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1829)) -- shunt/quicktype.yue:1829
    end) -- shunt/quicktype.yue:1824
    it('checks functions', function() -- shunt/quicktype.yue:1831
      require('shunt.spec')._expect_that([=[(-> T '() -> nil', ->)]=], (function() -- shunt/quicktype.yue:1832
        return T('() -> nil', function() end) -- shunt/quicktype.yue:1832
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1832)); -- shunt/quicktype.yue:1832
      require('shunt.spec')._expect_that([=[(-> T '() -> nil', -> nil)]=], (function() -- shunt/quicktype.yue:1833
        return T('() -> nil', function() -- shunt/quicktype.yue:1833
          return nil -- shunt/quicktype.yue:1833
        end) -- shunt/quicktype.yue:1833
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1833)); -- shunt/quicktype.yue:1833
      return require('shunt.spec')._expect_that([=[(-> T '() -> nil', {})]=], (function() -- shunt/quicktype.yue:1834
        return T('() -> nil', { }) -- shunt/quicktype.yue:1834
      end), (errors(matches('incorrect type: expected function but got table'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1834)) -- shunt/quicktype.yue:1834
    end) -- shunt/quicktype.yue:1831
    it('checks conjunctions', function() -- shunt/quicktype.yue:1836
      require('shunt.spec')._expect_that([=[(-> T '[string]+{number}', {'a', 'b', 'c'})]=], (function() -- shunt/quicktype.yue:1837
        return T('[string]+{number}', { -- shunt/quicktype.yue:1837
          'a', -- shunt/quicktype.yue:1837
          'b', -- shunt/quicktype.yue:1837
          'c' -- shunt/quicktype.yue:1837
        }) -- shunt/quicktype.yue:1837
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1837)); -- shunt/quicktype.yue:1837
      require('shunt.spec')._expect_that([=[(-> T 'string+number', 123)]=], (function() -- shunt/quicktype.yue:1839
        return T('string+number', 123) -- shunt/quicktype.yue:1839
      end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1839)); -- shunt/quicktype.yue:1839
      return require('shunt.spec')._expect_that([=[(-> T 'string+number', 'hello')]=], (function() -- shunt/quicktype.yue:1840
        return T('string+number', 'hello') -- shunt/quicktype.yue:1840
      end), (errors(matches('incorrect type: expected number but got string'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1840)) -- shunt/quicktype.yue:1840
    end) -- shunt/quicktype.yue:1836
    it('checks disjunctions', function() -- shunt/quicktype.yue:1842
      require('shunt.spec')._expect_that([=[(-> T 'string|number', 'hello')]=], (function() -- shunt/quicktype.yue:1843
        return T('string|number', 'hello') -- shunt/quicktype.yue:1843
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1843)); -- shunt/quicktype.yue:1843
      require('shunt.spec')._expect_that([=[(-> T 'string|number', 123)]=], (function() -- shunt/quicktype.yue:1844
        return T('string|number', 123) -- shunt/quicktype.yue:1844
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1844)); -- shunt/quicktype.yue:1844
      return require('shunt.spec')._expect_that([=[(-> T 'string|number', true)]=], (function() -- shunt/quicktype.yue:1845
        return T('string|number', true) -- shunt/quicktype.yue:1845
      end), (errors(matches('incorrect type: expected string|number but got boolean'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1845)) -- shunt/quicktype.yue:1845
    end) -- shunt/quicktype.yue:1842
    it('checks nested inline disjunctions', function() -- shunt/quicktype.yue:1847
      require('shunt.spec')._expect_that([=[(-> T 'number|{string|number}|string', 'hello')]=], (function() -- shunt/quicktype.yue:1848
        return T('number|{string|number}|string', 'hello') -- shunt/quicktype.yue:1848
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1848)); -- shunt/quicktype.yue:1848
      require('shunt.spec')._expect_that([=[(-> T 'number|{string|number}|string', {hello: true})]=], (function() -- shunt/quicktype.yue:1849
        return T('number|{string|number}|string', { -- shunt/quicktype.yue:1849
          hello = true -- shunt/quicktype.yue:1849
        }) -- shunt/quicktype.yue:1849
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1849)); -- shunt/quicktype.yue:1849
      require('shunt.spec')._expect_that([=[(-> T 'number|{string|number}|string', {[1]: true})]=], (function() -- shunt/quicktype.yue:1850
        return T('number|{string|number}|string', { -- shunt/quicktype.yue:1850
          [1] = true -- shunt/quicktype.yue:1850
        }) -- shunt/quicktype.yue:1850
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1850)); -- shunt/quicktype.yue:1850
      return require('shunt.spec')._expect_that([=[(-> T 'number|{string|number}|string', ->)]=], (function() -- shunt/quicktype.yue:1851
        return T('number|{string|number}|string', function() end) -- shunt/quicktype.yue:1851
      end), (errors(matches('incorrect type: expected number|{string|number}|string but got function'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1851)) -- shunt/quicktype.yue:1851
    end) -- shunt/quicktype.yue:1847
    return it('checks nested recursive disjunctions', function() -- shunt/quicktype.yue:1853
      declare_type('InnerDisjunction', 'string|number'); -- shunt/quicktype.yue:1854
      require('shunt.spec')._expect_that([=[(-> T 'boolean|InnerDisjunction|function', true)]=], (function() -- shunt/quicktype.yue:1855
        return T('boolean|InnerDisjunction|function', true) -- shunt/quicktype.yue:1855
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1855)); -- shunt/quicktype.yue:1855
      require('shunt.spec')._expect_that([=[(-> T 'boolean|InnerDisjunction|function', 'hello')]=], (function() -- shunt/quicktype.yue:1856
        return T('boolean|InnerDisjunction|function', 'hello') -- shunt/quicktype.yue:1856
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1856)); -- shunt/quicktype.yue:1856
      require('shunt.spec')._expect_that([=[(-> T 'boolean|InnerDisjunction|function', 123)]=], (function() -- shunt/quicktype.yue:1857
        return T('boolean|InnerDisjunction|function', 123) -- shunt/quicktype.yue:1857
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1857)); -- shunt/quicktype.yue:1857
      require('shunt.spec')._expect_that([=[(-> T 'boolean|InnerDisjunction|function', ->)]=], (function() -- shunt/quicktype.yue:1858
        return T('boolean|InnerDisjunction|function', function() end) -- shunt/quicktype.yue:1858
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1858)); -- shunt/quicktype.yue:1858
      return require('shunt.spec')._expect_that([=[(-> T 'boolean|InnerDisjunction|function', {})]=], (function() -- shunt/quicktype.yue:1860
        return T('boolean|InnerDisjunction|function', { }) -- shunt/quicktype.yue:1860
      end), (errors(matches('incorrect type: expected boolean|InnerDisjunction|function but got table'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1860)) -- shunt/quicktype.yue:1860
    end) -- shunt/quicktype.yue:1860
  end) -- shunt/quicktype.yue:1676
  describe('is', function() -- shunt/quicktype.yue:1862
    it('requires two arguments', function() -- shunt/quicktype.yue:1863
      return require('shunt.spec')._expect_that([=[(-> is!)]=], (function() -- shunt/quicktype.yue:1864
        return is() -- shunt/quicktype.yue:1864
      end), (errors(matches('cannot typecheck: no type spec provided'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1864)) -- shunt/quicktype.yue:1864
    end) -- shunt/quicktype.yue:1863
    it('returns correctly in matching case', function() -- shunt/quicktype.yue:1866
      local ok, err = is('string', 'asdf'); -- shunt/quicktype.yue:1867
      require('shunt.spec')._expect_that([=[ok]=], ok, (eq(true)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1868)); -- shunt/quicktype.yue:1868
      return require('shunt.spec')._expect_that([=[err]=], err, (eq(nil)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1869)) -- shunt/quicktype.yue:1869
    end) -- shunt/quicktype.yue:1866
    return it('returns correctly in non-matching case', function() -- shunt/quicktype.yue:1871
      local ok, err = is('nil', 'asdf'); -- shunt/quicktype.yue:1872
      require('shunt.spec')._expect_that([=[ok]=], ok, (eq(false)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1873)); -- shunt/quicktype.yue:1873
      return require('shunt.spec')._expect_that([=[err]=], err, (matches('incorrect type')), tostring("shunt/quicktype.yue") .. ":" .. tostring(1874)) -- shunt/quicktype.yue:1874
    end) -- shunt/quicktype.yue:1874
  end) -- shunt/quicktype.yue:1862
  describe('declare_type', function() -- shunt/quicktype.yue:1876
    it('requires two arguments', function() -- shunt/quicktype.yue:1877
      require('shunt.spec')._expect_that([=[(-> declare_type!)]=], (function() -- shunt/quicktype.yue:1878
        return declare_type() -- shunt/quicktype.yue:1878
      end), (errors(matches('declare_type requires a name'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1878)); -- shunt/quicktype.yue:1878
      require('shunt.spec')._expect_that([=[(-> declare_type 'TwoArgs')]=], (function() -- shunt/quicktype.yue:1879
        return declare_type('TwoArgs') -- shunt/quicktype.yue:1879
      end), (errors(matches('declare_type requires a type_spec'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1879)); -- shunt/quicktype.yue:1879
      require('shunt.spec')._expect_that([=[(-> declare_type 123, 'string')]=], (function() -- shunt/quicktype.yue:1880
        return declare_type(123, 'string') -- shunt/quicktype.yue:1880
      end), (errors(matches('declare_type requires a string name'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1880)); -- shunt/quicktype.yue:1880
      return require('shunt.spec')._expect_that([=[(-> declare_type 'TwoArgs', 123)]=], (function() -- shunt/quicktype.yue:1881
        return declare_type('TwoArgs', 123) -- shunt/quicktype.yue:1881
      end), (errors(matches('declare_type requires a string type_spec'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1881)) -- shunt/quicktype.yue:1881
    end) -- shunt/quicktype.yue:1877
    it('rejects false primitives', function() -- shunt/quicktype.yue:1883
      return require('shunt.spec')._expect_that([=[(-> declare_type 'user', 'string')]=], (function() -- shunt/quicktype.yue:1884
        return declare_type('user', 'string') -- shunt/quicktype.yue:1884
      end), (errors(matches('user types must start with uppercase'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1884)) -- shunt/quicktype.yue:1884
    end) -- shunt/quicktype.yue:1883
    it('rejects redefinition', function() -- shunt/quicktype.yue:1886
      declare_type('AlreadyDefined', 'number'); -- shunt/quicktype.yue:1887
      return require('shunt.spec')._expect_that([=[(-> declare_type 'AlreadyDefined', 'string')]=], (function() -- shunt/quicktype.yue:1888
        return declare_type('AlreadyDefined', 'string') -- shunt/quicktype.yue:1888
      end), (errors(matches([[cannot redefine type 'AlreadyDefined']]))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1888)) -- shunt/quicktype.yue:1888
    end) -- shunt/quicktype.yue:1886
    it('supports non-recursive types', function() -- shunt/quicktype.yue:1890
      declare_type('NonRecursive', '[string]'); -- shunt/quicktype.yue:1891
      require('shunt.spec')._expect_that([=[(-> T '[NonRecursive]', {{'hello'}})]=], (function() -- shunt/quicktype.yue:1892
        return T('[NonRecursive]', { -- shunt/quicktype.yue:1892
          { -- shunt/quicktype.yue:1892
            'hello' -- shunt/quicktype.yue:1892
          } -- shunt/quicktype.yue:1892
        }) -- shunt/quicktype.yue:1892
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1892)) -- shunt/quicktype.yue:1892
      declare_type('prefixed.NonRecursive', '[string]'); -- shunt/quicktype.yue:1894
      return require('shunt.spec')._expect_that([=[(-> T '[prefixed.NonRecursive]', {{'hello'}})]=], (function() -- shunt/quicktype.yue:1895
        return T('[prefixed.NonRecursive]', { -- shunt/quicktype.yue:1895
          { -- shunt/quicktype.yue:1895
            'hello' -- shunt/quicktype.yue:1895
          } -- shunt/quicktype.yue:1895
        }) -- shunt/quicktype.yue:1895
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1895)) -- shunt/quicktype.yue:1895
    end) -- shunt/quicktype.yue:1890
    return it('supports recursive types', function() -- shunt/quicktype.yue:1897
      declare_type('Recursive', '[?Recursive]'); -- shunt/quicktype.yue:1898
      require('shunt.spec')._expect_that([=[(-> T 'Recursive', {{{{{nil}}}}})]=], (function() -- shunt/quicktype.yue:1899
        return T('Recursive', { -- shunt/quicktype.yue:1899
          { -- shunt/quicktype.yue:1899
            { -- shunt/quicktype.yue:1899
              { -- shunt/quicktype.yue:1899
                { -- shunt/quicktype.yue:1899
                  nil -- shunt/quicktype.yue:1899
                } -- shunt/quicktype.yue:1899
              } -- shunt/quicktype.yue:1899
            } -- shunt/quicktype.yue:1899
          } -- shunt/quicktype.yue:1899
        }) -- shunt/quicktype.yue:1899
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1899)); -- shunt/quicktype.yue:1899
      require('shunt.spec')._expect_that([=[(-> T 'Recursive', {{{{{'asdf'}}}}})]=], (function() -- shunt/quicktype.yue:1900
        return T('Recursive', { -- shunt/quicktype.yue:1900
          { -- shunt/quicktype.yue:1900
            { -- shunt/quicktype.yue:1900
              { -- shunt/quicktype.yue:1900
                { -- shunt/quicktype.yue:1900
                  'asdf' -- shunt/quicktype.yue:1900
                } -- shunt/quicktype.yue:1900
              } -- shunt/quicktype.yue:1900
            } -- shunt/quicktype.yue:1900
          } -- shunt/quicktype.yue:1900
        }) -- shunt/quicktype.yue:1900
      end), (errors(matches('incorrect type: expected table but got string'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1900)) -- shunt/quicktype.yue:1900
      declare_type('MutuallyRecursive1', '?MutuallyRecursive2') -- shunt/quicktype.yue:1902
      declare_type('MutuallyRecursive2', 'MutuallyRecursive1'); -- shunt/quicktype.yue:1903
      require('shunt.spec')._expect_that([=[(-> T 'MutuallyRecursive1', nil)]=], (function() -- shunt/quicktype.yue:1904
        return T('MutuallyRecursive1', nil) -- shunt/quicktype.yue:1904
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1904)); -- shunt/quicktype.yue:1904
      return require('shunt.spec')._expect_that([=[(-> T 'MutuallyRecursive1', 'asdf')]=], (function() -- shunt/quicktype.yue:1905
        return T('MutuallyRecursive1', 'asdf') -- shunt/quicktype.yue:1905
      end), (errors(matches('type checker recursed too many times'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1905)) -- shunt/quicktype.yue:1905
    end) -- shunt/quicktype.yue:1905
  end) -- shunt/quicktype.yue:1876
  describe('declare_singleton_type', function() -- shunt/quicktype.yue:1907
    it('requires a valid name', function() -- shunt/quicktype.yue:1908
      require('shunt.spec')._expect_that([=[declare_singleton_type]=], declare_singleton_type, (errors(matches('requires a value'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1909)); -- shunt/quicktype.yue:1909
      require('shunt.spec')._expect_that([=[(-> declare_singleton_type {})]=], (function() -- shunt/quicktype.yue:1911
        return declare_singleton_type({ }) -- shunt/quicktype.yue:1911
      end), (errors(matches("user types must start with an uppercase letter"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1911)); -- shunt/quicktype.yue:1911
      require('shunt.spec')._expect_that([==[(-> declare_singleton_type <tostring>: => 'Has space')]==], (function() -- shunt/quicktype.yue:1912
        return declare_singleton_type(setmetatable({ }, { -- shunt/quicktype.yue:1912
          __tostring = function(self) -- shunt/quicktype.yue:1912
            return 'Has space' -- shunt/quicktype.yue:1912
          end -- shunt/quicktype.yue:1912
        })) -- shunt/quicktype.yue:1912
      end), (errors(matches("cannot declare type 'Has space': not a valid identifier"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1912)); -- shunt/quicktype.yue:1912
      return require('shunt.spec')._expect_that([==[(-> declare_singleton_type <tostring>: => 'SingletonTable')]==], (function() -- shunt/quicktype.yue:1913
        return declare_singleton_type(setmetatable({ }, { -- shunt/quicktype.yue:1913
          __tostring = function(self) -- shunt/quicktype.yue:1913
            return 'SingletonTable' -- shunt/quicktype.yue:1913
          end -- shunt/quicktype.yue:1913
        })) -- shunt/quicktype.yue:1913
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1913)) -- shunt/quicktype.yue:1913
    end) -- shunt/quicktype.yue:1908
    it('requires a unique name', function() -- shunt/quicktype.yue:1915
      local NAME = 'UniqueSingleton' -- shunt/quicktype.yue:1916
      declare_singleton_type(setmetatable({ }, { -- shunt/quicktype.yue:1917
        __tostring = function(self) -- shunt/quicktype.yue:1917
          return NAME -- shunt/quicktype.yue:1917
        end -- shunt/quicktype.yue:1917
      })); -- shunt/quicktype.yue:1917
      return require('shunt.spec')._expect_that([==[(-> declare_singleton_type <tostring>: => NAME)]==], (function() -- shunt/quicktype.yue:1918
        return declare_singleton_type(setmetatable({ }, { -- shunt/quicktype.yue:1918
          __tostring = function(self) -- shunt/quicktype.yue:1918
            return NAME -- shunt/quicktype.yue:1918
          end -- shunt/quicktype.yue:1918
        })) -- shunt/quicktype.yue:1918
      end), (errors(matches("cannot redefine type '" .. tostring(NAME) .. "'"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1918)) -- shunt/quicktype.yue:1918
    end) -- shunt/quicktype.yue:1915
    return it('rejects primitives', function() -- shunt/quicktype.yue:1920
      require('shunt.spec')._expect_that([=[(-> declare_singleton_type 123)]=], (function() -- shunt/quicktype.yue:1921
        return declare_singleton_type(123) -- shunt/quicktype.yue:1921
      end), (errors(matches('declare_singleton_type requires a table value'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1921)); -- shunt/quicktype.yue:1921
      return require('shunt.spec')._expect_that([=[(-> declare_singleton_type 'hello')]=], (function() -- shunt/quicktype.yue:1922
        return declare_singleton_type('hello') -- shunt/quicktype.yue:1922
      end), (errors(matches('declare_singleton_type requires a table value'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1922)) -- shunt/quicktype.yue:1922
    end) -- shunt/quicktype.yue:1922
  end) -- shunt/quicktype.yue:1907
  describe('F', function() -- shunt/quicktype.yue:1924
    it('requires two arguments', function() -- shunt/quicktype.yue:1925
      require('shunt.spec')._expect_that([=[(-> F!)]=], (function() -- shunt/quicktype.yue:1926
        return F() -- shunt/quicktype.yue:1926
      end), (errors(matches('cannot typecheck: no type spec provided'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1926)); -- shunt/quicktype.yue:1926
      require('shunt.spec')._expect_that([=[(-> F '() -> nil')]=], (function() -- shunt/quicktype.yue:1927
        return F('() -> nil') -- shunt/quicktype.yue:1927
      end), (errors(matches('cannot typecheck: no function provided'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1927)); -- shunt/quicktype.yue:1927
      return require('shunt.spec')._expect_that([=[(-> F '() -> nil', 'interloper')]=], (function() -- shunt/quicktype.yue:1928
        return F('() -> nil', 'interloper') -- shunt/quicktype.yue:1928
      end), (errors(matches('cannot typecheck: no function provided'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1928)) -- shunt/quicktype.yue:1928
    end) -- shunt/quicktype.yue:1925
    it('returns its second argument', function() -- shunt/quicktype.yue:1930
      local f = F('(number, number) -> number', function(a, b) -- shunt/quicktype.yue:1931
        return a + b -- shunt/quicktype.yue:1931
      end); -- shunt/quicktype.yue:1931
      return require('shunt.spec')._expect_that([=[(f 1, 2)]=], (f(1, 2)), (eq(3)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1932)) -- shunt/quicktype.yue:1932
    end) -- shunt/quicktype.yue:1930
    it('accepts none returns', function() -- shunt/quicktype.yue:1934
      return require('shunt.spec')._expect_that([=[(-> (F '() -> <>', ->)!)]=], (function() -- shunt/quicktype.yue:1935
        return (F('() -> <>', function() end))() -- shunt/quicktype.yue:1935
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1935)) -- shunt/quicktype.yue:1935
    end) -- shunt/quicktype.yue:1934
    it('accepts nil returns', function() -- shunt/quicktype.yue:1937
      return require('shunt.spec')._expect_that([=[(-> (F '() -> nil', -> nil)!)]=], (function() -- shunt/quicktype.yue:1938
        return (F('() -> nil', function() -- shunt/quicktype.yue:1938
          return nil -- shunt/quicktype.yue:1938
        end))() -- shunt/quicktype.yue:1938
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1938)) -- shunt/quicktype.yue:1938
    end) -- shunt/quicktype.yue:1937
    it('accepts absent optional arguments', function() -- shunt/quicktype.yue:1940
      return require('shunt.spec')._expect_that([=[(-> (F '() -> ?string', ->)!)]=], (function() -- shunt/quicktype.yue:1941
        return (F('() -> ?string', function() end))() -- shunt/quicktype.yue:1941
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1941)) -- shunt/quicktype.yue:1941
    end) -- shunt/quicktype.yue:1940
    it('accepts remainder arguments', function() -- shunt/quicktype.yue:1943
      require('shunt.spec')._expect_that([=[(-> (F '(string...) -> nil', ->)!)]=], (function() -- shunt/quicktype.yue:1944
        return (F('(string...) -> nil', function() end))() -- shunt/quicktype.yue:1944
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1944)); -- shunt/quicktype.yue:1944
      require('shunt.spec')._expect_that([=[(-> (F '(string...) -> nil', ->) 'hello', 'world')]=], (function() -- shunt/quicktype.yue:1945
        return (F('(string...) -> nil', function() end))('hello', 'world') -- shunt/quicktype.yue:1945
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1945)); -- shunt/quicktype.yue:1945
      require('shunt.spec')._expect_that([=[(-> (F '(number, string...) -> nil', ->) 123, 'hello', 'world')]=], (function() -- shunt/quicktype.yue:1946
        return (F('(number, string...) -> nil', function() end))(123, 'hello', 'world') -- shunt/quicktype.yue:1946
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1946)); -- shunt/quicktype.yue:1946
      return require('shunt.spec')._expect_that([=[(-> (F '(number, string...) -> nil', (...) ->) 123, 'hello', true)]=], (function() -- shunt/quicktype.yue:1948
        return (F('(number, string...) -> nil', function(...) end))(123, 'hello', true) -- shunt/quicktype.yue:1948
      end), (errors(matches('incorrect type: expected string but got boolean'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1948)) -- shunt/quicktype.yue:1948
    end) -- shunt/quicktype.yue:1943
    it('accepts absent optional returns', function() -- shunt/quicktype.yue:1950
      return require('shunt.spec')._expect_that([=[(-> (F '() -> nil', ->)!)]=], (function() -- shunt/quicktype.yue:1951
        return (F('() -> nil', function() end))() -- shunt/quicktype.yue:1951
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1951)) -- shunt/quicktype.yue:1951
    end) -- shunt/quicktype.yue:1950
    it('accepts multiple return values', function() -- shunt/quicktype.yue:1953
      return require('shunt.spec')._expect_that([=[(-> (F '() -> <string, boolean>', -> 'a', true)!)]=], (function() -- shunt/quicktype.yue:1954
        return (F('() -> <string, boolean>', function() -- shunt/quicktype.yue:1954
          return 'a', true -- shunt/quicktype.yue:1954
        end))() -- shunt/quicktype.yue:1954
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1954)) -- shunt/quicktype.yue:1954
    end) -- shunt/quicktype.yue:1953
    it('accepts remainder return values', function() -- shunt/quicktype.yue:1956
      require('shunt.spec')._expect_that([=[(-> (F '() -> string...', ->)!)]=], (function() -- shunt/quicktype.yue:1957
        return (F('() -> string...', function() end))() -- shunt/quicktype.yue:1957
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1957)); -- shunt/quicktype.yue:1957
      require('shunt.spec')._expect_that([=[(-> (F '() -> string...', -> 'hello', 'world')!)]=], (function() -- shunt/quicktype.yue:1958
        return (F('() -> string...', function() -- shunt/quicktype.yue:1958
          return 'hello', 'world' -- shunt/quicktype.yue:1958
        end))() -- shunt/quicktype.yue:1958
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1958)); -- shunt/quicktype.yue:1958
      require('shunt.spec')._expect_that([=[(-> (F '() -> <number, string...>', -> 123, 'hello', 'world')!)]=], (function() -- shunt/quicktype.yue:1959
        return (F('() -> <number, string...>', function() -- shunt/quicktype.yue:1959
          return 123, 'hello', 'world' -- shunt/quicktype.yue:1959
        end))() -- shunt/quicktype.yue:1959
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1959)); -- shunt/quicktype.yue:1959
      return require('shunt.spec')._expect_that([=[(-> (F '() -> <number, string...>', -> 123, 'hello', true)!)]=], (function() -- shunt/quicktype.yue:1961
        return (F('() -> <number, string...>', function() -- shunt/quicktype.yue:1961
          return 123, 'hello', true -- shunt/quicktype.yue:1961
        end))() -- shunt/quicktype.yue:1961
      end), (errors(matches('incorrect type: expected string but got boolean'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1961)) -- shunt/quicktype.yue:1961
    end) -- shunt/quicktype.yue:1956
    it('prevents execution on invalid args', function() -- shunt/quicktype.yue:1963
      return require('shunt.spec')._expect_that([=[(-> (F '(string) -> nil', -> error 'OH NO') 123)]=], (function() -- shunt/quicktype.yue:1964
        return (F('(string) -> nil', function() -- shunt/quicktype.yue:1964
          return error('OH NO') -- shunt/quicktype.yue:1964
        end))(123) -- shunt/quicktype.yue:1964
      end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1964)) -- shunt/quicktype.yue:1964
    end) -- shunt/quicktype.yue:1963
    it('rejects non-function types', function() -- shunt/quicktype.yue:1966
      return require('shunt.spec')._expect_that([=[(-> F '{}', ->)]=], (function() -- shunt/quicktype.yue:1967
        return F('{}', function() end) -- shunt/quicktype.yue:1967
      end), (errors(matches('cannot typecheck: expected a function type'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1967)) -- shunt/quicktype.yue:1967
    end) -- shunt/quicktype.yue:1966
    it('rejects incorrect-type arguments', function() -- shunt/quicktype.yue:1969
      return require('shunt.spec')._expect_that([=[(-> (F '(string) -> table', ->) 123)]=], (function() -- shunt/quicktype.yue:1970
        return (F('(string) -> table', function() end))(123) -- shunt/quicktype.yue:1970
      end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1970)) -- shunt/quicktype.yue:1970
    end) -- shunt/quicktype.yue:1969
    it('rejects extra arguments', function() -- shunt/quicktype.yue:1972
      return require('shunt.spec')._expect_that([=[(-> (F '(string) -> table', ->) 'a', 'b')]=], (function() -- shunt/quicktype.yue:1973
        return (F('(string) -> table', function() end))('a', 'b') -- shunt/quicktype.yue:1973
      end), (errors(matches('function given too many arguments'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1973)) -- shunt/quicktype.yue:1973
    end) -- shunt/quicktype.yue:1972
    it('rejects incorrect-type return values', function() -- shunt/quicktype.yue:1975
      return require('shunt.spec')._expect_that([=[(-> (F '(table) -> string', ->) {})]=], (function() -- shunt/quicktype.yue:1976
        return (F('(table) -> string', function() end))({ }) -- shunt/quicktype.yue:1976
      end), (errors(matches('incorrect type: expected string but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1976)) -- shunt/quicktype.yue:1976
    end) -- shunt/quicktype.yue:1975
    it('rejects extra return arguments', function() -- shunt/quicktype.yue:1978
      return require('shunt.spec')._expect_that([=[(-> (F '() -> string', -> 'a', 'b')!)]=], (function() -- shunt/quicktype.yue:1979
        return (F('() -> string', function() -- shunt/quicktype.yue:1979
          return 'a', 'b' -- shunt/quicktype.yue:1979
        end))() -- shunt/quicktype.yue:1979
      end), (errors(matches('function returned too many values'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1979)) -- shunt/quicktype.yue:1979
    end) -- shunt/quicktype.yue:1978
    it('rejects multiple incorrect return values', function() -- shunt/quicktype.yue:1981
      require('shunt.spec')._expect_that([=[(-> (F '() -> <string, boolean>', -> {}, true)!)]=], (function() -- shunt/quicktype.yue:1982
        return (F('() -> <string, boolean>', function() -- shunt/quicktype.yue:1982
          return { }, true -- shunt/quicktype.yue:1982
        end))() -- shunt/quicktype.yue:1982
      end), (errors(matches('incorrect type: expected string but got table'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1982)); -- shunt/quicktype.yue:1982
      return require('shunt.spec')._expect_that([=[(-> (F '() -> <string, boolean>', -> 'asdf', {})!)]=], (function() -- shunt/quicktype.yue:1983
        return (F('() -> <string, boolean>', function() -- shunt/quicktype.yue:1983
          return 'asdf', { } -- shunt/quicktype.yue:1983
        end))() -- shunt/quicktype.yue:1983
      end), (errors(matches('incorrect type: expected boolean but got table'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1983)) -- shunt/quicktype.yue:1983
    end) -- shunt/quicktype.yue:1981
    it('accepts methods', function() -- shunt/quicktype.yue:1985
      require('shunt.spec')._expect_that([==[(-> (F '(number) => <>', =>), {}, 123)]==], (function() -- shunt/quicktype.yue:1986
        return (F('(number) => <>', function(self) end)), { }, 123 -- shunt/quicktype.yue:1986
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1986)); -- shunt/quicktype.yue:1986
      return require('shunt.spec')._expect_that([==[(-> (F '(number) => <>', =>), 'recv', 123)]==], (function() -- shunt/quicktype.yue:1987
        return (F('(number) => <>', function(self) end)), 'recv', 123 -- shunt/quicktype.yue:1987
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1987)) -- shunt/quicktype.yue:1987
    end) -- shunt/quicktype.yue:1985
    it('requires a method receiver', function() -- shunt/quicktype.yue:1989
      return require('shunt.spec')._expect_that([==[(-> (F '() => <>', =>)!)]==], (function() -- shunt/quicktype.yue:1990
        return (F('() => <>', function(self) end))() -- shunt/quicktype.yue:1990
      end), (errors(matches("incorrect type: expected some but got nil"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1990)) -- shunt/quicktype.yue:1990
    end) -- shunt/quicktype.yue:1989
    return it('checks never', function() -- shunt/quicktype.yue:1992
      return require('shunt.spec')._expect_that([=[(-> (F '() -> !', ->)!)]=], (function() -- shunt/quicktype.yue:1993
        return (F('() -> !', function() end))() -- shunt/quicktype.yue:1993
      end), (errors(matches('never expected a value here'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1993)) -- shunt/quicktype.yue:1993
    end) -- shunt/quicktype.yue:1993
  end) -- shunt/quicktype.yue:1924
  describe('stats', function() -- shunt/quicktype.yue:1995
    return it('has the correct type', function() -- shunt/quicktype.yue:1996
      local prev_collect_stats = COLLECT_STATS -- shunt/quicktype.yue:1997
      COLLECT_STATS = true -- shunt/quicktype.yue:1998
      T('string', 'hello') -- shunt/quicktype.yue:2000
      local stats_arr = stats(); -- shunt/quicktype.yue:2001
      require('shunt.spec')._expect_that([=[stats_arr]=], stats_arr, (len(gt(0))), tostring("shunt/quicktype.yue") .. ":" .. tostring(2002)); -- shunt/quicktype.yue:2002
      require('shunt.spec')._expect_that([=[stats_arr]=], stats_arr, (each_value(has_fields({ -- shunt/quicktype.yue:2003
        count = ge(0) -- shunt/quicktype.yue:2003
      }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(2003)) -- shunt/quicktype.yue:2003
      COLLECT_STATS = prev_collect_stats -- shunt/quicktype.yue:2005
    end) -- shunt/quicktype.yue:2005
  end) -- shunt/quicktype.yue:1995
  describe('is_valid_type_spec', function() -- shunt/quicktype.yue:2007
    it('returns true on valid type specs', function() -- shunt/quicktype.yue:2008
      return require('shunt.spec')._expect_that([=[(is_valid_type_spec 'number')]=], (is_valid_type_spec('number')), (eq(true)), tostring("shunt/quicktype.yue") .. ":" .. tostring(2009)) -- shunt/quicktype.yue:2009
    end) -- shunt/quicktype.yue:2008
    return it('returns false on invalid type specs', function() -- shunt/quicktype.yue:2011
      require('shunt.spec')._expect_that([=[(is_valid_type_spec 'unknown')]=], (is_valid_type_spec('unknown')), (eq(false)), tostring("shunt/quicktype.yue") .. ":" .. tostring(2012)); -- shunt/quicktype.yue:2012
      require('shunt.spec')._expect_that([=[(is_valid_type_spec '(')]=], (is_valid_type_spec('(')), (eq(false)), tostring("shunt/quicktype.yue") .. ":" .. tostring(2013)); -- shunt/quicktype.yue:2013
      return require('shunt.spec')._expect_that([=[(is_valid_type_spec ')')]=], (is_valid_type_spec(')')), (eq(false)), tostring("shunt/quicktype.yue") .. ":" .. tostring(2014)) -- shunt/quicktype.yue:2014
    end) -- shunt/quicktype.yue:2014
  end) -- shunt/quicktype.yue:2007
  return describe('deactivate_typechecks', function() -- shunt/quicktype.yue:2016
    local activate_typechecks -- shunt/quicktype.yue:2017
    activate_typechecks = function() -- shunt/quicktype.yue:2017
      skip_typechecking = false -- shunt/quicktype.yue:2018
    end -- shunt/quicktype.yue:2017
    return it('deactivates typechecks', function() -- shunt/quicktype.yue:2020
      local received -- shunt/quicktype.yue:2021
      local f = F('(number) => <>', function(r) -- shunt/quicktype.yue:2022
        received = r -- shunt/quicktype.yue:2023
      end); -- shunt/quicktype.yue:2022
      require('shunt.spec')._assert_that([=[(-> f 'prepare for')]=], (function() -- shunt/quicktype.yue:2024
        return f('prepare for') -- shunt/quicktype.yue:2024
      end), (errors(anything())), tostring("shunt/quicktype.yue") .. ":" .. tostring(2024)) -- shunt/quicktype.yue:2024
      deactivate_typechecks(); -- shunt/quicktype.yue:2026
      require('shunt.spec')._assert_that([=[(-> f 'unforeseen')]=], (function() -- shunt/quicktype.yue:2027
        return f('unforeseen') -- shunt/quicktype.yue:2027
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(2027)) -- shunt/quicktype.yue:2027
      activate_typechecks(); -- shunt/quicktype.yue:2029
      return require('shunt.spec')._assert_that([=[(-> f 'consequences')]=], (function() -- shunt/quicktype.yue:2030
        return f('consequences') -- shunt/quicktype.yue:2030
      end), (errors(anything())), tostring("shunt/quicktype.yue") .. ":" .. tostring(2030)) -- shunt/quicktype.yue:2030
    end) -- shunt/quicktype.yue:2030
  end) -- shunt/quicktype.yue:2030
end) -- shunt/quicktype.yue:1394
return _module_0 -- shunt/quicktype.yue:2030
end
package.preload['shunt.spec'] = function(...)
-- [yue]: shunt/spec.yue
local _module_0 = { } -- shunt/spec.yue:1
local spec_fns, verbose, set_log_verbosity, log, spec, root_spec, current_spec, current_spec_kind, describe, it, declare_spec_section, Spec, FATAL_TEST_ERROR_MARKER, Test, expect_that, _expect_that, assert_that, _assert_that, get_caller_location, Anything, Some, Not, Eq, Compare, Near, DeepEq, Type, Matches, Len, ToStringsAs, NoErrors, Errors, Contains, Each, Fields, visible_chars, repr, is_list, can_sort, clone, matchers, reflow, testing, running_tests, run_tests -- shunt/spec.yue:1
spec_fns = nil -- shunt/spec.yue:3
verbose = false -- shunt/spec.yue:5
set_log_verbosity = function(v) -- shunt/spec.yue:6
  if v == nil then -- shunt/spec.yue:6
    v = true -- shunt/spec.yue:6
  end -- shunt/spec.yue:6
  verbose = v -- shunt/spec.yue:7
end -- shunt/spec.yue:6
_module_0["set_log_verbosity"] = set_log_verbosity -- shunt/spec.yue:7
log = function(msg) -- shunt/spec.yue:8
  if verbose then -- shunt/spec.yue:9
    return print(msg()) -- shunt/spec.yue:10
  end -- shunt/spec.yue:9
end -- shunt/spec.yue:8
spec = function(fn) -- shunt/spec.yue:12
  if not (spec_fns ~= nil) then -- shunt/spec.yue:13
    spec_fns = { } -- shunt/spec.yue:14
  end -- shunt/spec.yue:13
  spec_fns[#spec_fns + 1] = fn -- shunt/spec.yue:15
end -- shunt/spec.yue:12
_module_0["spec"] = spec -- shunt/spec.yue:15
root_spec = nil -- shunt/spec.yue:17
current_spec = nil -- shunt/spec.yue:18
current_spec_kind = 'describe' -- shunt/spec.yue:19
describe = function(what, fn) -- shunt/spec.yue:20
  return declare_spec_section('describe', what, fn) -- shunt/spec.yue:21
end -- shunt/spec.yue:20
_module_0["describe"] = describe -- shunt/spec.yue:21
it = function(what, fn) -- shunt/spec.yue:23
  return declare_spec_section('it', what, fn) -- shunt/spec.yue:24
end -- shunt/spec.yue:23
_module_0["it"] = it -- shunt/spec.yue:24
declare_spec_section = function(kind, what, fn) -- shunt/spec.yue:26
  if not (root_spec ~= nil) then -- shunt/spec.yue:27
    root_spec = Spec:root() -- shunt/spec.yue:28
  end -- shunt/spec.yue:27
  if not (current_spec ~= nil) then -- shunt/spec.yue:29
    current_spec = root_spec -- shunt/spec.yue:30
  end -- shunt/spec.yue:29
  if current_spec.kind ~= 'describe' then -- shunt/spec.yue:32
    error("cannot use `" .. tostring(kind) .. "` in `" .. tostring(current_spec.kind) .. "` spec") -- shunt/spec.yue:33
  end -- shunt/spec.yue:32
  if 'describe' == kind then -- shunt/spec.yue:36
    local parent_spec = current_spec -- shunt/spec.yue:37
    current_spec = Spec(kind, what, parent_spec) -- shunt/spec.yue:39
    fn() -- shunt/spec.yue:40
    parent_spec:add_child(current_spec) -- shunt/spec.yue:42
    current_spec = parent_spec -- shunt/spec.yue:43
  elseif 'it' == kind then -- shunt/spec.yue:44
    return current_spec:add_child(Test(what, fn, current_spec)) -- shunt/spec.yue:45
  else -- shunt/spec.yue:47
    return error("internal error: unknown kind " .. tostring(repr(kind))) -- shunt/spec.yue:47
  end -- shunt/spec.yue:47
end -- shunt/spec.yue:26
do -- shunt/spec.yue:49
  local _class_0 -- shunt/spec.yue:49
  local _base_0 = { -- shunt/spec.yue:49
    add_child = function(self, child) -- shunt/spec.yue:56
      do -- shunt/spec.yue:57
        local _obj_0 = self.children -- shunt/spec.yue:57
        _obj_0[#_obj_0 + 1] = child -- shunt/spec.yue:57
      end -- shunt/spec.yue:57
    end, -- shunt/spec.yue:59
    desc = function(self) -- shunt/spec.yue:59
      local rev_parts -- shunt/spec.yue:60
      do -- shunt/spec.yue:60
        local _with_0 = { -- shunt/spec.yue:60
          self.name -- shunt/spec.yue:60
        } -- shunt/spec.yue:60
        spec = self.parent -- shunt/spec.yue:61
        while (spec ~= nil) do -- shunt/spec.yue:62
          _with_0[#_with_0 + 1] = spec.name -- shunt/spec.yue:63
          spec = spec.parent -- shunt/spec.yue:64
        end -- shunt/spec.yue:64
        rev_parts = _with_0 -- shunt/spec.yue:60
      end -- shunt/spec.yue:60
      local parts -- shunt/spec.yue:65
      do -- shunt/spec.yue:65
        local _with_0 = { } -- shunt/spec.yue:65
        local n = #rev_parts -- shunt/spec.yue:66
        for i = 1, n do -- shunt/spec.yue:67
          _with_0[i] = rev_parts[n - i + 1] -- shunt/spec.yue:68
        end -- shunt/spec.yue:68
        parts = _with_0 -- shunt/spec.yue:65
      end -- shunt/spec.yue:65
      return table.concat(parts, ' ') -- shunt/spec.yue:69
    end, -- shunt/spec.yue:71
    test = function(self, filter) -- shunt/spec.yue:71
      if filter == nil then -- shunt/spec.yue:71
        filter = nil -- shunt/spec.yue:71
      end -- shunt/spec.yue:71
      local _list_0 = self.children -- shunt/spec.yue:72
      for _index_0 = 1, #_list_0 do -- shunt/spec.yue:72
        local child = _list_0[_index_0] -- shunt/spec.yue:72
        child:test(filter) -- shunt/spec.yue:73
      end -- shunt/spec.yue:73
    end -- shunt/spec.yue:49
  } -- shunt/spec.yue:49
  if _base_0.__index == nil then -- shunt/spec.yue:49
    _base_0.__index = _base_0 -- shunt/spec.yue:49
  end -- shunt/spec.yue:73
  _class_0 = setmetatable({ -- shunt/spec.yue:49
    __init = function(self, kind, name, parent) -- shunt/spec.yue:53
      self.kind = kind -- shunt/spec.yue:53
      self.name = name -- shunt/spec.yue:53
      self.parent = parent -- shunt/spec.yue:53
      self.children = { } -- shunt/spec.yue:54
    end, -- shunt/spec.yue:49
    __base = _base_0, -- shunt/spec.yue:49
    __name = "Spec" -- shunt/spec.yue:49
  }, { -- shunt/spec.yue:49
    __index = _base_0, -- shunt/spec.yue:49
    __call = function(cls, ...) -- shunt/spec.yue:49
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:49
      cls.__init(_self_0, ...) -- shunt/spec.yue:49
      return _self_0 -- shunt/spec.yue:49
    end -- shunt/spec.yue:49
  }) -- shunt/spec.yue:49
  _base_0.__class = _class_0 -- shunt/spec.yue:49
  local self = _class_0; -- shunt/spec.yue:49
  self.root = function(self) -- shunt/spec.yue:50
    return Spec('describe', nil, nil) -- shunt/spec.yue:51
  end -- shunt/spec.yue:50
  Spec = _class_0 -- shunt/spec.yue:49
end -- shunt/spec.yue:73
FATAL_TEST_ERROR_MARKER = 'INTERNAL ERROR: FATAL TEST ERROR' -- shunt/spec.yue:75
do -- shunt/spec.yue:77
  local _class_0 -- shunt/spec.yue:77
  local _base_0 = { -- shunt/spec.yue:77
    test = function(self, filter) -- shunt/spec.yue:84
      if filter == nil then -- shunt/spec.yue:84
        filter = nil -- shunt/spec.yue:84
      end -- shunt/spec.yue:84
      if (filter ~= nil) then -- shunt/spec.yue:85
        local desc = self:desc() -- shunt/spec.yue:86
        if not desc:match(filter) then -- shunt/spec.yue:87
          log(function() -- shunt/spec.yue:88
            return "* skipping " .. tostring(desc) -- shunt/spec.yue:88
          end) -- shunt/spec.yue:88
          return -- shunt/spec.yue:89
        end -- shunt/spec.yue:87
      else -- shunt/spec.yue:91
        log(function() -- shunt/spec.yue:91
          return "* running " .. tostring(self:desc()) -- shunt/spec.yue:91
        end) -- shunt/spec.yue:91
      end -- shunt/spec.yue:85
      self.__class.num_run = self.__class.num_run + 1 -- shunt/spec.yue:92
      self.__class.current_run_failures = { } -- shunt/spec.yue:94
      local print_calls = { } -- shunt/spec.yue:95
      local old_print = print -- shunt/spec.yue:96
      print = function(...) -- shunt/spec.yue:97
        print_calls[#print_calls + 1] = { -- shunt/spec.yue:98
          ... -- shunt/spec.yue:98
        } -- shunt/spec.yue:98
      end -- shunt/spec.yue:97
xpcall(function() -- shunt/spec.yue:99
        return self:assertions_fn() -- shunt/spec.yue:100
      end, function(err) -- shunt/spec.yue:100
        if not err:match(FATAL_TEST_ERROR_MARKER) then -- shunt/spec.yue:102
          return Test:fail("caught error: " .. tostring(debug.traceback(err, 2))) -- shunt/spec.yue:103
        end -- shunt/spec.yue:102
      end) -- shunt/spec.yue:103
      print = old_print -- shunt/spec.yue:104
      local failures = self.__class.current_run_failures -- shunt/spec.yue:106
      self.__class.current_run_failures = nil -- shunt/spec.yue:107
      if #failures == 0 then -- shunt/spec.yue:109
        return -- shunt/spec.yue:110
      end -- shunt/spec.yue:109
      if #print_calls > 0 then -- shunt/spec.yue:112
        print('--- START of print output ---') -- shunt/spec.yue:113
        print(table.concat((function() -- shunt/spec.yue:114
          local _accum_0 = { } -- shunt/spec.yue:114
          local _len_0 = 1 -- shunt/spec.yue:114
          for _index_0 = 1, #print_calls do -- shunt/spec.yue:114
            local print_call_parts = print_calls[_index_0] -- shunt/spec.yue:114
            _accum_0[_len_0] = table.concat((function() -- shunt/spec.yue:114
              local _accum_1 = { } -- shunt/spec.yue:114
              local _len_1 = 1 -- shunt/spec.yue:114
              for _index_1 = 1, #print_call_parts do -- shunt/spec.yue:114
                local print_call_part = print_call_parts[_index_1] -- shunt/spec.yue:114
                _accum_1[_len_1] = tostring(print_call_part) -- shunt/spec.yue:114
                _len_1 = _len_1 + 1 -- shunt/spec.yue:114
              end -- shunt/spec.yue:114
              return _accum_1 -- shunt/spec.yue:114
            end)(), '\t') -- shunt/spec.yue:114
            _len_0 = _len_0 + 1 -- shunt/spec.yue:114
          end -- shunt/spec.yue:114
          return _accum_0 -- shunt/spec.yue:114
        end)(), '\n')) -- shunt/spec.yue:114
        print('--- END of print output ---') -- shunt/spec.yue:115
      end -- shunt/spec.yue:112
      print("* " .. tostring(self:desc()) .. ":") -- shunt/spec.yue:117
      for _index_0 = 1, #failures do -- shunt/spec.yue:118
        local failure = failures[_index_0] -- shunt/spec.yue:118
        print("  * " .. tostring(reflow('    ', failure))) -- shunt/spec.yue:119
      end -- shunt/spec.yue:119
    end, -- shunt/spec.yue:121
    desc = function(self) -- shunt/spec.yue:121
      return tostring(self.spec:desc()) .. " " .. tostring(self.name) -- shunt/spec.yue:122
    end -- shunt/spec.yue:77
  } -- shunt/spec.yue:77
  if _base_0.__index == nil then -- shunt/spec.yue:77
    _base_0.__index = _base_0 -- shunt/spec.yue:77
  end -- shunt/spec.yue:145
  _class_0 = setmetatable({ -- shunt/spec.yue:77
    __init = function(self, name, assertions_fn, spec) -- shunt/spec.yue:78
      self.name = name -- shunt/spec.yue:78
      self.assertions_fn = assertions_fn -- shunt/spec.yue:78
      self.spec = spec -- shunt/spec.yue:78
    end, -- shunt/spec.yue:77
    __base = _base_0, -- shunt/spec.yue:77
    __name = "Test" -- shunt/spec.yue:77
  }, { -- shunt/spec.yue:77
    __index = _base_0, -- shunt/spec.yue:77
    __call = function(cls, ...) -- shunt/spec.yue:77
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:77
      cls.__init(_self_0, ...) -- shunt/spec.yue:77
      return _self_0 -- shunt/spec.yue:77
    end -- shunt/spec.yue:77
  }) -- shunt/spec.yue:77
  _base_0.__class = _class_0 -- shunt/spec.yue:77
  local self = _class_0; -- shunt/spec.yue:77
  self.num_run = 0 -- shunt/spec.yue:80
  self.num_failures = 0 -- shunt/spec.yue:81
  self.current_run_failures = nil -- shunt/spec.yue:82
  self.fail = function(self, cause, message) -- shunt/spec.yue:124
    self.__class.num_failures = self.__class.num_failures + 1 -- shunt/spec.yue:125
    local cause_string -- shunt/spec.yue:126
    do -- shunt/spec.yue:126
      local _exp_0 = type(cause) -- shunt/spec.yue:126
      if 'string' == _exp_0 then -- shunt/spec.yue:127
        cause_string = cause -- shunt/spec.yue:128
      elseif 'table' == _exp_0 then -- shunt/spec.yue:129
        local value_label, location, expected, actual_repr, explanation = cause.value_label, cause.location, cause.expected, cause.actual_repr, cause.explanation -- shunt/spec.yue:130
        local value_label_line = '' -- shunt/spec.yue:131
        if (value_label ~= nil) then -- shunt/spec.yue:132
          value_label_line = "value: " .. tostring(value_label) .. "\n" -- shunt/spec.yue:133
        end -- shunt/spec.yue:132
        cause_string = tostring(value_label_line) .. "expected: " .. tostring(reflow('    ', expected, 70)) .. "\nactual: " .. tostring(reflow('    ', actual_repr, 70)) .. ",\n  " .. tostring(reflow('  ', explanation, 70)) .. "\nat: " .. tostring(location) -- shunt/spec.yue:135
      else -- shunt/spec.yue:137
        cause_string = error("internal error: invalid matcher return: " .. tostring(repr(cause))) -- shunt/spec.yue:137
      end -- shunt/spec.yue:137
    end -- shunt/spec.yue:137
    if (message ~= nil) then -- shunt/spec.yue:138
      do -- shunt/spec.yue:139
        local _obj_0 = self.__class.current_run_failures -- shunt/spec.yue:139
        _obj_0[#_obj_0 + 1] = tostring(message) .. ": " .. tostring(cause_string) -- shunt/spec.yue:139
      end -- shunt/spec.yue:139
    else -- shunt/spec.yue:141
      do -- shunt/spec.yue:141
        local _obj_0 = self.__class.current_run_failures -- shunt/spec.yue:141
        _obj_0[#_obj_0 + 1] = cause_string -- shunt/spec.yue:141
      end -- shunt/spec.yue:141
    end -- shunt/spec.yue:138
  end -- shunt/spec.yue:124
  self.fatal = function(self, cause, message) -- shunt/spec.yue:143
    self.__class:fail(cause, message) -- shunt/spec.yue:144
    return error(FATAL_TEST_ERROR_MARKER) -- shunt/spec.yue:145
  end -- shunt/spec.yue:143
  Test = _class_0 -- shunt/spec.yue:77
end -- shunt/spec.yue:145
expect_that = function(actual, matcher) -- shunt/spec.yue:147
  return _expect_that(nil, actual, matcher, nil) -- shunt/spec.yue:148
end -- shunt/spec.yue:147
_module_0["expect_that"] = expect_that -- shunt/spec.yue:148
_expect_that = function(value_label, actual, matcher, location) -- shunt/spec.yue:150
  if not (Test.current_run_failures ~= nil) then -- shunt/spec.yue:151
    error('internal error: expect_that call must be within an `it` call') -- shunt/spec.yue:152
  end -- shunt/spec.yue:151
  if matcher:matches(actual) then -- shunt/spec.yue:154
    return -- shunt/spec.yue:155
  end -- shunt/spec.yue:154
  if location == nil then -- shunt/spec.yue:157
    location = get_caller_location('expect_that') -- shunt/spec.yue:157
  end -- shunt/spec.yue:157
  return Test:fail({ -- shunt/spec.yue:159
    value_label = value_label, -- shunt/spec.yue:159
    location = location, -- shunt/spec.yue:160
    expected = matcher:describe(), -- shunt/spec.yue:161
    actual_repr = (function() -- shunt/spec.yue:162
      local _exp_0 -- shunt/spec.yue:162
      do -- shunt/spec.yue:162
        local _obj_0 = matcher.actual_repr -- shunt/spec.yue:162
        if _obj_0 ~= nil then -- shunt/spec.yue:162
          _exp_0 = _obj_0(matcher) -- shunt/spec.yue:162
        end -- shunt/spec.yue:162
      end -- shunt/spec.yue:162
      if _exp_0 ~= nil then -- shunt/spec.yue:162
        return _exp_0 -- shunt/spec.yue:162
      else -- shunt/spec.yue:162
        return repr(actual) -- shunt/spec.yue:162
      end -- shunt/spec.yue:162
    end)(), -- shunt/spec.yue:162
    explanation = matcher:explain_match(actual) -- shunt/spec.yue:163
  }) -- shunt/spec.yue:163
end -- shunt/spec.yue:150
_module_0["_expect_that"] = _expect_that -- shunt/spec.yue:163
assert_that = function(actual, matcher) -- shunt/spec.yue:165
  return _assert_that(nil, actual, matcher, nil) -- shunt/spec.yue:166
end -- shunt/spec.yue:165
_module_0["assert_that"] = assert_that -- shunt/spec.yue:166
_assert_that = function(value_label, actual, matcher, location) -- shunt/spec.yue:168
  if not (Test.current_run_failures ~= nil) then -- shunt/spec.yue:169
    error('internal error: assert_that call must be within an `it` call') -- shunt/spec.yue:170
  end -- shunt/spec.yue:169
  if matcher:matches(actual) then -- shunt/spec.yue:172
    return -- shunt/spec.yue:173
  end -- shunt/spec.yue:172
  if location == nil then -- shunt/spec.yue:175
    location = get_caller_location('assert_that') -- shunt/spec.yue:175
  end -- shunt/spec.yue:175
  return Test:fatal({ -- shunt/spec.yue:177
    value_label = value_label, -- shunt/spec.yue:177
    location = location, -- shunt/spec.yue:178
    expected = matcher:describe(), -- shunt/spec.yue:179
    actual_repr = (function() -- shunt/spec.yue:180
      local _exp_0 -- shunt/spec.yue:180
      do -- shunt/spec.yue:180
        local _obj_0 = matcher.actual_repr -- shunt/spec.yue:180
        if _obj_0 ~= nil then -- shunt/spec.yue:180
          _exp_0 = _obj_0(matcher) -- shunt/spec.yue:180
        end -- shunt/spec.yue:180
      end -- shunt/spec.yue:180
      if _exp_0 ~= nil then -- shunt/spec.yue:180
        return _exp_0 -- shunt/spec.yue:180
      else -- shunt/spec.yue:180
        return repr(actual) -- shunt/spec.yue:180
      end -- shunt/spec.yue:180
    end)(), -- shunt/spec.yue:180
    explanation = matcher:explain_match(actual) -- shunt/spec.yue:181
  }) -- shunt/spec.yue:181
end -- shunt/spec.yue:168
_module_0["_assert_that"] = _assert_that -- shunt/spec.yue:181
get_caller_location = function(kind) -- shunt/spec.yue:184
  local currentline, short_src, what -- shunt/spec.yue:185
  do -- shunt/spec.yue:185
    local _obj_0 = debug.getinfo(3, 'Sl') -- shunt/spec.yue:185
    currentline, short_src, what = _obj_0.currentline, _obj_0.short_src, _obj_0.what -- shunt/spec.yue:185
  end -- shunt/spec.yue:185
  if 'C' == what or 'tail' == what then -- shunt/spec.yue:187
    return "last " .. tostring(kind) .. " call (debug info lost)" -- shunt/spec.yue:188
  else -- shunt/spec.yue:190
    return tostring(short_src) .. ":" .. tostring(currentline) -- shunt/spec.yue:190
  end -- shunt/spec.yue:190
end -- shunt/spec.yue:184
do -- shunt/spec.yue:192
  local _class_0 -- shunt/spec.yue:192
  local _base_0 = { -- shunt/spec.yue:192
    matches = function(self, actual) -- shunt/spec.yue:193
      return true -- shunt/spec.yue:194
    end, -- shunt/spec.yue:196
    explain_match = function(self, actual) -- shunt/spec.yue:196
      return "which " .. tostring(self:describe()) -- shunt/spec.yue:197
    end, -- shunt/spec.yue:199
    describe = function(self, is_match) -- shunt/spec.yue:199
      if is_match == nil then -- shunt/spec.yue:199
        is_match = true -- shunt/spec.yue:199
      end -- shunt/spec.yue:199
      return "is anything" -- shunt/spec.yue:200
    end -- shunt/spec.yue:192
  } -- shunt/spec.yue:192
  if _base_0.__index == nil then -- shunt/spec.yue:192
    _base_0.__index = _base_0 -- shunt/spec.yue:192
  end -- shunt/spec.yue:200
  _class_0 = setmetatable({ -- shunt/spec.yue:192
    __init = function() end, -- shunt/spec.yue:192
    __base = _base_0, -- shunt/spec.yue:192
    __name = "Anything" -- shunt/spec.yue:192
  }, { -- shunt/spec.yue:192
    __index = _base_0, -- shunt/spec.yue:192
    __call = function(cls, ...) -- shunt/spec.yue:192
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:192
      cls.__init(_self_0, ...) -- shunt/spec.yue:192
      return _self_0 -- shunt/spec.yue:192
    end -- shunt/spec.yue:192
  }) -- shunt/spec.yue:192
  _base_0.__class = _class_0 -- shunt/spec.yue:192
  Anything = _class_0 -- shunt/spec.yue:192
end -- shunt/spec.yue:200
do -- shunt/spec.yue:202
  local _class_0 -- shunt/spec.yue:202
  local _base_0 = { -- shunt/spec.yue:202
    matches = function(self, actual) -- shunt/spec.yue:203
      return (actual ~= nil) -- shunt/spec.yue:204
    end, -- shunt/spec.yue:206
    explain_match = function(self, actual) -- shunt/spec.yue:206
      return "which " .. tostring(self:describe()) -- shunt/spec.yue:207
    end, -- shunt/spec.yue:209
    describe = function(self, is_match) -- shunt/spec.yue:209
      if is_match == nil then -- shunt/spec.yue:209
        is_match = true -- shunt/spec.yue:209
      end -- shunt/spec.yue:209
      return "is non-nil" -- shunt/spec.yue:210
    end -- shunt/spec.yue:202
  } -- shunt/spec.yue:202
  if _base_0.__index == nil then -- shunt/spec.yue:202
    _base_0.__index = _base_0 -- shunt/spec.yue:202
  end -- shunt/spec.yue:210
  _class_0 = setmetatable({ -- shunt/spec.yue:202
    __init = function() end, -- shunt/spec.yue:202
    __base = _base_0, -- shunt/spec.yue:202
    __name = "Some" -- shunt/spec.yue:202
  }, { -- shunt/spec.yue:202
    __index = _base_0, -- shunt/spec.yue:202
    __call = function(cls, ...) -- shunt/spec.yue:202
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:202
      cls.__init(_self_0, ...) -- shunt/spec.yue:202
      return _self_0 -- shunt/spec.yue:202
    end -- shunt/spec.yue:202
  }) -- shunt/spec.yue:202
  _base_0.__class = _class_0 -- shunt/spec.yue:202
  Some = _class_0 -- shunt/spec.yue:202
end -- shunt/spec.yue:210
do -- shunt/spec.yue:212
  local _class_0 -- shunt/spec.yue:212
  local _base_0 = { -- shunt/spec.yue:212
    matches = function(self, actual) -- shunt/spec.yue:215
      return not self.inner:matches(actual) -- shunt/spec.yue:216
    end, -- shunt/spec.yue:218
    explain_match = function(self, actual) -- shunt/spec.yue:218
      return self.inner:explain_match(actual) -- shunt/spec.yue:219
    end, -- shunt/spec.yue:221
    describe = function(self, is_match) -- shunt/spec.yue:221
      if is_match == nil then -- shunt/spec.yue:221
        is_match = true -- shunt/spec.yue:221
      end -- shunt/spec.yue:221
      return self.inner:describe(not is_match) -- shunt/spec.yue:222
    end -- shunt/spec.yue:212
  } -- shunt/spec.yue:212
  if _base_0.__index == nil then -- shunt/spec.yue:212
    _base_0.__index = _base_0 -- shunt/spec.yue:212
  end -- shunt/spec.yue:222
  _class_0 = setmetatable({ -- shunt/spec.yue:212
    __init = function(self, inner) -- shunt/spec.yue:213
      self.inner = inner -- shunt/spec.yue:213
    end, -- shunt/spec.yue:212
    __base = _base_0, -- shunt/spec.yue:212
    __name = "Not" -- shunt/spec.yue:212
  }, { -- shunt/spec.yue:212
    __index = _base_0, -- shunt/spec.yue:212
    __call = function(cls, ...) -- shunt/spec.yue:212
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:212
      cls.__init(_self_0, ...) -- shunt/spec.yue:212
      return _self_0 -- shunt/spec.yue:212
    end -- shunt/spec.yue:212
  }) -- shunt/spec.yue:212
  _base_0.__class = _class_0 -- shunt/spec.yue:212
  Not = _class_0 -- shunt/spec.yue:212
end -- shunt/spec.yue:222
do -- shunt/spec.yue:224
  local _class_0 -- shunt/spec.yue:224
  local _base_0 = { -- shunt/spec.yue:224
    matches = function(self, actual) -- shunt/spec.yue:227
      return self.expected == actual -- shunt/spec.yue:228
    end, -- shunt/spec.yue:230
    explain_match = function(self, actual) -- shunt/spec.yue:230
      return "which " .. tostring(self:describe(self:matches(actual))) -- shunt/spec.yue:231
    end, -- shunt/spec.yue:233
    describe = function(self, is_match) -- shunt/spec.yue:233
      if is_match == nil then -- shunt/spec.yue:233
        is_match = true -- shunt/spec.yue:233
      end -- shunt/spec.yue:233
      if is_match then -- shunt/spec.yue:234
        return "is equal to " .. tostring(repr(self.expected)) -- shunt/spec.yue:235
      else -- shunt/spec.yue:237
        return "isn't equal to " .. tostring(repr(self.expected)) -- shunt/spec.yue:237
      end -- shunt/spec.yue:234
    end -- shunt/spec.yue:224
  } -- shunt/spec.yue:224
  if _base_0.__index == nil then -- shunt/spec.yue:224
    _base_0.__index = _base_0 -- shunt/spec.yue:224
  end -- shunt/spec.yue:237
  _class_0 = setmetatable({ -- shunt/spec.yue:224
    __init = function(self, expected) -- shunt/spec.yue:225
      self.expected = expected -- shunt/spec.yue:225
    end, -- shunt/spec.yue:224
    __base = _base_0, -- shunt/spec.yue:224
    __name = "Eq" -- shunt/spec.yue:224
  }, { -- shunt/spec.yue:224
    __index = _base_0, -- shunt/spec.yue:224
    __call = function(cls, ...) -- shunt/spec.yue:224
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:224
      cls.__init(_self_0, ...) -- shunt/spec.yue:224
      return _self_0 -- shunt/spec.yue:224
    end -- shunt/spec.yue:224
  }) -- shunt/spec.yue:224
  _base_0.__class = _class_0 -- shunt/spec.yue:224
  Eq = _class_0 -- shunt/spec.yue:224
end -- shunt/spec.yue:237
do -- shunt/spec.yue:239
  local _class_0 -- shunt/spec.yue:239
  local _base_0 = { -- shunt/spec.yue:239
    matches = function(self, actual) -- shunt/spec.yue:242
      local _exp_0 = self.kind -- shunt/spec.yue:243
      if '==' == _exp_0 then -- shunt/spec.yue:244
        return actual == self.value -- shunt/spec.yue:245
      elseif '<' == _exp_0 then -- shunt/spec.yue:246
        return actual < self.value -- shunt/spec.yue:247
      elseif '<=' == _exp_0 then -- shunt/spec.yue:248
        return actual <= self.value -- shunt/spec.yue:249
      elseif '>' == _exp_0 then -- shunt/spec.yue:250
        return actual > self.value -- shunt/spec.yue:251
      elseif '>=' == _exp_0 then -- shunt/spec.yue:252
        return actual >= self.value -- shunt/spec.yue:253
      else -- shunt/spec.yue:255
        return error("internal error: unrecognised comparison: " .. tostring(repr(self.kind))) -- shunt/spec.yue:255
      end -- shunt/spec.yue:255
    end, -- shunt/spec.yue:257
    explain_match = function(self, actual) -- shunt/spec.yue:257
      return "which " .. tostring(self:describe(self:matches(actual))) -- shunt/spec.yue:258
    end, -- shunt/spec.yue:260
    describe = function(self, is_match) -- shunt/spec.yue:260
      if is_match == nil then -- shunt/spec.yue:260
        is_match = true -- shunt/spec.yue:260
      end -- shunt/spec.yue:260
      local comparison_name -- shunt/spec.yue:261
      do -- shunt/spec.yue:261
        local _exp_0 = self.kind -- shunt/spec.yue:261
        if '==' == _exp_0 then -- shunt/spec.yue:262
          comparison_name = "equal to" -- shunt/spec.yue:263
        elseif '<' == _exp_0 then -- shunt/spec.yue:264
          comparison_name = "less than" -- shunt/spec.yue:265
        elseif '<=' == _exp_0 then -- shunt/spec.yue:266
          comparison_name = "at most" -- shunt/spec.yue:267
        elseif '>' == _exp_0 then -- shunt/spec.yue:268
          comparison_name = "greater than" -- shunt/spec.yue:269
        elseif '>=' == _exp_0 then -- shunt/spec.yue:270
          comparison_name = "at least" -- shunt/spec.yue:271
        else -- shunt/spec.yue:273
          comparison_name = error("internal error: unrecognised comparison: " .. tostring(repr(self.kind))) -- shunt/spec.yue:273
        end -- shunt/spec.yue:273
      end -- shunt/spec.yue:273
      if is_match then -- shunt/spec.yue:274
        return "is " .. tostring(comparison_name) .. " " .. tostring(repr(self.value)) -- shunt/spec.yue:275
      else -- shunt/spec.yue:277
        return "isn't " .. tostring(comparison_name) .. " " .. tostring(repr(self.value)) -- shunt/spec.yue:277
      end -- shunt/spec.yue:274
    end -- shunt/spec.yue:239
  } -- shunt/spec.yue:239
  if _base_0.__index == nil then -- shunt/spec.yue:239
    _base_0.__index = _base_0 -- shunt/spec.yue:239
  end -- shunt/spec.yue:277
  _class_0 = setmetatable({ -- shunt/spec.yue:239
    __init = function(self, kind, value) -- shunt/spec.yue:240
      self.kind = kind -- shunt/spec.yue:240
      self.value = value -- shunt/spec.yue:240
    end, -- shunt/spec.yue:239
    __base = _base_0, -- shunt/spec.yue:239
    __name = "Compare" -- shunt/spec.yue:239
  }, { -- shunt/spec.yue:239
    __index = _base_0, -- shunt/spec.yue:239
    __call = function(cls, ...) -- shunt/spec.yue:239
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:239
      cls.__init(_self_0, ...) -- shunt/spec.yue:239
      return _self_0 -- shunt/spec.yue:239
    end -- shunt/spec.yue:239
  }) -- shunt/spec.yue:239
  _base_0.__class = _class_0 -- shunt/spec.yue:239
  Compare = _class_0 -- shunt/spec.yue:239
end -- shunt/spec.yue:277
do -- shunt/spec.yue:279
  local _class_0 -- shunt/spec.yue:279
  local _base_0 = { -- shunt/spec.yue:279
    matches = function(self, actual) -- shunt/spec.yue:282
      if 'number' ~= type(actual) then -- shunt/spec.yue:283
        return false -- shunt/spec.yue:284
      end -- shunt/spec.yue:283
      return (math.abs(actual - self.expected)) <= math.abs(self.delta * self.expected) -- shunt/spec.yue:285
    end, -- shunt/spec.yue:287
    explain_match = function(self, actual) -- shunt/spec.yue:287
      return "which " .. tostring(self:describe(self:matches(actual))) -- shunt/spec.yue:288
    end, -- shunt/spec.yue:290
    describe = function(self, is_match) -- shunt/spec.yue:290
      if is_match == nil then -- shunt/spec.yue:290
        is_match = true -- shunt/spec.yue:290
      end -- shunt/spec.yue:290
      if is_match then -- shunt/spec.yue:291
        return "is near " .. tostring(self.expected) .. " (Δ" .. tostring(self.delta) .. "x)" -- shunt/spec.yue:292
      else -- shunt/spec.yue:294
        return "isn't near " .. tostring(self.expected) .. " (Δ" .. tostring(self.delta) .. "x)" -- shunt/spec.yue:294
      end -- shunt/spec.yue:291
    end -- shunt/spec.yue:279
  } -- shunt/spec.yue:279
  if _base_0.__index == nil then -- shunt/spec.yue:279
    _base_0.__index = _base_0 -- shunt/spec.yue:279
  end -- shunt/spec.yue:294
  _class_0 = setmetatable({ -- shunt/spec.yue:279
    __init = function(self, expected, delta) -- shunt/spec.yue:280
      if delta == nil then -- shunt/spec.yue:280
        delta = 0.00001 -- shunt/spec.yue:280
      end -- shunt/spec.yue:280
      self.expected = expected -- shunt/spec.yue:280
      self.delta = delta -- shunt/spec.yue:280
    end, -- shunt/spec.yue:279
    __base = _base_0, -- shunt/spec.yue:279
    __name = "Near" -- shunt/spec.yue:279
  }, { -- shunt/spec.yue:279
    __index = _base_0, -- shunt/spec.yue:279
    __call = function(cls, ...) -- shunt/spec.yue:279
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:279
      cls.__init(_self_0, ...) -- shunt/spec.yue:279
      return _self_0 -- shunt/spec.yue:279
    end -- shunt/spec.yue:279
  }) -- shunt/spec.yue:279
  _base_0.__class = _class_0 -- shunt/spec.yue:279
  Near = _class_0 -- shunt/spec.yue:279
end -- shunt/spec.yue:294
do -- shunt/spec.yue:296
  local _class_0 -- shunt/spec.yue:296
  local _base_0 = { -- shunt/spec.yue:296
    matches = function(self, actual) -- shunt/spec.yue:299
      return self:deep_equal(self.expected, actual) -- shunt/spec.yue:300
    end, -- shunt/spec.yue:302
    deep_equal = function(self, a, b, a_stack_set, b_stack_set) -- shunt/spec.yue:302
      if a_stack_set == nil then -- shunt/spec.yue:302
        a_stack_set = { } -- shunt/spec.yue:302
      end -- shunt/spec.yue:302
      if b_stack_set == nil then -- shunt/spec.yue:302
        b_stack_set = { } -- shunt/spec.yue:302
      end -- shunt/spec.yue:302
      if a == b then -- shunt/spec.yue:303
        return true -- shunt/spec.yue:304
      end -- shunt/spec.yue:303
      local type_a = type(a) -- shunt/spec.yue:306
      local type_b = type(b) -- shunt/spec.yue:307
      if type_a ~= type_b then -- shunt/spec.yue:308
        return false -- shunt/spec.yue:309
      end -- shunt/spec.yue:308
      if type_a ~= 'table' then -- shunt/spec.yue:311
        return false -- shunt/spec.yue:312
      end -- shunt/spec.yue:311
      for ka, va in pairs(a) do -- shunt/spec.yue:313
        local vb = b[ka] -- shunt/spec.yue:314
        if a_stack_set[va] and b_stack_set[vb] then -- shunt/spec.yue:316
          return true -- shunt/spec.yue:317
        end -- shunt/spec.yue:316
        a_stack_set[va] = true -- shunt/spec.yue:318
        if (vb ~= nil) then -- shunt/spec.yue:319
          b_stack_set[vb] = true -- shunt/spec.yue:320
        end -- shunt/spec.yue:319
        if not self:deep_equal(va, vb, a_stack_set, b_stack_set) then -- shunt/spec.yue:321
          return false -- shunt/spec.yue:322
        end -- shunt/spec.yue:321
        a_stack_set[va] = nil -- shunt/spec.yue:323
        b_stack_set[vb] = nil -- shunt/spec.yue:324
      end -- shunt/spec.yue:324
      for kb, _ in pairs(b) do -- shunt/spec.yue:325
        if not (a[kb] ~= nil) then -- shunt/spec.yue:326
          return false -- shunt/spec.yue:327
        end -- shunt/spec.yue:326
      end -- shunt/spec.yue:327
      return true -- shunt/spec.yue:328
    end, -- shunt/spec.yue:330
    explain_match = function(self, actual) -- shunt/spec.yue:330
      return "which " .. tostring(self:describe(self:matches(actual))) -- shunt/spec.yue:331
    end, -- shunt/spec.yue:333
    describe = function(self, is_match) -- shunt/spec.yue:333
      if is_match == nil then -- shunt/spec.yue:333
        is_match = true -- shunt/spec.yue:333
      end -- shunt/spec.yue:333
      if is_match then -- shunt/spec.yue:334
        return "is deeply equal to " .. tostring(repr(self.expected)) -- shunt/spec.yue:335
      else -- shunt/spec.yue:337
        return "isn't deeply equal to " .. tostring(repr(self.expected)) -- shunt/spec.yue:337
      end -- shunt/spec.yue:334
    end -- shunt/spec.yue:296
  } -- shunt/spec.yue:296
  if _base_0.__index == nil then -- shunt/spec.yue:296
    _base_0.__index = _base_0 -- shunt/spec.yue:296
  end -- shunt/spec.yue:337
  _class_0 = setmetatable({ -- shunt/spec.yue:296
    __init = function(self, expected) -- shunt/spec.yue:297
      self.expected = expected -- shunt/spec.yue:297
    end, -- shunt/spec.yue:296
    __base = _base_0, -- shunt/spec.yue:296
    __name = "DeepEq" -- shunt/spec.yue:296
  }, { -- shunt/spec.yue:296
    __index = _base_0, -- shunt/spec.yue:296
    __call = function(cls, ...) -- shunt/spec.yue:296
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:296
      cls.__init(_self_0, ...) -- shunt/spec.yue:296
      return _self_0 -- shunt/spec.yue:296
    end -- shunt/spec.yue:296
  }) -- shunt/spec.yue:296
  _base_0.__class = _class_0 -- shunt/spec.yue:296
  DeepEq = _class_0 -- shunt/spec.yue:296
end -- shunt/spec.yue:337
do -- shunt/spec.yue:339
  local _class_0 -- shunt/spec.yue:339
  local _base_0 = { -- shunt/spec.yue:339
    matches = function(self, actual) -- shunt/spec.yue:342
      return self.type == type(actual) -- shunt/spec.yue:343
    end, -- shunt/spec.yue:345
    explain_match = function(self, actual) -- shunt/spec.yue:345
      return "which " .. tostring(self:describe(self:matches(actual))) -- shunt/spec.yue:346
    end, -- shunt/spec.yue:348
    describe = function(self, is_match) -- shunt/spec.yue:348
      if is_match == nil then -- shunt/spec.yue:348
        is_match = true -- shunt/spec.yue:348
      end -- shunt/spec.yue:348
      if is_match then -- shunt/spec.yue:349
        return "has type " .. tostring(self.type) -- shunt/spec.yue:350
      else -- shunt/spec.yue:352
        return "does not have type " .. tostring(self.type) -- shunt/spec.yue:352
      end -- shunt/spec.yue:349
    end -- shunt/spec.yue:339
  } -- shunt/spec.yue:339
  if _base_0.__index == nil then -- shunt/spec.yue:339
    _base_0.__index = _base_0 -- shunt/spec.yue:339
  end -- shunt/spec.yue:352
  _class_0 = setmetatable({ -- shunt/spec.yue:339
    __init = function(self, type) -- shunt/spec.yue:340
      self.type = type -- shunt/spec.yue:340
    end, -- shunt/spec.yue:339
    __base = _base_0, -- shunt/spec.yue:339
    __name = "Type" -- shunt/spec.yue:339
  }, { -- shunt/spec.yue:339
    __index = _base_0, -- shunt/spec.yue:339
    __call = function(cls, ...) -- shunt/spec.yue:339
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:339
      cls.__init(_self_0, ...) -- shunt/spec.yue:339
      return _self_0 -- shunt/spec.yue:339
    end -- shunt/spec.yue:339
  }) -- shunt/spec.yue:339
  _base_0.__class = _class_0 -- shunt/spec.yue:339
  Type = _class_0 -- shunt/spec.yue:339
end -- shunt/spec.yue:352
do -- shunt/spec.yue:354
  local _class_0 -- shunt/spec.yue:354
  local _base_0 = { -- shunt/spec.yue:354
    matches = function(self, actual) -- shunt/spec.yue:357
      return ('string' == type(actual)) and ((actual:match(self.pat)) ~= nil) -- shunt/spec.yue:359
    end, -- shunt/spec.yue:361
    explain_match = function(self, actual) -- shunt/spec.yue:361
      if 'string' ~= type(actual) then -- shunt/spec.yue:362
        return "which is a " .. tostring(type(actual)) -- shunt/spec.yue:363
      end -- shunt/spec.yue:362
      return "which " .. tostring(self:describe(self:matches(actual))) -- shunt/spec.yue:364
    end, -- shunt/spec.yue:366
    describe = function(self, is_match) -- shunt/spec.yue:366
      if is_match == nil then -- shunt/spec.yue:366
        is_match = true -- shunt/spec.yue:366
      end -- shunt/spec.yue:366
      if is_match then -- shunt/spec.yue:367
        return "matches " .. tostring(repr(self.pat)) -- shunt/spec.yue:368
      else -- shunt/spec.yue:370
        return "doesn't match " .. tostring(repr(self.pat)) -- shunt/spec.yue:370
      end -- shunt/spec.yue:367
    end -- shunt/spec.yue:354
  } -- shunt/spec.yue:354
  if _base_0.__index == nil then -- shunt/spec.yue:354
    _base_0.__index = _base_0 -- shunt/spec.yue:354
  end -- shunt/spec.yue:370
  _class_0 = setmetatable({ -- shunt/spec.yue:354
    __init = function(self, pat) -- shunt/spec.yue:355
      self.pat = pat -- shunt/spec.yue:355
    end, -- shunt/spec.yue:354
    __base = _base_0, -- shunt/spec.yue:354
    __name = "Matches" -- shunt/spec.yue:354
  }, { -- shunt/spec.yue:354
    __index = _base_0, -- shunt/spec.yue:354
    __call = function(cls, ...) -- shunt/spec.yue:354
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:354
      cls.__init(_self_0, ...) -- shunt/spec.yue:354
      return _self_0 -- shunt/spec.yue:354
    end -- shunt/spec.yue:354
  }) -- shunt/spec.yue:354
  _base_0.__class = _class_0 -- shunt/spec.yue:354
  Matches = _class_0 -- shunt/spec.yue:354
end -- shunt/spec.yue:370
do -- shunt/spec.yue:372
  local _class_0 -- shunt/spec.yue:372
  local _base_0 = { -- shunt/spec.yue:372
    matches = function(self, actual) -- shunt/spec.yue:375
      local ty = type(actual) -- shunt/spec.yue:376
      return (ty == 'string' or ty == 'table') and self.inner:matches(#actual) -- shunt/spec.yue:377
    end, -- shunt/spec.yue:379
    explain_match = function(self, actual) -- shunt/spec.yue:379
      local _exp_0 = type(actual) -- shunt/spec.yue:380
      if 'string' == _exp_0 or 'table' == _exp_0 then -- shunt/spec.yue:381
        return "which has length " .. tostring(#actual) .. " " .. tostring(self.inner:explain_match(#actual)) -- shunt/spec.yue:382
      else -- shunt/spec.yue:384
        return "which is a " .. tostring(type(actual)) -- shunt/spec.yue:384
      end -- shunt/spec.yue:384
    end, -- shunt/spec.yue:386
    describe = function(self, is_match) -- shunt/spec.yue:386
      if is_match == nil then -- shunt/spec.yue:386
        is_match = true -- shunt/spec.yue:386
      end -- shunt/spec.yue:386
      if is_match then -- shunt/spec.yue:387
        return "has a length which " .. tostring(self.inner:describe()) -- shunt/spec.yue:388
      else -- shunt/spec.yue:390
        return "doesn't have a length which " .. tostring(self.inner:describe()) -- shunt/spec.yue:390
      end -- shunt/spec.yue:387
    end -- shunt/spec.yue:372
  } -- shunt/spec.yue:372
  if _base_0.__index == nil then -- shunt/spec.yue:372
    _base_0.__index = _base_0 -- shunt/spec.yue:372
  end -- shunt/spec.yue:390
  _class_0 = setmetatable({ -- shunt/spec.yue:372
    __init = function(self, inner) -- shunt/spec.yue:373
      self.inner = inner -- shunt/spec.yue:373
    end, -- shunt/spec.yue:372
    __base = _base_0, -- shunt/spec.yue:372
    __name = "Len" -- shunt/spec.yue:372
  }, { -- shunt/spec.yue:372
    __index = _base_0, -- shunt/spec.yue:372
    __call = function(cls, ...) -- shunt/spec.yue:372
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:372
      cls.__init(_self_0, ...) -- shunt/spec.yue:372
      return _self_0 -- shunt/spec.yue:372
    end -- shunt/spec.yue:372
  }) -- shunt/spec.yue:372
  _base_0.__class = _class_0 -- shunt/spec.yue:372
  Len = _class_0 -- shunt/spec.yue:372
end -- shunt/spec.yue:390
do -- shunt/spec.yue:392
  local _class_0 -- shunt/spec.yue:392
  local _base_0 = { -- shunt/spec.yue:392
    matches = function(self, actual) -- shunt/spec.yue:395
      return self.inner:matches(tostring(actual)) -- shunt/spec.yue:396
    end, -- shunt/spec.yue:398
    explain_match = function(self, actual) -- shunt/spec.yue:398
      local tostring_actual = tostring(actual) -- shunt/spec.yue:399
      return "which tostrings as '" .. tostring(tostring_actual) .. "' " .. tostring(self.inner:explain_match(tostring_actual)) -- shunt/spec.yue:400
    end, -- shunt/spec.yue:402
    describe = function(self, is_match) -- shunt/spec.yue:402
      if is_match == nil then -- shunt/spec.yue:402
        is_match = true -- shunt/spec.yue:402
      end -- shunt/spec.yue:402
      if is_match then -- shunt/spec.yue:403
        return "tostrings as a string which " .. tostring(self.inner:describe(true)) -- shunt/spec.yue:404
      else -- shunt/spec.yue:406
        return "doesn't tostrings as a string which " .. tostring(self.inner:describe(false)) -- shunt/spec.yue:406
      end -- shunt/spec.yue:403
    end -- shunt/spec.yue:392
  } -- shunt/spec.yue:392
  if _base_0.__index == nil then -- shunt/spec.yue:392
    _base_0.__index = _base_0 -- shunt/spec.yue:392
  end -- shunt/spec.yue:406
  _class_0 = setmetatable({ -- shunt/spec.yue:392
    __init = function(self, inner) -- shunt/spec.yue:393
      self.inner = inner -- shunt/spec.yue:393
    end, -- shunt/spec.yue:392
    __base = _base_0, -- shunt/spec.yue:392
    __name = "ToStringsAs" -- shunt/spec.yue:392
  }, { -- shunt/spec.yue:392
    __index = _base_0, -- shunt/spec.yue:392
    __call = function(cls, ...) -- shunt/spec.yue:392
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:392
      cls.__init(_self_0, ...) -- shunt/spec.yue:392
      return _self_0 -- shunt/spec.yue:392
    end -- shunt/spec.yue:392
  }) -- shunt/spec.yue:392
  _base_0.__class = _class_0 -- shunt/spec.yue:392
  ToStringsAs = _class_0 -- shunt/spec.yue:392
end -- shunt/spec.yue:406
do -- shunt/spec.yue:408
  local _class_0 -- shunt/spec.yue:408
  local _base_0 = { -- shunt/spec.yue:408
    actual_repr = function(self) -- shunt/spec.yue:413
      return "-> " .. tostring(self:error_repr()) -- shunt/spec.yue:414
    end, -- shunt/spec.yue:416
    error_repr = function(self) -- shunt/spec.yue:416
      if (self.error ~= nil) then -- shunt/spec.yue:417
        return "error " .. tostring(repr(self.error)) -- shunt/spec.yue:418
      else -- shunt/spec.yue:420
        return "no error" -- shunt/spec.yue:420
      end -- shunt/spec.yue:417
    end, -- shunt/spec.yue:422
    get_err = function(self, fn) -- shunt/spec.yue:422
      if self.error_set then -- shunt/spec.yue:423
        return self.error -- shunt/spec.yue:424
      end -- shunt/spec.yue:423
xpcall(function() -- shunt/spec.yue:426
        return fn() -- shunt/spec.yue:427
      end, function(err) -- shunt/spec.yue:427
        self.error = err -- shunt/spec.yue:429
      end) -- shunt/spec.yue:429
      self.error_set = true -- shunt/spec.yue:430
      return self.error -- shunt/spec.yue:431
    end, -- shunt/spec.yue:433
    matches = function(self, fn) -- shunt/spec.yue:433
      return not ((self:get_err(fn)) ~= nil) -- shunt/spec.yue:434
    end, -- shunt/spec.yue:436
    explain_match = function(self, fn) -- shunt/spec.yue:436
      return "which " .. tostring(self:describe(self:matches(fn))) -- shunt/spec.yue:437
    end, -- shunt/spec.yue:439
    describe = function(self, is_match) -- shunt/spec.yue:439
      if is_match == nil then -- shunt/spec.yue:439
        is_match = true -- shunt/spec.yue:439
      end -- shunt/spec.yue:439
      if is_match then -- shunt/spec.yue:440
        return "doesn't throw an error" -- shunt/spec.yue:441
      else -- shunt/spec.yue:443
        return "throws an error" -- shunt/spec.yue:443
      end -- shunt/spec.yue:440
    end -- shunt/spec.yue:408
  } -- shunt/spec.yue:408
  if _base_0.__index == nil then -- shunt/spec.yue:408
    _base_0.__index = _base_0 -- shunt/spec.yue:408
  end -- shunt/spec.yue:443
  _class_0 = setmetatable({ -- shunt/spec.yue:408
    __init = function(self) -- shunt/spec.yue:409
      self.error_set = false -- shunt/spec.yue:410
      self.error = nil -- shunt/spec.yue:411
    end, -- shunt/spec.yue:408
    __base = _base_0, -- shunt/spec.yue:408
    __name = "NoErrors" -- shunt/spec.yue:408
  }, { -- shunt/spec.yue:408
    __index = _base_0, -- shunt/spec.yue:408
    __call = function(cls, ...) -- shunt/spec.yue:408
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:408
      cls.__init(_self_0, ...) -- shunt/spec.yue:408
      return _self_0 -- shunt/spec.yue:408
    end -- shunt/spec.yue:408
  }) -- shunt/spec.yue:408
  _base_0.__class = _class_0 -- shunt/spec.yue:408
  NoErrors = _class_0 -- shunt/spec.yue:408
end -- shunt/spec.yue:443
do -- shunt/spec.yue:445
  local _class_0 -- shunt/spec.yue:445
  local _base_0 = { -- shunt/spec.yue:445
    actual_repr = function(self) -- shunt/spec.yue:450
      return "-> " .. tostring(self:error_repr()) -- shunt/spec.yue:451
    end, -- shunt/spec.yue:453
    error_repr = function(self) -- shunt/spec.yue:453
      if (self.error ~= nil) then -- shunt/spec.yue:454
        return "error " .. tostring(repr(self.error)) -- shunt/spec.yue:455
      else -- shunt/spec.yue:457
        return "no error" -- shunt/spec.yue:457
      end -- shunt/spec.yue:454
    end, -- shunt/spec.yue:459
    get_err = function(self, fn) -- shunt/spec.yue:459
      if self.error_set then -- shunt/spec.yue:460
        return self.error -- shunt/spec.yue:461
      end -- shunt/spec.yue:460
xpcall(function() -- shunt/spec.yue:463
        return fn() -- shunt/spec.yue:464
      end, function(err) -- shunt/spec.yue:464
        self.error = err -- shunt/spec.yue:466
      end) -- shunt/spec.yue:466
      self.error_set = true -- shunt/spec.yue:467
      return self.error -- shunt/spec.yue:468
    end, -- shunt/spec.yue:470
    matches = function(self, fn) -- shunt/spec.yue:470
      local err = self:get_err(fn) -- shunt/spec.yue:471
      if not (err ~= nil) then -- shunt/spec.yue:472
        return false -- shunt/spec.yue:473
      end -- shunt/spec.yue:472
      return self.inner:matches(err) -- shunt/spec.yue:474
    end, -- shunt/spec.yue:476
    explain_match = function(self, fn) -- shunt/spec.yue:476
      local err = self:get_err(fn) -- shunt/spec.yue:477
      if (err ~= nil) then -- shunt/spec.yue:478
        return "which throws " .. tostring(self:error_repr()) .. " " .. tostring(self.inner:explain_match(err)) -- shunt/spec.yue:479
      else -- shunt/spec.yue:481
        return "which doesn't throw an error" -- shunt/spec.yue:481
      end -- shunt/spec.yue:478
    end, -- shunt/spec.yue:483
    describe = function(self, is_match) -- shunt/spec.yue:483
      if is_match == nil then -- shunt/spec.yue:483
        is_match = true -- shunt/spec.yue:483
      end -- shunt/spec.yue:483
      if is_match then -- shunt/spec.yue:484
        return "throws an error which " .. tostring(self.inner:describe()) -- shunt/spec.yue:485
      else -- shunt/spec.yue:487
        return "doesn't throw an error" -- shunt/spec.yue:487
      end -- shunt/spec.yue:484
    end -- shunt/spec.yue:445
  } -- shunt/spec.yue:445
  if _base_0.__index == nil then -- shunt/spec.yue:445
    _base_0.__index = _base_0 -- shunt/spec.yue:445
  end -- shunt/spec.yue:487
  _class_0 = setmetatable({ -- shunt/spec.yue:445
    __init = function(self, inner) -- shunt/spec.yue:446
      self.inner = inner -- shunt/spec.yue:446
      self.error_set = false -- shunt/spec.yue:447
      self.error = nil -- shunt/spec.yue:448
    end, -- shunt/spec.yue:445
    __base = _base_0, -- shunt/spec.yue:445
    __name = "Errors" -- shunt/spec.yue:445
  }, { -- shunt/spec.yue:445
    __index = _base_0, -- shunt/spec.yue:445
    __call = function(cls, ...) -- shunt/spec.yue:445
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:445
      cls.__init(_self_0, ...) -- shunt/spec.yue:445
      return _self_0 -- shunt/spec.yue:445
    end -- shunt/spec.yue:445
  }) -- shunt/spec.yue:445
  _base_0.__class = _class_0 -- shunt/spec.yue:445
  Errors = _class_0 -- shunt/spec.yue:445
end -- shunt/spec.yue:487
do -- shunt/spec.yue:489
  local _class_0 -- shunt/spec.yue:489
  local _base_0 = { -- shunt/spec.yue:489
    matches = function(self, actual) -- shunt/spec.yue:496
      return (actual ~= nil) and ((self:find_match(actual)) ~= nil) -- shunt/spec.yue:497
    end, -- shunt/spec.yue:499
    find_match = function(self, actual) -- shunt/spec.yue:499
      for key, value in pairs(actual) do -- shunt/spec.yue:500
        local to_check -- shunt/spec.yue:501
        do -- shunt/spec.yue:501
          local _exp_0 = self.kind -- shunt/spec.yue:501
          if 'key' == _exp_0 then -- shunt/spec.yue:502
            to_check = key -- shunt/spec.yue:503
          elseif 'value' == _exp_0 then -- shunt/spec.yue:504
            to_check = value -- shunt/spec.yue:505
          elseif 'key-value' == _exp_0 then -- shunt/spec.yue:506
            to_check = { -- shunt/spec.yue:507
              key = key, -- shunt/spec.yue:507
              value = value -- shunt/spec.yue:507
            } -- shunt/spec.yue:507
          else -- shunt/spec.yue:509
            to_check = error("internal error: unknown kind " .. tostring(repr(self.kind))) -- shunt/spec.yue:509
          end -- shunt/spec.yue:509
        end -- shunt/spec.yue:509
        if self.inner:matches(to_check) then -- shunt/spec.yue:510
          return to_check -- shunt/spec.yue:511
        end -- shunt/spec.yue:510
      end -- shunt/spec.yue:511
      return nil -- shunt/spec.yue:512
    end, -- shunt/spec.yue:514
    explain_match = function(self, actual) -- shunt/spec.yue:514
      if 'table' ~= type(actual) then -- shunt/spec.yue:515
        return "which is a " .. tostring(type(actual)) -- shunt/spec.yue:516
      else -- shunt/spec.yue:517
        do -- shunt/spec.yue:517
          local match = self:find_match(actual) -- shunt/spec.yue:517
          if match then -- shunt/spec.yue:517
            return "which contains " .. tostring(repr(match)) .. " " .. tostring(self.inner:explain_match(match)) -- shunt/spec.yue:518
          else -- shunt/spec.yue:520
            return "which does not contain any " .. tostring(self.pretty_kind) .. " which " .. tostring(self.inner:describe()) -- shunt/spec.yue:520
          end -- shunt/spec.yue:517
        end -- shunt/spec.yue:517
      end -- shunt/spec.yue:515
    end, -- shunt/spec.yue:522
    describe = function(self, is_match) -- shunt/spec.yue:522
      if is_match == nil then -- shunt/spec.yue:522
        is_match = true -- shunt/spec.yue:522
      end -- shunt/spec.yue:522
      if is_match then -- shunt/spec.yue:523
        return "contains a value which " .. tostring(self.inner:describe()) -- shunt/spec.yue:524
      else -- shunt/spec.yue:526
        return "does not contain any " .. tostring(self.pretty_kind) .. " which " .. tostring(self.inner:describe()) -- shunt/spec.yue:526
      end -- shunt/spec.yue:523
    end -- shunt/spec.yue:489
  } -- shunt/spec.yue:489
  if _base_0.__index == nil then -- shunt/spec.yue:489
    _base_0.__index = _base_0 -- shunt/spec.yue:489
  end -- shunt/spec.yue:526
  _class_0 = setmetatable({ -- shunt/spec.yue:489
    __init = function(self, kind, inner) -- shunt/spec.yue:490
      self.kind = kind -- shunt/spec.yue:490
      self.inner = inner -- shunt/spec.yue:490
      if self.kind == 'key-value' then -- shunt/spec.yue:491
        self.pretty_kind = 'key-value pair' -- shunt/spec.yue:492
      else -- shunt/spec.yue:494
        self.pretty_kind = self.kind -- shunt/spec.yue:494
      end -- shunt/spec.yue:491
    end, -- shunt/spec.yue:489
    __base = _base_0, -- shunt/spec.yue:489
    __name = "Contains" -- shunt/spec.yue:489
  }, { -- shunt/spec.yue:489
    __index = _base_0, -- shunt/spec.yue:489
    __call = function(cls, ...) -- shunt/spec.yue:489
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:489
      cls.__init(_self_0, ...) -- shunt/spec.yue:489
      return _self_0 -- shunt/spec.yue:489
    end -- shunt/spec.yue:489
  }) -- shunt/spec.yue:489
  _base_0.__class = _class_0 -- shunt/spec.yue:489
  Contains = _class_0 -- shunt/spec.yue:489
end -- shunt/spec.yue:526
do -- shunt/spec.yue:528
  local _class_0 -- shunt/spec.yue:528
  local _base_0 = { -- shunt/spec.yue:528
    matches = function(self, actual) -- shunt/spec.yue:535
      return (actual ~= nil) and not ((self:find_non_match(actual)) ~= nil) -- shunt/spec.yue:536
    end, -- shunt/spec.yue:538
    find_non_match = function(self, actual) -- shunt/spec.yue:538
      for key, value in pairs(actual) do -- shunt/spec.yue:539
        local to_check -- shunt/spec.yue:540
        do -- shunt/spec.yue:540
          local _exp_0 = self.kind -- shunt/spec.yue:540
          if 'key' == _exp_0 then -- shunt/spec.yue:541
            to_check = key -- shunt/spec.yue:542
          elseif 'value' == _exp_0 then -- shunt/spec.yue:543
            to_check = value -- shunt/spec.yue:544
          elseif 'key-value' == _exp_0 then -- shunt/spec.yue:545
            to_check = { -- shunt/spec.yue:546
              key = key, -- shunt/spec.yue:546
              value = value -- shunt/spec.yue:546
            } -- shunt/spec.yue:546
          else -- shunt/spec.yue:548
            to_check = error("internal error: unknown kind " .. tostring(repr(self.kind))) -- shunt/spec.yue:548
          end -- shunt/spec.yue:548
        end -- shunt/spec.yue:548
        if not self.inner:matches(to_check) then -- shunt/spec.yue:549
          return to_check -- shunt/spec.yue:550
        end -- shunt/spec.yue:549
      end -- shunt/spec.yue:550
      return nil -- shunt/spec.yue:551
    end, -- shunt/spec.yue:553
    explain_match = function(self, actual) -- shunt/spec.yue:553
      if 'table' ~= type(actual) then -- shunt/spec.yue:554
        return "is a " .. tostring(actual) -- shunt/spec.yue:555
      else -- shunt/spec.yue:556
        do -- shunt/spec.yue:556
          local non_match = self:find_non_match(actual) -- shunt/spec.yue:556
          if non_match then -- shunt/spec.yue:556
            return "in which some element " .. tostring(self.inner:describe(false)) -- shunt/spec.yue:557
          else -- shunt/spec.yue:559
            return "in which each element " .. tostring(self.inner:describe(true)) -- shunt/spec.yue:559
          end -- shunt/spec.yue:556
        end -- shunt/spec.yue:556
      end -- shunt/spec.yue:554
    end, -- shunt/spec.yue:561
    describe = function(self, is_match) -- shunt/spec.yue:561
      if is_match == nil then -- shunt/spec.yue:561
        is_match = true -- shunt/spec.yue:561
      end -- shunt/spec.yue:561
      if is_match then -- shunt/spec.yue:562
        return "consists of " .. tostring(self.pretty_kind) .. " which " .. tostring(self.inner:describe()) -- shunt/spec.yue:563
      else -- shunt/spec.yue:565
        return "contains a " .. tostring(self.pretty_kind) .. " which " .. tostring(self.inner:describe()) -- shunt/spec.yue:565
      end -- shunt/spec.yue:562
    end -- shunt/spec.yue:528
  } -- shunt/spec.yue:528
  if _base_0.__index == nil then -- shunt/spec.yue:528
    _base_0.__index = _base_0 -- shunt/spec.yue:528
  end -- shunt/spec.yue:565
  _class_0 = setmetatable({ -- shunt/spec.yue:528
    __init = function(self, kind, inner) -- shunt/spec.yue:529
      self.kind = kind -- shunt/spec.yue:529
      self.inner = inner -- shunt/spec.yue:529
      if self.kind == 'key-value' then -- shunt/spec.yue:530
        self.pretty_kind = 'key-value pair' -- shunt/spec.yue:531
      else -- shunt/spec.yue:533
        self.pretty_kind = self.kind -- shunt/spec.yue:533
      end -- shunt/spec.yue:530
    end, -- shunt/spec.yue:528
    __base = _base_0, -- shunt/spec.yue:528
    __name = "Each" -- shunt/spec.yue:528
  }, { -- shunt/spec.yue:528
    __index = _base_0, -- shunt/spec.yue:528
    __call = function(cls, ...) -- shunt/spec.yue:528
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:528
      cls.__init(_self_0, ...) -- shunt/spec.yue:528
      return _self_0 -- shunt/spec.yue:528
    end -- shunt/spec.yue:528
  }) -- shunt/spec.yue:528
  _base_0.__class = _class_0 -- shunt/spec.yue:528
  Each = _class_0 -- shunt/spec.yue:528
end -- shunt/spec.yue:565
do -- shunt/spec.yue:567
  local _class_0 -- shunt/spec.yue:567
  local _base_0 = { -- shunt/spec.yue:567
    matches = function(self, actual) -- shunt/spec.yue:577
      return (actual ~= nil) and not ((self:find_non_match(actual)) ~= nil) -- shunt/spec.yue:578
    end, -- shunt/spec.yue:580
    find_non_match = function(self, actual) -- shunt/spec.yue:580
      local _list_0 = self.fields -- shunt/spec.yue:581
      for _index_0 = 1, #_list_0 do -- shunt/spec.yue:581
        local _des_0 = _list_0[_index_0] -- shunt/spec.yue:581
        local field, matcher = _des_0.field, _des_0.matcher -- shunt/spec.yue:581
        if not matcher:matches(actual[field]) then -- shunt/spec.yue:582
          return field, matcher -- shunt/spec.yue:583
        end -- shunt/spec.yue:582
      end -- shunt/spec.yue:583
      return nil -- shunt/spec.yue:584
    end, -- shunt/spec.yue:586
    explain_match = function(self, actual) -- shunt/spec.yue:586
      if 'table' ~= type(actual) then -- shunt/spec.yue:587
        return "is a " .. tostring(type(actual)) -- shunt/spec.yue:588
      end -- shunt/spec.yue:587
      local non_match_field, non_match_matcher = self:find_non_match(actual) -- shunt/spec.yue:590
      if not (non_match_field ~= nil) then -- shunt/spec.yue:591
        local field_descriptions -- shunt/spec.yue:592
        do -- shunt/spec.yue:592
          local _accum_0 = { } -- shunt/spec.yue:592
          local _len_0 = 1 -- shunt/spec.yue:592
          local _list_0 = self.fields -- shunt/spec.yue:592
          for _index_0 = 1, #_list_0 do -- shunt/spec.yue:592
            local _des_0 = _list_0[_index_0] -- shunt/spec.yue:592
            local field, matcher = _des_0.field, _des_0.matcher -- shunt/spec.yue:592
            _accum_0[_len_0] = "there is a field '" .. tostring(field) .. "' " .. tostring(matcher:explain_match(actual[field])) -- shunt/spec.yue:592
            _len_0 = _len_0 + 1 -- shunt/spec.yue:592
          end -- shunt/spec.yue:592
          field_descriptions = _accum_0 -- shunt/spec.yue:592
        end -- shunt/spec.yue:592
        return "in which:\n  " .. tostring(table.concat(field_descriptions, '\n  ')) -- shunt/spec.yue:593
      else -- shunt/spec.yue:595
        return "in which field " .. tostring(repr(non_match_field)) .. " " .. tostring(non_match_matcher:explain_match(actual[non_match_field])) -- shunt/spec.yue:595
      end -- shunt/spec.yue:591
    end, -- shunt/spec.yue:597
    describe = function(self, is_match) -- shunt/spec.yue:597
      if is_match == nil then -- shunt/spec.yue:597
        is_match = true -- shunt/spec.yue:597
      end -- shunt/spec.yue:597
      local field_descriptions -- shunt/spec.yue:598
      do -- shunt/spec.yue:598
        local _accum_0 = { } -- shunt/spec.yue:598
        local _len_0 = 1 -- shunt/spec.yue:598
        local _list_0 = self.fields -- shunt/spec.yue:598
        for _index_0 = 1, #_list_0 do -- shunt/spec.yue:598
          local _des_0 = _list_0[_index_0] -- shunt/spec.yue:598
          local field, matcher = _des_0.field, _des_0.matcher -- shunt/spec.yue:598
          _accum_0[_len_0] = "there is a field '" .. tostring(field) .. "' which " .. tostring(matcher:describe()) -- shunt/spec.yue:598
          _len_0 = _len_0 + 1 -- shunt/spec.yue:598
        end -- shunt/spec.yue:598
        field_descriptions = _accum_0 -- shunt/spec.yue:598
      end -- shunt/spec.yue:598
      if is_match then -- shunt/spec.yue:599
        return "is a table in which:\n  " .. tostring(table.concat(field_descriptions, '\n  ')) -- shunt/spec.yue:600
      else -- shunt/spec.yue:602
        return "isn't a table in which:\n  " .. tostring(table.concat(field_descriptions, '\n  ')) -- shunt/spec.yue:602
      end -- shunt/spec.yue:599
    end -- shunt/spec.yue:567
  } -- shunt/spec.yue:567
  if _base_0.__index == nil then -- shunt/spec.yue:567
    _base_0.__index = _base_0 -- shunt/spec.yue:567
  end -- shunt/spec.yue:602
  _class_0 = setmetatable({ -- shunt/spec.yue:567
    __init = function(self, fields) -- shunt/spec.yue:568
      do -- shunt/spec.yue:569
        local _accum_0 = { } -- shunt/spec.yue:569
        local _len_0 = 1 -- shunt/spec.yue:569
        for field, matcher in pairs(fields) do -- shunt/spec.yue:569
          _accum_0[_len_0] = { -- shunt/spec.yue:569
            field = field, -- shunt/spec.yue:569
            matcher = matcher -- shunt/spec.yue:569
          } -- shunt/spec.yue:569
          _len_0 = _len_0 + 1 -- shunt/spec.yue:569
        end -- shunt/spec.yue:569
        self.fields = _accum_0 -- shunt/spec.yue:569
      end -- shunt/spec.yue:569
      return table.sort(self.fields, function(a, b) -- shunt/spec.yue:570
        local taf = type(a.field) -- shunt/spec.yue:571
        local tbf = type(b.field) -- shunt/spec.yue:572
        if taf ~= tbf or taf == 'number' then -- shunt/spec.yue:573
          return false -- shunt/spec.yue:574
        end -- shunt/spec.yue:573
        return a.field < b.field -- shunt/spec.yue:575
      end) -- shunt/spec.yue:575
    end, -- shunt/spec.yue:567
    __base = _base_0, -- shunt/spec.yue:567
    __name = "Fields" -- shunt/spec.yue:567
  }, { -- shunt/spec.yue:567
    __index = _base_0, -- shunt/spec.yue:567
    __call = function(cls, ...) -- shunt/spec.yue:567
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:567
      cls.__init(_self_0, ...) -- shunt/spec.yue:567
      return _self_0 -- shunt/spec.yue:567
    end -- shunt/spec.yue:567
  }) -- shunt/spec.yue:567
  _base_0.__class = _class_0 -- shunt/spec.yue:567
  Fields = _class_0 -- shunt/spec.yue:567
end -- shunt/spec.yue:602
do -- shunt/spec.yue:604
  local _with_0 = { } -- shunt/spec.yue:604
  _with_0['('] = true -- shunt/spec.yue:605
  _with_0[')'] = true -- shunt/spec.yue:606
  _with_0['['] = true -- shunt/spec.yue:607
  _with_0[']'] = true -- shunt/spec.yue:608
  _with_0['{'] = true -- shunt/spec.yue:609
  _with_0['}'] = true -- shunt/spec.yue:610
  _with_0['!'] = true -- shunt/spec.yue:611
  _with_0['"'] = true -- shunt/spec.yue:612
  _with_0["'"] = true -- shunt/spec.yue:613
  _with_0['$'] = true -- shunt/spec.yue:614
  _with_0['%'] = true -- shunt/spec.yue:615
  _with_0['^'] = true -- shunt/spec.yue:616
  _with_0['&'] = true -- shunt/spec.yue:617
  _with_0['*'] = true -- shunt/spec.yue:618
  _with_0['-'] = true -- shunt/spec.yue:619
  _with_0['_'] = true -- shunt/spec.yue:620
  _with_0['+'] = true -- shunt/spec.yue:621
  _with_0['='] = true -- shunt/spec.yue:622
  _with_0[':'] = true -- shunt/spec.yue:623
  _with_0[' '] = true -- shunt/spec.yue:624
  _with_0['\t'] = true -- shunt/spec.yue:625
  _with_0['.'] = true -- shunt/spec.yue:626
  _with_0[','] = true -- shunt/spec.yue:627
  _with_0['/'] = true -- shunt/spec.yue:628
  _with_0['\\'] = true -- shunt/spec.yue:629
  _with_0['>'] = true -- shunt/spec.yue:630
  _with_0['<'] = true -- shunt/spec.yue:631
  _with_0['!'] = true -- shunt/spec.yue:632
  _with_0['?'] = true -- shunt/spec.yue:633
  _with_0['#'] = true -- shunt/spec.yue:634
  _with_0['|'] = true -- shunt/spec.yue:635
  _with_0['~'] = true -- shunt/spec.yue:636
  local a = string.byte('a') -- shunt/spec.yue:637
  for i = 0, 25 do -- shunt/spec.yue:638
    _with_0[string.char(a + i)] = true -- shunt/spec.yue:639
  end -- shunt/spec.yue:639
  local A = string.byte('A') -- shunt/spec.yue:640
  for i = 0, 25 do -- shunt/spec.yue:641
    _with_0[string.char(A + i)] = true -- shunt/spec.yue:642
  end -- shunt/spec.yue:642
  local zero = string.byte('0') -- shunt/spec.yue:643
  for i = 0, 9 do -- shunt/spec.yue:644
    _with_0[string.char(zero + i)] = true -- shunt/spec.yue:645
  end -- shunt/spec.yue:645
  visible_chars = _with_0 -- shunt/spec.yue:604
end -- shunt/spec.yue:604
repr = function(self) -- shunt/spec.yue:646
  return table.concat((function() -- shunt/spec.yue:647
    local _with_0 = { } -- shunt/spec.yue:647
    local stack = { } -- shunt/spec.yue:648
    local repr_impl -- shunt/spec.yue:649
    repr_impl = function(self) -- shunt/spec.yue:649
      for _index_0 = 1, #stack do -- shunt/spec.yue:650
        local elem = stack[_index_0] -- shunt/spec.yue:650
        if rawequal(self, elem) then -- shunt/spec.yue:651
          _with_0[#_with_0 + 1] = '...' -- shunt/spec.yue:652
          return -- shunt/spec.yue:653
        end -- shunt/spec.yue:651
      end -- shunt/spec.yue:653
      stack[#stack + 1] = self -- shunt/spec.yue:654
      do -- shunt/spec.yue:656
        local _exp_0 = type(self) -- shunt/spec.yue:656
        if 'string' == _exp_0 then -- shunt/spec.yue:657
          _with_0[#_with_0 + 1] = "'" -- shunt/spec.yue:658
          for i = 1, #self do -- shunt/spec.yue:659
            local c = self:sub(i, i) -- shunt/spec.yue:660
            if visible_chars[c] then -- shunt/spec.yue:661
              _with_0[#_with_0 + 1] = c -- shunt/spec.yue:662
            else -- shunt/spec.yue:664
              _with_0[#_with_0 + 1] = ("\\x%02x"):format(string.byte(self, i)) -- shunt/spec.yue:664
            end -- shunt/spec.yue:661
          end -- shunt/spec.yue:664
          _with_0[#_with_0 + 1] = "'" -- shunt/spec.yue:665
        elseif 'table' == _exp_0 then -- shunt/spec.yue:666
          if (getmetatable(self) ~= nil) and (getmetatable(self).__tostring ~= nil) then -- shunt/spec.yue:667
            _with_0[#_with_0 + 1] = tostring(self) -- shunt/spec.yue:668
          else -- shunt/spec.yue:669
            if is_list(self) then -- shunt/spec.yue:669
              _with_0[#_with_0 + 1] = '[' -- shunt/spec.yue:670
              local first = true -- shunt/spec.yue:671
              for _index_0 = 1, #self do -- shunt/spec.yue:672
                local elem = self[_index_0] -- shunt/spec.yue:672
                if not first then -- shunt/spec.yue:673
                  _with_0[#_with_0 + 1] = ', ' -- shunt/spec.yue:674
                end -- shunt/spec.yue:673
                first = false -- shunt/spec.yue:675
                repr_impl(elem) -- shunt/spec.yue:677
              end -- shunt/spec.yue:677
              _with_0[#_with_0 + 1] = ']' -- shunt/spec.yue:678
            else -- shunt/spec.yue:680
              _with_0[#_with_0 + 1] = '{' -- shunt/spec.yue:680
              local first = true -- shunt/spec.yue:681
              local keys -- shunt/spec.yue:682
              do -- shunt/spec.yue:682
                local _accum_0 = { } -- shunt/spec.yue:682
                local _len_0 = 1 -- shunt/spec.yue:682
                for key, _ in pairs(self) do -- shunt/spec.yue:682
                  _accum_0[_len_0] = key -- shunt/spec.yue:682
                  _len_0 = _len_0 + 1 -- shunt/spec.yue:682
                end -- shunt/spec.yue:682
                keys = _accum_0 -- shunt/spec.yue:682
              end -- shunt/spec.yue:682
              if can_sort(keys) then -- shunt/spec.yue:683
                table.sort(keys, function(a, b) -- shunt/spec.yue:684
                  local ta = type(a) -- shunt/spec.yue:685
                  local tb = type(b) -- shunt/spec.yue:686
                  if ta ~= tb or ta == 'number' then -- shunt/spec.yue:687
                    return false -- shunt/spec.yue:688
                  end -- shunt/spec.yue:687
                  return a < b -- shunt/spec.yue:689
                end) -- shunt/spec.yue:684
              end -- shunt/spec.yue:683
              for _index_0 = 1, #keys do -- shunt/spec.yue:690
                local key = keys[_index_0] -- shunt/spec.yue:690
                local value = self[key] -- shunt/spec.yue:691
                if not first then -- shunt/spec.yue:692
                  _with_0[#_with_0 + 1] = ', ' -- shunt/spec.yue:693
                end -- shunt/spec.yue:692
                first = false -- shunt/spec.yue:694
                repr_impl(key) -- shunt/spec.yue:696
                _with_0[#_with_0 + 1] = ': ' -- shunt/spec.yue:697
                repr_impl(value) -- shunt/spec.yue:698
              end -- shunt/spec.yue:698
              _with_0[#_with_0 + 1] = '}' -- shunt/spec.yue:699
            end -- shunt/spec.yue:669
          end -- shunt/spec.yue:667
        else -- shunt/spec.yue:701
          _with_0[#_with_0 + 1] = tostring(self) -- shunt/spec.yue:701
        end -- shunt/spec.yue:701
      end -- shunt/spec.yue:701
      stack[#stack] = nil -- shunt/spec.yue:703
    end -- shunt/spec.yue:649
    repr_impl(self) -- shunt/spec.yue:704
    return _with_0 -- shunt/spec.yue:647
  end)()) -- shunt/spec.yue:704
end -- shunt/spec.yue:646
_module_0["repr"] = repr -- shunt/spec.yue:704
is_list = function(table) -- shunt/spec.yue:706
  local max_key = 0 -- shunt/spec.yue:707
  local num_keys = 0 -- shunt/spec.yue:708
  for k, _ in pairs(table) do -- shunt/spec.yue:709
    num_keys = num_keys + 1 -- shunt/spec.yue:710
    if 'number' ~= type(k) then -- shunt/spec.yue:711
      return false -- shunt/spec.yue:712
    end -- shunt/spec.yue:711
    if max_key < k then -- shunt/spec.yue:713
      max_key = k -- shunt/spec.yue:714
    end -- shunt/spec.yue:713
  end -- shunt/spec.yue:714
  return max_key == num_keys and num_keys > 0 -- shunt/spec.yue:715
end -- shunt/spec.yue:706
can_sort = function(list) -- shunt/spec.yue:717
  for _index_0 = 1, #list do -- shunt/spec.yue:718
    local elem = list[_index_0] -- shunt/spec.yue:718
    local _continue_0 = false -- shunt/spec.yue:719
    repeat -- shunt/spec.yue:719
      do -- shunt/spec.yue:719
        local _exp_0 = type(elem) -- shunt/spec.yue:719
        if 'boolean' == _exp_0 or 'string' == _exp_0 or 'number' == _exp_0 then -- shunt/spec.yue:720
          _continue_0 = true -- shunt/spec.yue:721
          break -- shunt/spec.yue:721
        elseif 'table' == _exp_0 then -- shunt/spec.yue:722
          if not (getmetatable(table) ~= nil) or not (getmetatable(table).__lt ~= nil) then -- shunt/spec.yue:723
            return false -- shunt/spec.yue:724
          end -- shunt/spec.yue:723
        else -- shunt/spec.yue:726
          return false -- shunt/spec.yue:726
        end -- shunt/spec.yue:726
      end -- shunt/spec.yue:726
      _continue_0 = true -- shunt/spec.yue:719
    until true -- shunt/spec.yue:726
    if not _continue_0 then -- shunt/spec.yue:726
      break -- shunt/spec.yue:726
    end -- shunt/spec.yue:726
  end -- shunt/spec.yue:726
  return true -- shunt/spec.yue:727
end -- shunt/spec.yue:717
clone = function(value) -- shunt/spec.yue:729
  local _exp_0 = type(value) -- shunt/spec.yue:730
  if 'nil' == _exp_0 or 'boolean' == _exp_0 or 'number' == _exp_0 or 'string' == _exp_0 then -- shunt/spec.yue:731
    return value -- shunt/spec.yue:732
  elseif 'table' == _exp_0 then -- shunt/spec.yue:733
    local _with_0 = { } -- shunt/spec.yue:734
    for k, v in pairs(value) do -- shunt/spec.yue:735
      _with_0[clone(k)] = clone(v) -- shunt/spec.yue:736
    end -- shunt/spec.yue:736
    return _with_0 -- shunt/spec.yue:734
  else -- shunt/spec.yue:738
    return error("cannot clone a " .. tostring(type(value)) .. " (" .. tostring(value) .. ")") -- shunt/spec.yue:738
  end -- shunt/spec.yue:738
end -- shunt/spec.yue:729
_module_0["clone"] = clone -- shunt/spec.yue:738
matchers = { -- shunt/spec.yue:741
  anything = function() -- shunt/spec.yue:741
    return Anything() -- shunt/spec.yue:741
  end, -- shunt/spec.yue:741
  some = function() -- shunt/spec.yue:742
    return Some() -- shunt/spec.yue:742
  end, -- shunt/spec.yue:742
  not_ = function(matcher) -- shunt/spec.yue:743
    return Not(matcher) -- shunt/spec.yue:743
  end, -- shunt/spec.yue:743
  eq = function(value) -- shunt/spec.yue:744
    return Compare('==', value) -- shunt/spec.yue:744
  end, -- shunt/spec.yue:744
  deep_eq = function(value) -- shunt/spec.yue:745
    return DeepEq(value) -- shunt/spec.yue:745
  end, -- shunt/spec.yue:745
  lt = function(value) -- shunt/spec.yue:746
    return Compare('<', value) -- shunt/spec.yue:746
  end, -- shunt/spec.yue:746
  le = function(value) -- shunt/spec.yue:747
    return Compare('<=', value) -- shunt/spec.yue:747
  end, -- shunt/spec.yue:747
  gt = function(value) -- shunt/spec.yue:748
    return Compare('>', value) -- shunt/spec.yue:748
  end, -- shunt/spec.yue:748
  ge = function(value) -- shunt/spec.yue:749
    return Compare('>=', value) -- shunt/spec.yue:749
  end, -- shunt/spec.yue:749
  len = function(matcher) -- shunt/spec.yue:750
    return Len(matcher) -- shunt/spec.yue:750
  end, -- shunt/spec.yue:750
  matches = function(pattern) -- shunt/spec.yue:751
    return Matches(pattern) -- shunt/spec.yue:751
  end, -- shunt/spec.yue:751
  near = function(value, delta) -- shunt/spec.yue:752
    return Near(value, delta) -- shunt/spec.yue:752
  end, -- shunt/spec.yue:752
  tostrings_as = function(matcher) -- shunt/spec.yue:753
    return ToStringsAs(matcher) -- shunt/spec.yue:753
  end, -- shunt/spec.yue:753
  contains_key = function(matcher) -- shunt/spec.yue:754
    return Contains('key', matcher) -- shunt/spec.yue:754
  end, -- shunt/spec.yue:754
  contains_value = function(matcher) -- shunt/spec.yue:755
    return Contains('value', matcher) -- shunt/spec.yue:755
  end, -- shunt/spec.yue:755
  contains_pair = function(matcher) -- shunt/spec.yue:756
    return Contains('key-value', matcher) -- shunt/spec.yue:756
  end, -- shunt/spec.yue:756
  each_key = function(matcher) -- shunt/spec.yue:757
    return Each('key', matcher) -- shunt/spec.yue:757
  end, -- shunt/spec.yue:757
  each_value = function(matcher) -- shunt/spec.yue:758
    return Each('value', matcher) -- shunt/spec.yue:758
  end, -- shunt/spec.yue:758
  each_pair = function(matcher) -- shunt/spec.yue:759
    return Each('key-value', matcher) -- shunt/spec.yue:759
  end, -- shunt/spec.yue:759
  no_errors = function() -- shunt/spec.yue:760
    return NoErrors() -- shunt/spec.yue:760
  end, -- shunt/spec.yue:760
  errors = function(matcher) -- shunt/spec.yue:761
    return Errors(matcher) -- shunt/spec.yue:761
  end, -- shunt/spec.yue:761
  has_type = function(typ) -- shunt/spec.yue:762
    return Type(typ) -- shunt/spec.yue:762
  end, -- shunt/spec.yue:762
  has_fields = function(fields) -- shunt/spec.yue:763
    return Fields(fields) -- shunt/spec.yue:763
  end -- shunt/spec.yue:763
} -- shunt/spec.yue:740
_module_0["matchers"] = matchers -- shunt/spec.yue:763
reflow = function(prefix, string, width) -- shunt/spec.yue:765
  if width == nil then -- shunt/spec.yue:765
    width = 80 -- shunt/spec.yue:765
  end -- shunt/spec.yue:765
  local lines -- shunt/spec.yue:766
  do -- shunt/spec.yue:766
    local _with_0 = { } -- shunt/spec.yue:766
    local chunk_len = width - #prefix -- shunt/spec.yue:767
    local first_line = true -- shunt/spec.yue:768
    for line in string:gmatch('[^\r\n]*') do -- shunt/spec.yue:769
      for i = 1, #line, chunk_len do -- shunt/spec.yue:770
        local chunk = line:sub(i, i + chunk_len - 1) -- shunt/spec.yue:771
        if first_line then -- shunt/spec.yue:772
          _with_0[#_with_0 + 1] = chunk -- shunt/spec.yue:773
        else -- shunt/spec.yue:775
          _with_0[#_with_0 + 1] = prefix .. chunk -- shunt/spec.yue:775
        end -- shunt/spec.yue:772
        first_line = false -- shunt/spec.yue:776
      end -- shunt/spec.yue:776
    end -- shunt/spec.yue:776
    lines = _with_0 -- shunt/spec.yue:766
  end -- shunt/spec.yue:766
  return table.concat(lines, '\n') -- shunt/spec.yue:777
end -- shunt/spec.yue:765
testing = false -- shunt/spec.yue:779
running_tests = function() -- shunt/spec.yue:780
  return testing -- shunt/spec.yue:780
end -- shunt/spec.yue:780
_module_0["running_tests"] = running_tests -- shunt/spec.yue:780
run_tests = function(filter) -- shunt/spec.yue:782
  if not (spec_fns ~= nil) then -- shunt/spec.yue:784
    return -- shunt/spec.yue:785
  end -- shunt/spec.yue:784
  for _index_0 = 1, #spec_fns do -- shunt/spec.yue:786
    local spec_fn = spec_fns[_index_0] -- shunt/spec.yue:786
    spec_fn() -- shunt/spec.yue:787
  end -- shunt/spec.yue:787
  testing = true -- shunt/spec.yue:789
  if root_spec ~= nil then -- shunt/spec.yue:790
    root_spec:test(filter) -- shunt/spec.yue:790
  end -- shunt/spec.yue:790
  testing = false -- shunt/spec.yue:791
  log(function() -- shunt/spec.yue:793
    return tostring(Test.num_run) .. " checks run" -- shunt/spec.yue:794
  end) -- shunt/spec.yue:793
  local ok = Test.num_failures == 0 -- shunt/spec.yue:795
  if not ok then -- shunt/spec.yue:796
    print(tostring(Test.num_failures) .. " checks failed!") -- shunt/spec.yue:797
  end -- shunt/spec.yue:796
  return ok -- shunt/spec.yue:798
end -- shunt/spec.yue:782
_module_0["run_tests"] = run_tests -- shunt/spec.yue:798
return _module_0 -- shunt/spec.yue:798
end
package.preload['shunt.state'] = function(...)
-- [yue]: shunt/state.yue
local _module_0 = { } -- shunt/state.yue:1
local UNIMPLEMENTED, make_state, valid_ident, shallow_log_reporter -- shunt/state.yue:1
local log = require('shunt.logger').log -- shunt/state.yue:0
local declare_type, F, T -- shunt/state.yue:0
do -- shunt/state.yue:0
  local _obj_0 = require('shunt.quicktype') -- shunt/state.yue:0
  declare_type, F, T = _obj_0.declare_type, _obj_0.F, _obj_0.T -- shunt/state.yue:0
end -- shunt/state.yue:0
local spec = require('shunt.spec').spec -- shunt/state.yue:0
UNIMPLEMENTED = setmetatable({ }, { -- shunt/state.yue:9
  __call = function(...) end -- shunt/state.yue:9
}) -- shunt/state.yue:9
local StateMachineBuilder -- shunt/state.yue:11
do -- shunt/state.yue:11
  local _class_0 -- shunt/state.yue:11
  local _base_0 = { -- shunt/state.yue:11
    set_initial_state = F('(string) => Self', function(self, _initial_state_name) -- shunt/state.yue:22
      self._initial_state_name = _initial_state_name -- shunt/state.yue:22
      return self -- shunt/state.yue:22
    end), -- shunt/state.yue:24
    set_state_invariant = F('(({name: string}) -> <>) => Self', function(self, _check_state_invariant) -- shunt/state.yue:24
      self._check_state_invariant = _check_state_invariant -- shunt/state.yue:24
      return self -- shunt/state.yue:24
    end), -- shunt/state.yue:26
    set_transition_invariant = F('(({name: string}, {name: string}) -> <>) => Self', function(self, _check_transition_invariant) -- shunt/state.yue:26
      self._check_transition_invariant = _check_transition_invariant -- shunt/state.yue:26
      return self -- shunt/state.yue:26
    end), -- shunt/state.yue:28
    declare_endless = F('() => Self', function(self) -- shunt/state.yue:28
      self._endless = true -- shunt/state.yue:29
      return self -- shunt/state.yue:30
    end), -- shunt/state.yue:32
    set_reporter = F('((State, State) => <>) => Self', function(self, _reporter) -- shunt/state.yue:32
      self._reporter = _reporter -- shunt/state.yue:32
      return self -- shunt/state.yue:32
    end), -- shunt/state.yue:34
    add = F('(State) => Self', function(self, state) -- shunt/state.yue:34
      if (self._states[state._name] ~= nil) then -- shunt/state.yue:35
        error("cannot build state machine: state '" .. tostring(state._name) .. "' redefined") -- shunt/state.yue:36
      end -- shunt/state.yue:35
      self._states[state._name] = state -- shunt/state.yue:37
      return self -- shunt/state.yue:38
    end), -- shunt/state.yue:40
    build = F('() => StateMachine', function(self) -- shunt/state.yue:40
      do -- shunt/state.yue:41
        local err = self:validate() -- shunt/state.yue:41
        if err then -- shunt/state.yue:41
          error("cannot build state machine: " .. tostring(err)) -- shunt/state.yue:42
        end -- shunt/state.yue:41
      end -- shunt/state.yue:41
      return self:build_unchecked() -- shunt/state.yue:43
    end), -- shunt/state.yue:45
    validate = F('() => ?string', function(self) -- shunt/state.yue:45
      if not (self._initial_state_name ~= nil) then -- shunt/state.yue:46
        return 'initial state undefined' -- shunt/state.yue:47
      end -- shunt/state.yue:46
      if not (self._states[self._initial_state_name] ~= nil) then -- shunt/state.yue:48
        return "initial state '" .. tostring(self._initial_state_name) .. "' undefined" -- shunt/state.yue:49
      end -- shunt/state.yue:48
      if self._states[self._initial_state_name]._data_type ~= 'nil' then -- shunt/state.yue:50
        return 'initial state has data present' -- shunt/state.yue:51
      end -- shunt/state.yue:50
      if not self._endless then -- shunt/state.yue:52
        do -- shunt/state.yue:53
          local err = self:validate_end_states() -- shunt/state.yue:53
          if err then -- shunt/state.yue:53
            return err -- shunt/state.yue:54
          end -- shunt/state.yue:53
        end -- shunt/state.yue:53
      else -- shunt/state.yue:55
        do -- shunt/state.yue:55
          local err = self:validate_endless() -- shunt/state.yue:55
          if err then -- shunt/state.yue:55
            return err -- shunt/state.yue:56
          end -- shunt/state.yue:55
        end -- shunt/state.yue:55
      end -- shunt/state.yue:52
      do -- shunt/state.yue:57
        local err = self:validate_transitions() -- shunt/state.yue:57
        if err then -- shunt/state.yue:57
          return err -- shunt/state.yue:58
        end -- shunt/state.yue:57
      end -- shunt/state.yue:57
    end), -- shunt/state.yue:60
    validate_end_states = F('() => ?string', function(self) -- shunt/state.yue:60
      for _, state in pairs(self._states) do -- shunt/state.yue:61
        if state._is_end then -- shunt/state.yue:62
          return nil -- shunt/state.yue:63
        end -- shunt/state.yue:62
      end -- shunt/state.yue:63
      return "no end states declared" -- shunt/state.yue:64
    end), -- shunt/state.yue:66
    validate_endless = F('() => ?string', function(self) -- shunt/state.yue:66
      local dead_ends -- shunt/state.yue:67
      do -- shunt/state.yue:67
        local _with_0 = { } -- shunt/state.yue:67
        for _, state in pairs(self._states) do -- shunt/state.yue:68
          if #state._transition_list < 1 then -- shunt/state.yue:69
            _with_0[#_with_0 + 1] = state._name -- shunt/state.yue:70
          end -- shunt/state.yue:69
        end -- shunt/state.yue:70
        dead_ends = _with_0 -- shunt/state.yue:67
      end -- shunt/state.yue:67
      if #dead_ends > 0 then -- shunt/state.yue:71
        table.sort(dead_ends) -- shunt/state.yue:72
        return "the following states are dead ends: " .. tostring(table.concat(dead_ends, ', ')) -- shunt/state.yue:73
      end -- shunt/state.yue:71
      return nil -- shunt/state.yue:74
    end), -- shunt/state.yue:76
    validate_transitions = F('() => ?string', function(self) -- shunt/state.yue:76
      local seen = T('{string}', { }) -- shunt/state.yue:77
      local stack = T('[string]', { }) -- shunt/state.yue:78
      local dfs -- shunt/state.yue:79
      dfs = F('(string, {string->[string]}) -> <>', function(state_name, transitions) -- shunt/state.yue:80
        if seen[state_name] then -- shunt/state.yue:81
          return -- shunt/state.yue:82
        end -- shunt/state.yue:81
        seen[state_name] = true -- shunt/state.yue:83
        for _index_0 = 1, #stack do -- shunt/state.yue:85
          local name = stack[_index_0] -- shunt/state.yue:85
          if name == state_name then -- shunt/state.yue:86
            return -- shunt/state.yue:87
          end -- shunt/state.yue:86
        end -- shunt/state.yue:87
        stack[#stack + 1] = name -- shunt/state.yue:88
        local _list_0 = assert(transitions[state_name], "internal error: no transitions for " .. tostring(state_name)) -- shunt/state.yue:89
        for _index_0 = 1, #_list_0 do -- shunt/state.yue:89
          local neighbour = _list_0[_index_0] -- shunt/state.yue:89
          dfs(neighbour, transitions) -- shunt/state.yue:90
        end -- shunt/state.yue:90
        stack[#stack] = nil -- shunt/state.yue:91
      end) -- shunt/state.yue:80
      dfs(self._initial_state_name, (function() -- shunt/state.yue:93
        local _with_0 = { } -- shunt/state.yue:93
        for name, state in pairs(self._states) do -- shunt/state.yue:94
          do -- shunt/state.yue:95
            local _accum_0 = { } -- shunt/state.yue:95
            local _len_0 = 1 -- shunt/state.yue:95
            for state_name, _ in pairs(state._transitions) do -- shunt/state.yue:95
              _accum_0[_len_0] = state_name -- shunt/state.yue:95
              _len_0 = _len_0 + 1 -- shunt/state.yue:95
            end -- shunt/state.yue:95
            _with_0[name] = _accum_0 -- shunt/state.yue:95
          end -- shunt/state.yue:95
        end -- shunt/state.yue:95
        return _with_0 -- shunt/state.yue:93
      end)()) -- shunt/state.yue:93
      local non_reachable_from_start -- shunt/state.yue:97
      do -- shunt/state.yue:97
        local _with_0 = { } -- shunt/state.yue:97
        for state_name, _ in pairs(self._states) do -- shunt/state.yue:98
          if not seen[state_name] then -- shunt/state.yue:99
            _with_0[#_with_0 + 1] = state_name -- shunt/state.yue:100
          end -- shunt/state.yue:99
        end -- shunt/state.yue:100
        non_reachable_from_start = _with_0 -- shunt/state.yue:97
      end -- shunt/state.yue:97
      if #non_reachable_from_start > 0 then -- shunt/state.yue:101
        table.sort(non_reachable_from_start) -- shunt/state.yue:102
        return "the following states are not reachable from the start state: " .. tostring(table.concat(non_reachable_from_start, ', ')) -- shunt/state.yue:103
      end -- shunt/state.yue:101
      if not self._endless then -- shunt/state.yue:105
        seen = { } -- shunt/state.yue:106
        stack = { } -- shunt/state.yue:107
        local back_transitions -- shunt/state.yue:108
        do -- shunt/state.yue:108
          local _with_0 = { } -- shunt/state.yue:108
          for _, state in pairs(self._states) do -- shunt/state.yue:109
            _with_0[state._name] = { } -- shunt/state.yue:110
          end -- shunt/state.yue:110
          for _, state in pairs(self._states) do -- shunt/state.yue:111
            for neighbour, _ in pairs(state._transitions) do -- shunt/state.yue:112
              do -- shunt/state.yue:113
                local _obj_0 = _with_0[neighbour] -- shunt/state.yue:113
                _obj_0[#_obj_0 + 1] = state._name -- shunt/state.yue:113
              end -- shunt/state.yue:113
            end -- shunt/state.yue:113
          end -- shunt/state.yue:113
          back_transitions = _with_0 -- shunt/state.yue:108
        end -- shunt/state.yue:108
        local end_states -- shunt/state.yue:114
        do -- shunt/state.yue:114
          local _accum_0 = { } -- shunt/state.yue:114
          local _len_0 = 1 -- shunt/state.yue:114
          for _, state in pairs(self._states) do -- shunt/state.yue:114
            if state._is_end then -- shunt/state.yue:114
              _accum_0[_len_0] = state._name -- shunt/state.yue:114
              _len_0 = _len_0 + 1 -- shunt/state.yue:114
            end -- shunt/state.yue:114
          end -- shunt/state.yue:114
          end_states = _accum_0 -- shunt/state.yue:114
        end -- shunt/state.yue:114
        for _index_0 = 1, #end_states do -- shunt/state.yue:115
          local end_state = end_states[_index_0] -- shunt/state.yue:115
          dfs(end_state, back_transitions) -- shunt/state.yue:116
        end -- shunt/state.yue:116
        local non_reachable_from_end -- shunt/state.yue:118
        do -- shunt/state.yue:118
          local _with_0 = { } -- shunt/state.yue:118
          for state_name, _ in pairs(self._states) do -- shunt/state.yue:119
            if not seen[state_name] then -- shunt/state.yue:120
              _with_0[#_with_0 + 1] = state_name -- shunt/state.yue:121
            end -- shunt/state.yue:120
          end -- shunt/state.yue:121
          non_reachable_from_end = _with_0 -- shunt/state.yue:118
        end -- shunt/state.yue:118
        if #non_reachable_from_end > 0 then -- shunt/state.yue:122
          table.sort(non_reachable_from_end) -- shunt/state.yue:123
          return "the following states are not reachable from any end state: " .. tostring(table.concat(non_reachable_from_end, ', ')) -- shunt/state.yue:124
        end -- shunt/state.yue:122
      end -- shunt/state.yue:105
      return nil -- shunt/state.yue:126
    end), -- shunt/state.yue:128
    build_unchecked = F('() => StateMachine', function(self) -- shunt/state.yue:128
      local index -- shunt/state.yue:129
      do -- shunt/state.yue:129
        local _with_0 = { } -- shunt/state.yue:129
        local ended = false -- shunt/state.yue:130
        _with_0.name = self._name -- shunt/state.yue:132
        _with_0.states = setmetatable({ }, { -- shunt/state.yue:134
          __index = T('{string->string}', (function() -- shunt/state.yue:134
            local _with_1 = setmetatable({ }, { }) -- shunt/state.yue:134
            for state_name, _ in pairs(self._states) do -- shunt/state.yue:135
              _with_1[state_name] = state_name -- shunt/state.yue:136
            end -- shunt/state.yue:136
            getmetatable(_with_1).__index = function(self, key) -- shunt/state.yue:137
              return error("cannot get state '" .. tostring(key) .. "': no such state") -- shunt/state.yue:138
            end -- shunt/state.yue:137
            return _with_1 -- shunt/state.yue:134
          end)()), -- shunt/state.yue:134
          __newindex = function(self, _, _) -- shunt/state.yue:139
            return error("cannot set fields in states") -- shunt/state.yue:140
          end -- shunt/state.yue:139
        }) -- shunt/state.yue:133
        _with_0.state = make_state(self._initial_state_name, 'nil', nil) -- shunt/state.yue:142
        local check_state_invariant = self._check_state_invariant -- shunt/state.yue:143
        if (check_state_invariant ~= nil) then -- shunt/state.yue:144
          check_state_invariant(_with_0.state) -- shunt/state.yue:145
        end -- shunt/state.yue:144
        local states = self._states -- shunt/state.yue:147
        local reporter = self._reporter -- shunt/state.yue:149
        local check_transition_invariant = self._check_transition_invariant -- shunt/state.yue:150
        _with_0["goto"] = F('(string, any) => <>', function(self, name, data) -- shunt/state.yue:151
          if ended then -- shunt/state.yue:152
            error("internal error: cannot transition ended state machine") -- shunt/state.yue:153
          end -- shunt/state.yue:152
          if not (function() -- shunt/state.yue:154
            local _obj_0 = states[self.state.name] -- shunt/state.yue:154
            if _obj_0 ~= nil then -- shunt/state.yue:154
              return _obj_0._transitions[name] -- shunt/state.yue:154
            end -- shunt/state.yue:154
            return nil -- shunt/state.yue:154
          end)() then -- shunt/state.yue:154
            error(tostring(self.name) .. ": no such transition: " .. tostring(self.state.name) .. " -> " .. tostring(name)) -- shunt/state.yue:155
          end -- shunt/state.yue:154
          local new_state_spec = states[name] -- shunt/state.yue:156
          if not (new_state_spec ~= nil) then -- shunt/state.yue:157
            error("internal error: no such state '" .. tostring(name) .. "'") -- shunt/state.yue:158
          end -- shunt/state.yue:157
          local prev_state = _with_0.state -- shunt/state.yue:159
          _with_0.state = make_state(name, new_state_spec._data_type, data) -- shunt/state.yue:160
          if (reporter ~= nil) then -- shunt/state.yue:161
            reporter(self, prev_state, _with_0.state) -- shunt/state.yue:162
          end -- shunt/state.yue:161
          if (check_state_invariant ~= nil) then -- shunt/state.yue:163
            check_state_invariant(_with_0.state) -- shunt/state.yue:164
          end -- shunt/state.yue:163
          if (check_transition_invariant ~= nil) then -- shunt/state.yue:165
            return check_transition_invariant(prev_state, _with_0.state) -- shunt/state.yue:166
          end -- shunt/state.yue:165
        end) -- shunt/state.yue:151
        _with_0.recover_to = F('(string, any) => <>', function(self, name, data) -- shunt/state.yue:168
          ended = false -- shunt/state.yue:169
          local new_state_spec = states[name] -- shunt/state.yue:170
          if not (new_state_spec ~= nil) then -- shunt/state.yue:171
            error("internal error: no such state '" .. tostring(name) .. "'") -- shunt/state.yue:172
          end -- shunt/state.yue:171
          _with_0.state = make_state(name, new_state_spec._data_type, data) -- shunt/state.yue:173
          if (check_state_invariant ~= nil) then -- shunt/state.yue:174
            return check_state_invariant(_with_0.state) -- shunt/state.yue:175
          end -- shunt/state.yue:174
        end) -- shunt/state.yue:168
        local end_states -- shunt/state.yue:177
        do -- shunt/state.yue:177
          local _tbl_0 = { } -- shunt/state.yue:177
          for _, state in pairs(self._states) do -- shunt/state.yue:177
            if state._is_end then -- shunt/state.yue:177
              _tbl_0[state._name] = true -- shunt/state.yue:177
            end -- shunt/state.yue:177
          end -- shunt/state.yue:177
          end_states = _tbl_0 -- shunt/state.yue:177
        end -- shunt/state.yue:177
        _with_0["end"] = F('() => <>', function(self) -- shunt/state.yue:178
          if ended then -- shunt/state.yue:179
            error("internal error: cannot end state machine twice") -- shunt/state.yue:180
          end -- shunt/state.yue:179
          if not end_states[self.state.name] then -- shunt/state.yue:181
            error("internal error: state " .. tostring(self.state.name) .. " is not a valid end state") -- shunt/state.yue:182
          end -- shunt/state.yue:181
          if (check_state_invariant ~= nil) then -- shunt/state.yue:183
            check_state_invariant(_with_0.state) -- shunt/state.yue:184
          end -- shunt/state.yue:183
          ended = true -- shunt/state.yue:185
        end) -- shunt/state.yue:178
        local initial_state_name = self._initial_state_name -- shunt/state.yue:187
        _with_0.to_graphviz = F('() => string', function(self) -- shunt/state.yue:188
          local lines -- shunt/state.yue:189
          do -- shunt/state.yue:189
            local _with_1 = { } -- shunt/state.yue:189
            _with_1[#_with_1 + 1] = 'digraph {' -- shunt/state.yue:190
            _with_1[#_with_1 + 1] = '  bgcolor = black' -- shunt/state.yue:191
            _with_1[#_with_1 + 1] = '  color = white' -- shunt/state.yue:192
            _with_1[#_with_1 + 1] = "  label = \"" .. tostring(self.name) .. "\"" -- shunt/state.yue:193
            _with_1[#_with_1 + 1] = '  graph [' -- shunt/state.yue:194
            _with_1[#_with_1 + 1] = '    fontname = "NewCenturySchlbk-Roman"' -- shunt/state.yue:195
            _with_1[#_with_1 + 1] = '  ]' -- shunt/state.yue:196
            _with_1[#_with_1 + 1] = '  node [' -- shunt/state.yue:197
            _with_1[#_with_1 + 1] = '    color = white' -- shunt/state.yue:198
            _with_1[#_with_1 + 1] = '    fontcolor = white' -- shunt/state.yue:199
            _with_1[#_with_1 + 1] = '    fillcolor = white' -- shunt/state.yue:200
            _with_1[#_with_1 + 1] = '    shape = plaintext' -- shunt/state.yue:201
            _with_1[#_with_1 + 1] = '    fontname = "NewCenturySchlbk-Roman"' -- shunt/state.yue:202
            _with_1[#_with_1 + 1] = '  ]' -- shunt/state.yue:203
            _with_1[#_with_1 + 1] = '  edge [' -- shunt/state.yue:204
            _with_1[#_with_1 + 1] = '    color = white' -- shunt/state.yue:205
            _with_1[#_with_1 + 1] = '    fontcolor = white' -- shunt/state.yue:206
            _with_1[#_with_1 + 1] = '    fontname = "NewCenturySchlbk-Roman"' -- shunt/state.yue:207
            _with_1[#_with_1 + 1] = '  ]' -- shunt/state.yue:208
            _with_1[#_with_1 + 1] = '  levels=1' -- shunt/state.yue:209
            _with_1[#_with_1 + 1] = "  __init[shape=point]" -- shunt/state.yue:211
            _with_1[#_with_1 + 1] = "  __init -> " .. tostring(initial_state_name) -- shunt/state.yue:212
            local state_list -- shunt/state.yue:214
            do -- shunt/state.yue:214
              local _accum_0 = { } -- shunt/state.yue:214
              local _len_0 = 1 -- shunt/state.yue:214
              for state_name, state in pairs(states) do -- shunt/state.yue:214
                _accum_0[_len_0] = { -- shunt/state.yue:214
                  state_name = state_name, -- shunt/state.yue:214
                  state = state -- shunt/state.yue:214
                } -- shunt/state.yue:214
                _len_0 = _len_0 + 1 -- shunt/state.yue:214
              end -- shunt/state.yue:214
              state_list = _accum_0 -- shunt/state.yue:214
            end -- shunt/state.yue:214
            table.sort(state_list, function(a, b) -- shunt/state.yue:215
              return a.state_name < b.state_name -- shunt/state.yue:215
            end) -- shunt/state.yue:215
            for _index_0 = 1, #state_list do -- shunt/state.yue:216
              local _des_0 = state_list[_index_0] -- shunt/state.yue:216
              local state_name, state = _des_0.state_name, _des_0.state -- shunt/state.yue:216
              _with_1[#_with_1 + 1] = '' -- shunt/state.yue:217
              local fontname_override = '' -- shunt/state.yue:218
              if state._is_end then -- shunt/state.yue:219
                fontname_override = "fontname=\"NewCenturySchlbk-Italic\"" -- shunt/state.yue:220
              end -- shunt/state.yue:219
              _with_1[#_with_1 + 1] = "  " .. tostring(state_name) .. "[" .. tostring(fontname_override) .. "]" -- shunt/state.yue:221
              local num_transitions = #state._transition_list -- shunt/state.yue:223
              for i = 1, num_transitions do -- shunt/state.yue:224
                local other_state = state._transition_list[i] -- shunt/state.yue:225
                _with_1[#_with_1 + 1] = "  " .. tostring(state_name) .. " -> " .. tostring(other_state) .. "[weight=" .. tostring(1 + num_transitions - i) .. "]" -- shunt/state.yue:226
              end -- shunt/state.yue:226
            end -- shunt/state.yue:226
            _with_1[#_with_1 + 1] = '}' -- shunt/state.yue:228
            lines = _with_1 -- shunt/state.yue:189
          end -- shunt/state.yue:189
          return table.concat(lines, '\n') -- shunt/state.yue:229
        end) -- shunt/state.yue:188
        _with_0.to_mermaid = F('() => string', function(self) -- shunt/state.yue:231
          local lines -- shunt/state.yue:232
          do -- shunt/state.yue:232
            local _with_1 = { } -- shunt/state.yue:232
            _with_1[#_with_1 + 1] = 'stateDiagram' -- shunt/state.yue:233
            _with_1[#_with_1 + 1] = "  [*] --> " .. tostring(initial_state_name) -- shunt/state.yue:234
            local state_list -- shunt/state.yue:235
            do -- shunt/state.yue:235
              local _accum_0 = { } -- shunt/state.yue:235
              local _len_0 = 1 -- shunt/state.yue:235
              for state_name, state in pairs(states) do -- shunt/state.yue:235
                _accum_0[_len_0] = { -- shunt/state.yue:235
                  state_name = state_name, -- shunt/state.yue:235
                  state = state -- shunt/state.yue:235
                } -- shunt/state.yue:235
                _len_0 = _len_0 + 1 -- shunt/state.yue:235
              end -- shunt/state.yue:235
              state_list = _accum_0 -- shunt/state.yue:235
            end -- shunt/state.yue:235
            table.sort(state_list, function(a, b) -- shunt/state.yue:236
              return a.state_name < b.state_name -- shunt/state.yue:236
            end) -- shunt/state.yue:236
            for _index_0 = 1, #state_list do -- shunt/state.yue:237
              local _des_0 = state_list[_index_0] -- shunt/state.yue:237
              local state_name, state = _des_0.state_name, _des_0.state -- shunt/state.yue:237
              _with_1[#_with_1 + 1] = "  " .. tostring(state_name) -- shunt/state.yue:238
              if state._is_end then -- shunt/state.yue:239
                _with_1[#_with_1 + 1] = "  " .. tostring(state_name) .. " --> [*]" -- shunt/state.yue:240
              end -- shunt/state.yue:239
              local neighbours -- shunt/state.yue:242
              do -- shunt/state.yue:242
                local _accum_0 = { } -- shunt/state.yue:242
                local _len_0 = 1 -- shunt/state.yue:242
                for other_state in pairs(state._transitions) do -- shunt/state.yue:242
                  _accum_0[_len_0] = other_state -- shunt/state.yue:242
                  _len_0 = _len_0 + 1 -- shunt/state.yue:242
                end -- shunt/state.yue:242
                neighbours = _accum_0 -- shunt/state.yue:242
              end -- shunt/state.yue:242
              table.sort(neighbours) -- shunt/state.yue:243
              for _index_1 = 1, #neighbours do -- shunt/state.yue:244
                local neighbour = neighbours[_index_1] -- shunt/state.yue:244
                _with_1[#_with_1 + 1] = "  " .. tostring(state_name) .. " --> " .. tostring(neighbour) -- shunt/state.yue:245
              end -- shunt/state.yue:245
            end -- shunt/state.yue:245
            lines = _with_1 -- shunt/state.yue:232
          end -- shunt/state.yue:232
          return table.concat(lines, '\n') -- shunt/state.yue:247
        end) -- shunt/state.yue:231
        index = _with_0 -- shunt/state.yue:129
      end -- shunt/state.yue:129
      return T('StateMachine', setmetatable({ }, { -- shunt/state.yue:250
        __index = index, -- shunt/state.yue:250
        __newindex = function(self, key, v) -- shunt/state.yue:251
          return error("cannot add field '" .. tostring(key) .. "' to state machine") -- shunt/state.yue:252
        end -- shunt/state.yue:251
      })) -- shunt/state.yue:252
    end) -- shunt/state.yue:11
  } -- shunt/state.yue:11
  if _base_0.__index == nil then -- shunt/state.yue:11
    _base_0.__index = _base_0 -- shunt/state.yue:11
  end -- shunt/state.yue:252
  _class_0 = setmetatable({ -- shunt/state.yue:11
    __init = F('(string) => <>', function(self, _name) -- shunt/state.yue:12
      self._name = _name -- shunt/state.yue:12
      if not valid_ident(self._name) then -- shunt/state.yue:13
        error("cannot build state machine: name '" .. tostring(self._name) .. "' not a valid identifier") -- shunt/state.yue:14
      end -- shunt/state.yue:13
      self._states = T('{string -> table}', { }) -- shunt/state.yue:15
      self._initial_state_name = T('?string', nil) -- shunt/state.yue:16
      self._reporter = T('?(State, State) => <>', nil) -- shunt/state.yue:17
      self._endless = T('boolean', false) -- shunt/state.yue:18
      self._check_state_invariant = T('?({name: string}) -> <>', nil) -- shunt/state.yue:19
      self._check_transition_invariant = T('?({name: string}, {name: string}) -> <>', nil) -- shunt/state.yue:20
    end), -- shunt/state.yue:11
    __base = _base_0, -- shunt/state.yue:11
    __name = "StateMachineBuilder" -- shunt/state.yue:11
  }, { -- shunt/state.yue:11
    __index = _base_0, -- shunt/state.yue:11
    __call = function(cls, ...) -- shunt/state.yue:11
      local _self_0 = setmetatable({ }, _base_0) -- shunt/state.yue:11
      cls.__init(_self_0, ...) -- shunt/state.yue:11
      return _self_0 -- shunt/state.yue:11
    end -- shunt/state.yue:11
  }) -- shunt/state.yue:11
  _base_0.__class = _class_0 -- shunt/state.yue:11
  StateMachineBuilder = _class_0 -- shunt/state.yue:11
end -- shunt/state.yue:252
_module_0["StateMachineBuilder"] = StateMachineBuilder -- shunt/state.yue:11
make_state = F('(string, string, any) -> {}', function(name, data_type, data) -- shunt/state.yue:254
  T(data_type, data) -- shunt/state.yue:255
  local _with_0 = setmetatable({ -- shunt/state.yue:256
    name = name, -- shunt/state.yue:256
  }, { }) -- shunt/state.yue:256
  if 'table' == type(data) then -- shunt/state.yue:257
    getmetatable(_with_0).__index = data -- shunt/state.yue:258
  else -- shunt/state.yue:260
    getmetatable(_with_0).__index = { -- shunt/state.yue:260
      value = data -- shunt/state.yue:260
    } -- shunt/state.yue:260
  end -- shunt/state.yue:257
  getmetatable(_with_0).__newindex = function(self, key) -- shunt/state.yue:261
    local key_repr -- shunt/state.yue:262
    if 'string' == type(key) then -- shunt/state.yue:263
      key_repr = "." .. tostring(key) -- shunt/state.yue:264
    else -- shunt/state.yue:266
      key_repr = "[" .. tostring(key) .. "]" -- shunt/state.yue:266
    end -- shunt/state.yue:263
    return error("cannot directly assign state fields") -- shunt/state.yue:267
  end -- shunt/state.yue:261
  return _with_0 -- shunt/state.yue:256
end) -- shunt/state.yue:254
declare_type('State', [[{
  _is_end: boolean,
  _transitions: {string},
  _data_type: ?string,
}]]) -- shunt/state.yue:269
local State -- shunt/state.yue:274
do -- shunt/state.yue:274
  local _class_0 -- shunt/state.yue:274
  local _base_0 = { -- shunt/state.yue:274
    add_transition_to = F('(string) => Self', function(self, name) -- shunt/state.yue:285
      if not valid_ident(name) then -- shunt/state.yue:286
        error("cannot build state machine: state name '" .. tostring(name) .. "' not a valid identifier") -- shunt/state.yue:287
      end -- shunt/state.yue:286
      if (self._transitions[name] ~= nil) then -- shunt/state.yue:288
        error("cannot build state machine: transition " .. tostring(self._name) .. "->" .. tostring(name) .. " redefined") -- shunt/state.yue:289
      end -- shunt/state.yue:288
      self._transitions[name] = true -- shunt/state.yue:290
      do -- shunt/state.yue:291
        local _obj_0 = self._transition_list -- shunt/state.yue:291
        _obj_0[#_obj_0 + 1] = name -- shunt/state.yue:291
      end -- shunt/state.yue:291
      return self -- shunt/state.yue:292
    end), -- shunt/state.yue:294
    declare_end_state = F('() => Self', function(self) -- shunt/state.yue:294
      self._is_end = true -- shunt/state.yue:295
      return self -- shunt/state.yue:296
    end), -- shunt/state.yue:298
    set_data_type = F('(string) => Self', function(self, data_type) -- shunt/state.yue:298
      if self._data_type_set then -- shunt/state.yue:299
        error("cannot build state machine: data type for state " .. tostring(self._name) .. " already set") -- shunt/state.yue:300
      end -- shunt/state.yue:299
      self._data_type_set = true -- shunt/state.yue:301
      self._data_type = data_type -- shunt/state.yue:302
      return self -- shunt/state.yue:303
    end) -- shunt/state.yue:274
  } -- shunt/state.yue:274
  if _base_0.__index == nil then -- shunt/state.yue:274
    _base_0.__index = _base_0 -- shunt/state.yue:274
  end -- shunt/state.yue:303
  _class_0 = setmetatable({ -- shunt/state.yue:274
    __init = F('(string) => <>', function(self, _name) -- shunt/state.yue:275
      self._name = _name -- shunt/state.yue:275
      if not valid_ident(self._name) then -- shunt/state.yue:276
        error("cannot build state machine: state name '" .. tostring(self._name) .. "' not a valid identifier") -- shunt/state.yue:277
      end -- shunt/state.yue:276
      self._transitions = T('{string}', { }) -- shunt/state.yue:279
      self._transition_list = T('[string]', { }) -- shunt/state.yue:280
      self._data_type = T('string', 'nil') -- shunt/state.yue:281
      self._data_type_set = T('boolean', false) -- shunt/state.yue:282
      self._is_end = T('boolean', false) -- shunt/state.yue:283
    end), -- shunt/state.yue:274
    __base = _base_0, -- shunt/state.yue:274
    __name = "State" -- shunt/state.yue:274
  }, { -- shunt/state.yue:274
    __index = _base_0, -- shunt/state.yue:274
    __call = function(cls, ...) -- shunt/state.yue:274
      local _self_0 = setmetatable({ }, _base_0) -- shunt/state.yue:274
      cls.__init(_self_0, ...) -- shunt/state.yue:274
      return _self_0 -- shunt/state.yue:274
    end -- shunt/state.yue:274
  }) -- shunt/state.yue:274
  _base_0.__class = _class_0 -- shunt/state.yue:274
  State = _class_0 -- shunt/state.yue:274
end -- shunt/state.yue:303
_module_0["State"] = State -- shunt/state.yue:274
declare_type('StateMachine', [[{
  state: {name: string},
  goto: (string, ?{string -> any}) => <>,
}]]) -- shunt/state.yue:305
valid_ident = F('(string) -> boolean', function(name) -- shunt/state.yue:310
  return ((name:match('^[a-z][a-z0-9_]+[a-z0-9]$')) ~= nil) -- shunt/state.yue:311
end) -- shunt/state.yue:310
declare_type('StateResponses', '{string->()-><>}') -- shunt/state.yue:313
local StateResponsesBuilder -- shunt/state.yue:314
do -- shunt/state.yue:314
  local _class_0 -- shunt/state.yue:314
  local _base_0 = { -- shunt/state.yue:314
    add = F('(string, () -> <>) => Self', function(self, state, response) -- shunt/state.yue:318
      if not ((rawget(getmetatable(self.sm.states).__index, state)) ~= nil) then -- shunt/state.yue:319
        error("cannot add response to " .. tostring(self.sm.name) .. ": no such state '" .. tostring(state) .. "'") -- shunt/state.yue:320
      end -- shunt/state.yue:319
      if (self.responses[state] ~= nil) then -- shunt/state.yue:321
        error("cannot add response to " .. tostring(self.sm.name) .. ": response for '" .. tostring(state) .. "' already defined") -- shunt/state.yue:322
      end -- shunt/state.yue:321
      self.responses[state] = response -- shunt/state.yue:323
      return self -- shunt/state.yue:324
    end), -- shunt/state.yue:326
    build = F('() => StateResponses', function(self) -- shunt/state.yue:326
      local uncovered_states -- shunt/state.yue:327
      do -- shunt/state.yue:327
        local _with_0 = { } -- shunt/state.yue:327
        for state_name in pairs(getmetatable(self.sm.states).__index) do -- shunt/state.yue:328
          if not (self.responses[state_name] ~= nil) then -- shunt/state.yue:329
            _with_0[#_with_0 + 1] = state_name -- shunt/state.yue:330
          end -- shunt/state.yue:329
        end -- shunt/state.yue:330
        uncovered_states = _with_0 -- shunt/state.yue:327
      end -- shunt/state.yue:327
      if #uncovered_states > 0 then -- shunt/state.yue:331
        table.sort(uncovered_states) -- shunt/state.yue:332
        error("cannot build state responses: the following states have no response: " .. tostring(table.concat(uncovered_states, ', '))) -- shunt/state.yue:333
      end -- shunt/state.yue:331
      return self.responses -- shunt/state.yue:335
    end) -- shunt/state.yue:314
  } -- shunt/state.yue:314
  if _base_0.__index == nil then -- shunt/state.yue:314
    _base_0.__index = _base_0 -- shunt/state.yue:314
  end -- shunt/state.yue:335
  _class_0 = setmetatable({ -- shunt/state.yue:314
    __init = F('(StateMachine) => <>', function(self, sm) -- shunt/state.yue:315
      self.sm = sm -- shunt/state.yue:315
      self.responses = T('{string->()-><>}', { }) -- shunt/state.yue:316
    end), -- shunt/state.yue:314
    __base = _base_0, -- shunt/state.yue:314
    __name = "StateResponsesBuilder" -- shunt/state.yue:314
  }, { -- shunt/state.yue:314
    __index = _base_0, -- shunt/state.yue:314
    __call = function(cls, ...) -- shunt/state.yue:314
      local _self_0 = setmetatable({ }, _base_0) -- shunt/state.yue:314
      cls.__init(_self_0, ...) -- shunt/state.yue:314
      return _self_0 -- shunt/state.yue:314
    end -- shunt/state.yue:314
  }) -- shunt/state.yue:314
  _base_0.__class = _class_0 -- shunt/state.yue:314
  StateResponsesBuilder = _class_0 -- shunt/state.yue:314
end -- shunt/state.yue:335
_module_0["StateResponsesBuilder"] = StateResponsesBuilder -- shunt/state.yue:314
shallow_log_reporter = function(self, prev_state, state) -- shunt/state.yue:337
  return log(function() -- shunt/state.yue:338
    local fragments -- shunt/state.yue:339
    do -- shunt/state.yue:339
      local _with_0 = { } -- shunt/state.yue:339
      _with_0[#_with_0 + 1] = '$ ' -- shunt/state.yue:340
      _with_0[#_with_0 + 1] = self.name -- shunt/state.yue:341
      _with_0[#_with_0 + 1] = ':' -- shunt/state.yue:342
      _with_0[#_with_0 + 1] = prev_state.name -- shunt/state.yue:343
      _with_0[#_with_0 + 1] = '->' -- shunt/state.yue:344
      _with_0[#_with_0 + 1] = state.name -- shunt/state.yue:345
      local level_1_fields -- shunt/state.yue:346
      do -- shunt/state.yue:346
        local _accum_0 = { } -- shunt/state.yue:346
        local _len_0 = 1 -- shunt/state.yue:346
        for key, value in pairs(getmetatable(state).__index) do -- shunt/state.yue:346
          _accum_0[_len_0] = { -- shunt/state.yue:346
            key = key, -- shunt/state.yue:346
            value = value -- shunt/state.yue:346
          } -- shunt/state.yue:346
          _len_0 = _len_0 + 1 -- shunt/state.yue:346
        end -- shunt/state.yue:346
        level_1_fields = _accum_0 -- shunt/state.yue:346
      end -- shunt/state.yue:346
      table.sort(level_1_fields, function(a, b) -- shunt/state.yue:347
        return a.key < b.key -- shunt/state.yue:347
      end) -- shunt/state.yue:347
      for _index_0 = 1, #level_1_fields do -- shunt/state.yue:348
        local _des_0 = level_1_fields[_index_0] -- shunt/state.yue:348
        local key, value = _des_0.key, _des_0.value -- shunt/state.yue:348
        _with_0[#_with_0 + 1] = '\n    ' -- shunt/state.yue:349
        _with_0[#_with_0 + 1] = key -- shunt/state.yue:350
        _with_0[#_with_0 + 1] = ': ' -- shunt/state.yue:351
        local value_type = type(value) -- shunt/state.yue:352
        if 'function' == value_type or 'thread' == value_type or 'table' == value_type then -- shunt/state.yue:354
          _with_0[#_with_0 + 1] = '(' -- shunt/state.yue:355
          _with_0[#_with_0 + 1] = tostring(value) -- shunt/state.yue:356
          _with_0[#_with_0 + 1] = ')' -- shunt/state.yue:357
        elseif 'string' == value_type then -- shunt/state.yue:358
          _with_0[#_with_0 + 1] = '`' -- shunt/state.yue:359
          _with_0[#_with_0 + 1] = tostring(value) -- shunt/state.yue:360
          _with_0[#_with_0 + 1] = '\'' -- shunt/state.yue:361
        else -- shunt/state.yue:363
          _with_0[#_with_0 + 1] = tostring(value) -- shunt/state.yue:363
        end -- shunt/state.yue:363
        if value_type == 'table' then -- shunt/state.yue:364
          local level_2_fields -- shunt/state.yue:365
          do -- shunt/state.yue:365
            local _accum_0 = { } -- shunt/state.yue:365
            local _len_0 = 1 -- shunt/state.yue:365
            for key2, value2 in pairs(value) do -- shunt/state.yue:365
              _accum_0[_len_0] = { -- shunt/state.yue:365
                key2 = key2, -- shunt/state.yue:365
                value2 = value2 -- shunt/state.yue:365
              } -- shunt/state.yue:365
              _len_0 = _len_0 + 1 -- shunt/state.yue:365
            end -- shunt/state.yue:365
            level_2_fields = _accum_0 -- shunt/state.yue:365
          end -- shunt/state.yue:365
          table.sort(level_2_fields, function(a, b) -- shunt/state.yue:366
            return a.key2 < b.key2 -- shunt/state.yue:366
          end) -- shunt/state.yue:366
          for _index_1 = 1, #level_2_fields do -- shunt/state.yue:367
            local _des_1 = level_2_fields[_index_1] -- shunt/state.yue:367
            local key2, value2 = _des_1.key2, _des_1.value2 -- shunt/state.yue:367
            _with_0[#_with_0 + 1] = '\n      ' -- shunt/state.yue:368
            _with_0[#_with_0 + 1] = key2 -- shunt/state.yue:369
            _with_0[#_with_0 + 1] = ': ' -- shunt/state.yue:370
            do -- shunt/state.yue:371
              local _exp_0 = type(value2) -- shunt/state.yue:371
              if 'function' == _exp_0 or 'thread' == _exp_0 or 'table' == _exp_0 then -- shunt/state.yue:372
                _with_0[#_with_0 + 1] = '(' -- shunt/state.yue:373
                _with_0[#_with_0 + 1] = tostring(value2) -- shunt/state.yue:374
                _with_0[#_with_0 + 1] = ')' -- shunt/state.yue:375
              elseif 'string' == _exp_0 then -- shunt/state.yue:376
                _with_0[#_with_0 + 1] = '`' -- shunt/state.yue:377
                _with_0[#_with_0 + 1] = tostring(value2) -- shunt/state.yue:378
                _with_0[#_with_0 + 1] = '\'' -- shunt/state.yue:379
              else -- shunt/state.yue:381
                _with_0[#_with_0 + 1] = tostring(value2) -- shunt/state.yue:381
              end -- shunt/state.yue:381
            end -- shunt/state.yue:381
          end -- shunt/state.yue:381
        end -- shunt/state.yue:364
      end -- shunt/state.yue:381
      fragments = _with_0 -- shunt/state.yue:339
    end -- shunt/state.yue:339
    return table.concat(fragments) -- shunt/state.yue:382
  end) -- shunt/state.yue:382
end -- shunt/state.yue:337
_module_0["shallow_log_reporter"] = shallow_log_reporter -- shunt/state.yue:382
spec(function() -- shunt/state.yue:384
  local describe, it, matchers -- shunt/state.yue:0
  do -- shunt/state.yue:0
    local _obj_0 = require('shunt.spec') -- shunt/state.yue:0
    describe, it, matchers = _obj_0.describe, _obj_0.it, _obj_0.matchers -- shunt/state.yue:0
  end -- shunt/state.yue:0
  local anything, deep_eq, eq, errors, has_fields, len, matches, no_errors = matchers.anything, matchers.deep_eq, matchers.eq, matchers.errors, matchers.has_fields, matchers.len, matchers.matches, matchers.no_errors -- shunt/state.yue:389
  describe('StateMachineBuilder', function() -- shunt/state.yue:391
    it('exposes its name', function() -- shunt/state.yue:392
      local EXPECTED = 'some_name' -- shunt/state.yue:393
      local sm = (StateMachineBuilder(EXPECTED)):set_initial_state('q_0'):add((State('q_0')):declare_end_state()):build(); -- shunt/state.yue:394
      return require('shunt.spec')._expect_that([=[sm.name]=], sm.name, (eq(EXPECTED)), tostring("shunt/state.yue") .. ":" .. tostring(399)) -- shunt/state.yue:399
    end) -- shunt/state.yue:392
    it('rejects invalid state names', function() -- shunt/state.yue:401
      return require('shunt.spec')._expect_that([=[(-> StateMachineBuilder 'invalid-ident')]=], (function() -- shunt/state.yue:402
        return StateMachineBuilder('invalid-ident') -- shunt/state.yue:402
      end), (errors(matches("cannot build state machine: name 'invalid%-ident' not a valid identifier"))), tostring("shunt/state.yue") .. ":" .. tostring(402)) -- shunt/state.yue:402
    end) -- shunt/state.yue:401
    it('requires initial state', function() -- shunt/state.yue:404
      return require('shunt.spec')._expect_that([=[(-> (StateMachineBuilder 'test_sm')\build!)]=], (function() -- shunt/state.yue:405
        return (StateMachineBuilder('test_sm')):build() -- shunt/state.yue:405
      end), (errors(matches("cannot build state machine: initial state undefined"))), tostring("shunt/state.yue") .. ":" .. tostring(405)) -- shunt/state.yue:405
    end) -- shunt/state.yue:404
    it('rejects invalid initial state', function() -- shunt/state.yue:407
      return require('shunt.spec')._expect_that([=[(-> (StateMachineBuilder 'test_sm')\set_initial_state('phantom')\build!)]=], (function() -- shunt/state.yue:408
        return (StateMachineBuilder('test_sm')):set_initial_state('phantom'):build() -- shunt/state.yue:408
      end), (errors(matches("cannot build state machine: initial state 'phantom' undefined"))), tostring("shunt/state.yue") .. ":" .. tostring(408)) -- shunt/state.yue:408
    end) -- shunt/state.yue:407
    it('rejects duplicate state names', function() -- shunt/state.yue:410
      return require('shunt.spec')._expect_that([=[(-> (StateMachineBuilder 'test_sm')
        \set_initial_state 'waiting'
        \add State 'waiting'
        \add State 'waiting'
        \build!)]=], (function() -- shunt/state.yue:411
        return (StateMachineBuilder('test_sm')):set_initial_state('waiting'):add(State('waiting')):add(State('waiting')):build() -- shunt/state.yue:411
      end), (errors(matches("cannot build state machine: state 'waiting' redefined"))), tostring("shunt/state.yue") .. ":" .. tostring(411)) -- shunt/state.yue:415
    end) -- shunt/state.yue:410
    it('rejects repeated \\set_data_type calls', function() -- shunt/state.yue:417
      return require('shunt.spec')._expect_that([=[(-> (StateMachineBuilder 'test_sm')
        \set_initial_state 'waiting'
        \add (State 'waiting')
          \set_data_type 'string'
          \set_data_type 'number'
        \build!)]=], (function() -- shunt/state.yue:418
        return (StateMachineBuilder('test_sm')):set_initial_state('waiting'):add((State('waiting')):set_data_type('string'):set_data_type('number')):build() -- shunt/state.yue:418
      end), (errors(matches("cannot build state machine: data type for state waiting already set"))), tostring("shunt/state.yue") .. ":" .. tostring(418)) -- shunt/state.yue:423
    end) -- shunt/state.yue:417
    it('rejects invalid state names', function() -- shunt/state.yue:425
      return require('shunt.spec')._expect_that([=[(-> (StateMachineBuilder 'test_sm')
        \set_initial_state '-invalid'
        \add State '-invalid'
        \build!)]=], (function() -- shunt/state.yue:426
        return (StateMachineBuilder('test_sm')):set_initial_state('-invalid'):add(State('-invalid')):build() -- shunt/state.yue:426
      end), (errors(matches("cannot build state machine: state name '%-invalid' not a valid identifier"))), tostring("shunt/state.yue") .. ":" .. tostring(426)) -- shunt/state.yue:429
    end) -- shunt/state.yue:425
    it('formats itself as graphviz', function() -- shunt/state.yue:431
      local graphviz_repr = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):declare_end_state():add_transition_to('state_2')):add((State('state_2')):add_transition_to('state_1'):set_data_type([[{
            hello: string,
            world: number,
          }]])):build():to_graphviz() -- shunt/state.yue:432
      local expected_lines = { -- shunt/state.yue:446
        'digraph {', -- shunt/state.yue:446
        '  bgcolor = black', -- shunt/state.yue:447
        '  color = white', -- shunt/state.yue:448
        '  label = "test_sm"', -- shunt/state.yue:449
        '  graph [', -- shunt/state.yue:450
        '    fontname = "NewCenturySchlbk-Roman"', -- shunt/state.yue:451
        '  ]', -- shunt/state.yue:452
        '  node [', -- shunt/state.yue:453
        '    color = white', -- shunt/state.yue:454
        '    fontcolor = white', -- shunt/state.yue:455
        '    fillcolor = white', -- shunt/state.yue:456
        '    shape = plaintext', -- shunt/state.yue:457
        '    fontname = "NewCenturySchlbk-Roman"', -- shunt/state.yue:458
        '  ]', -- shunt/state.yue:459
        '  edge [', -- shunt/state.yue:460
        '    color = white', -- shunt/state.yue:461
        '    fontcolor = white', -- shunt/state.yue:462
        '    fontname = "NewCenturySchlbk-Roman"', -- shunt/state.yue:463
        '  ]', -- shunt/state.yue:464
        '  levels=1', -- shunt/state.yue:465
        '  __init[shape=point]', -- shunt/state.yue:466
        '  __init -> state_1', -- shunt/state.yue:467
        '', -- shunt/state.yue:468
        '  state_1[fontname="NewCenturySchlbk-Italic"]', -- shunt/state.yue:469
        '  state_1 -> state_2[weight=1]', -- shunt/state.yue:470
        '', -- shunt/state.yue:471
        '  state_2[]', -- shunt/state.yue:472
        '  state_2 -> state_1[weight=1]', -- shunt/state.yue:473
        '}' -- shunt/state.yue:474
      } -- shunt/state.yue:445
      local expected_repr = table.concat(expected_lines, '\n'); -- shunt/state.yue:475
      return require('shunt.spec')._expect_that([=[graphviz_repr]=], graphviz_repr, (eq(expected_repr)), tostring("shunt/state.yue") .. ":" .. tostring(476)) -- shunt/state.yue:476
    end) -- shunt/state.yue:431
    it('formats itself as mermaid', function() -- shunt/state.yue:478
      local mermaid_repr = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):declare_end_state():add_transition_to('state_2')):add((State('state_2')):add_transition_to('state_1'):set_data_type([[{
            hello: string,
            world: number,
          }]])):build():to_mermaid() -- shunt/state.yue:479
      local expected_lines = { -- shunt/state.yue:493
        'stateDiagram', -- shunt/state.yue:493
        '  [*] --> state_1', -- shunt/state.yue:494
        '  state_1', -- shunt/state.yue:495
        '  state_1 --> [*]', -- shunt/state.yue:496
        '  state_1 --> state_2', -- shunt/state.yue:497
        '  state_2', -- shunt/state.yue:498
        '  state_2 --> state_1' -- shunt/state.yue:499
      } -- shunt/state.yue:492
      local expected_repr = table.concat(expected_lines, '\n'); -- shunt/state.yue:500
      return require('shunt.spec')._expect_that([=[mermaid_repr]=], mermaid_repr, (eq(expected_repr)), tostring("shunt/state.yue") .. ":" .. tostring(501)) -- shunt/state.yue:501
    end) -- shunt/state.yue:478
    it('accepts endless state machines', function() -- shunt/state.yue:503
      local builder = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):declare_endless():add((State('state_1')):add_transition_to('state_1')); -- shunt/state.yue:504
      return require('shunt.spec')._expect_that([=[builder\build]=], (function() -- shunt/state.yue:509
        local _base_0 = builder -- shunt/state.yue:509
        local _fn_0 = _base_0.build -- shunt/state.yue:509
        return _fn_0 and function(...) -- shunt/state.yue:509
          return _fn_0(_base_0, ...) -- shunt/state.yue:509
        end -- shunt/state.yue:509
      end)(), (no_errors()), tostring("shunt/state.yue") .. ":" .. tostring(509)) -- shunt/state.yue:509
    end) -- shunt/state.yue:503
    return it('rejects invalid transition graphs', function() -- shunt/state.yue:511
      local builder = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add(State('state_1')); -- shunt/state.yue:512
      require('shunt.spec')._expect_that([=[builder\build]=], (function() -- shunt/state.yue:515
        local _base_0 = builder -- shunt/state.yue:515
        local _fn_0 = _base_0.build -- shunt/state.yue:515
        return _fn_0 and function(...) -- shunt/state.yue:515
          return _fn_0(_base_0, ...) -- shunt/state.yue:515
        end -- shunt/state.yue:515
      end)(), (errors(matches('no end states declared'))), tostring("shunt/state.yue") .. ":" .. tostring(515)) -- shunt/state.yue:515
      builder = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):declare_end_state():add_transition_to('state_2')):add((State('state_2')):add_transition_to('state_3')):add((State('state_3')):add_transition_to('state_1')); -- shunt/state.yue:517
      require('shunt.spec')._expect_that([=[builder\build]=], (function() -- shunt/state.yue:526
        local _base_0 = builder -- shunt/state.yue:526
        local _fn_0 = _base_0.build -- shunt/state.yue:526
        return _fn_0 and function(...) -- shunt/state.yue:526
          return _fn_0(_base_0, ...) -- shunt/state.yue:526
        end -- shunt/state.yue:526
      end)(), (no_errors()), tostring("shunt/state.yue") .. ":" .. tostring(526)) -- shunt/state.yue:526
      builder = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):declare_end_state()):add((State('unreachable_1')):add_transition_to('unreachable_2')):add((State('unreachable_2'))); -- shunt/state.yue:528
      require('shunt.spec')._expect_that([=[builder\build]=], (function() -- shunt/state.yue:535
        local _base_0 = builder -- shunt/state.yue:535
        local _fn_0 = _base_0.build -- shunt/state.yue:535
        return _fn_0 and function(...) -- shunt/state.yue:535
          return _fn_0(_base_0, ...) -- shunt/state.yue:535
        end -- shunt/state.yue:535
      end)(), (errors(matches('the following states are not reachable from the start state: unreachable_1, unreachable_2'))), tostring("shunt/state.yue") .. ":" .. tostring(535)) -- shunt/state.yue:535
      builder = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):add_transition_to('state_2')):add((State('state_2')):declare_end_state():add_transition_to('interminable_1')):add((State('interminable_1')):add_transition_to('interminable_2')):add((State('interminable_2'))); -- shunt/state.yue:537
      require('shunt.spec')._expect_that([=[builder\build]=], (function() -- shunt/state.yue:547
        local _base_0 = builder -- shunt/state.yue:547
        local _fn_0 = _base_0.build -- shunt/state.yue:547
        return _fn_0 and function(...) -- shunt/state.yue:547
          return _fn_0(_base_0, ...) -- shunt/state.yue:547
        end -- shunt/state.yue:547
      end)(), (errors(matches('the following states are not reachable from any end state: interminable_1, interminable_2'))), tostring("shunt/state.yue") .. ":" .. tostring(547)) -- shunt/state.yue:547
      builder = (StateMachineBuilder('test_sm')):set_initial_state('dead_end'):declare_endless():add(State('dead_end')); -- shunt/state.yue:549
      require('shunt.spec')._expect_that([=[builder\build]=], (function() -- shunt/state.yue:553
        local _base_0 = builder -- shunt/state.yue:553
        local _fn_0 = _base_0.build -- shunt/state.yue:553
        return _fn_0 and function(...) -- shunt/state.yue:553
          return _fn_0(_base_0, ...) -- shunt/state.yue:553
        end -- shunt/state.yue:553
      end)(), (errors(matches('the following states are dead ends: dead_end'))), tostring("shunt/state.yue") .. ":" .. tostring(553)) -- shunt/state.yue:553
      builder = (StateMachineBuilder('test_sm')):set_initial_state('hub'):declare_endless():add((State('hub')):add_transition_to('dead_end_2'):add_transition_to('dead_end_1')):add(State('dead_end_2')):add(State('dead_end_1')); -- shunt/state.yue:554
      return require('shunt.spec')._expect_that([=[builder\build]=], (function() -- shunt/state.yue:562
        local _base_0 = builder -- shunt/state.yue:562
        local _fn_0 = _base_0.build -- shunt/state.yue:562
        return _fn_0 and function(...) -- shunt/state.yue:562
          return _fn_0(_base_0, ...) -- shunt/state.yue:562
        end -- shunt/state.yue:562
      end)(), (errors(matches('the following states are dead ends: dead_end_1, dead_end_2'))), tostring("shunt/state.yue") .. ":" .. tostring(562)) -- shunt/state.yue:562
    end) -- shunt/state.yue:562
  end) -- shunt/state.yue:391
  describe('valid_ident', function() -- shunt/state.yue:564
    local valid_idents = { -- shunt/state.yue:566
      'hello', -- shunt/state.yue:566
      'world_123' -- shunt/state.yue:567
    } -- shunt/state.yue:565
    for _index_0 = 1, #valid_idents do -- shunt/state.yue:568
      local ident = valid_idents[_index_0] -- shunt/state.yue:568
      it("accepts '" .. tostring(ident) .. "'", function() -- shunt/state.yue:569
        return require('shunt.spec')._expect_that([=[(valid_ident ident)]=], (valid_ident(ident)), (eq(true)), tostring("shunt/state.yue") .. ":" .. tostring(570)) -- shunt/state.yue:570
      end) -- shunt/state.yue:569
    end -- shunt/state.yue:570
    local invalid_idents = { -- shunt/state.yue:573
      '', -- shunt/state.yue:573
      '1234', -- shunt/state.yue:574
      '-qwer', -- shunt/state.yue:575
      '.asdf', -- shunt/state.yue:576
      'a-b' -- shunt/state.yue:577
    } -- shunt/state.yue:572
    for _index_0 = 1, #invalid_idents do -- shunt/state.yue:578
      local ident = invalid_idents[_index_0] -- shunt/state.yue:578
      it("rejects '" .. tostring(ident) .. "'", function() -- shunt/state.yue:579
        return require('shunt.spec')._expect_that([=[(valid_ident ident)]=], (valid_ident(ident)), (eq(false)), tostring("shunt/state.yue") .. ":" .. tostring(580)) -- shunt/state.yue:580
      end) -- shunt/state.yue:579
    end -- shunt/state.yue:580
  end) -- shunt/state.yue:564
  local make_test_sm -- shunt/state.yue:582
  make_test_sm = function() -- shunt/state.yue:582
    return (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):declare_end_state():add_transition_to('state_2'):add_transition_to('state_3')):add((State('state_2')):declare_end_state():set_data_type([[{
          hello: string,
          world: number,
          optional: ?string,
        }]]):add_transition_to('state_1')):add((State('state_3')):declare_end_state():set_data_type('number')):build() -- shunt/state.yue:600
  end -- shunt/state.yue:582
  describe('StateMachine', function() -- shunt/state.yue:602
    it('rejects new fields', function() -- shunt/state.yue:603
      local test_sm = make_test_sm(); -- shunt/state.yue:604
      return require('shunt.spec')._expect_that([==[(-> test_sm.foo = 'bar')]==], (function() -- shunt/state.yue:605
        test_sm.foo = 'bar' -- shunt/state.yue:605
      end), (errors(matches([[cannot add field 'foo' to state machine]]))), tostring("shunt/state.yue") .. ":" .. tostring(605)) -- shunt/state.yue:605
    end) -- shunt/state.yue:603
    describe('.state', function() -- shunt/state.yue:607
      it('exposes table data at its toplevel', function() -- shunt/state.yue:608
        local test_sm = make_test_sm() -- shunt/state.yue:609
        test_sm["goto"](test_sm, 'state_2', { -- shunt/state.yue:611
          hello = 'asdf', -- shunt/state.yue:611
          world = 4321 -- shunt/state.yue:612
        }); -- shunt/state.yue:610
        require('shunt.spec')._expect_that([=[test_sm.state.hello]=], test_sm.state.hello, (eq('asdf')), tostring("shunt/state.yue") .. ":" .. tostring(613)); -- shunt/state.yue:613
        return require('shunt.spec')._expect_that([=[test_sm.state.world]=], test_sm.state.world, (eq(4321)), tostring("shunt/state.yue") .. ":" .. tostring(614)) -- shunt/state.yue:614
      end) -- shunt/state.yue:608
      it('exposes non-table data in the .data field', function() -- shunt/state.yue:616
        local test_sm = make_test_sm() -- shunt/state.yue:617
        test_sm["goto"](test_sm, 'state_3', 123); -- shunt/state.yue:618
        return require('shunt.spec')._expect_that([=[test_sm.state.value]=], test_sm.state.value, (eq(123)), tostring("shunt/state.yue") .. ":" .. tostring(619)) -- shunt/state.yue:619
      end) -- shunt/state.yue:616
      return it('rejects assignment', function() -- shunt/state.yue:621
        local test_sm = make_test_sm() -- shunt/state.yue:622
        test_sm["goto"](test_sm, 'state_2', { -- shunt/state.yue:624
          hello = 'asdf', -- shunt/state.yue:624
          world = 4321 -- shunt/state.yue:625
        }); -- shunt/state.yue:623
        require('shunt.spec')._expect_that([==[(-> test_sm.state.absent = 'foo')]==], (function() -- shunt/state.yue:626
          test_sm.state.absent = 'foo' -- shunt/state.yue:626
        end), (errors(matches('cannot directly assign state fields'))), tostring("shunt/state.yue") .. ":" .. tostring(626)); -- shunt/state.yue:626
        require('shunt.spec')._expect_that([==[(-> test_sm.state.hello = nil)]==], (function() -- shunt/state.yue:627
          test_sm.state.hello = nil -- shunt/state.yue:627
        end), (errors(matches('cannot directly assign state fields'))), tostring("shunt/state.yue") .. ":" .. tostring(627)); -- shunt/state.yue:627
        return require('shunt.spec')._expect_that([==[(-> test_sm.state.hello = 'bar')]==], (function() -- shunt/state.yue:628
          test_sm.state.hello = 'bar' -- shunt/state.yue:628
        end), (errors(matches('cannot directly assign state fields'))), tostring("shunt/state.yue") .. ":" .. tostring(628)) -- shunt/state.yue:628
      end) -- shunt/state.yue:628
    end) -- shunt/state.yue:607
    describe('\\goto', function() -- shunt/state.yue:630
      it('requires at least one argument', function() -- shunt/state.yue:631
        local test_sm = make_test_sm(); -- shunt/state.yue:632
        return require('shunt.spec')._expect_that([=[(-> test_sm\goto!)]=], (function() -- shunt/state.yue:633
          return test_sm["goto"](test_sm) -- shunt/state.yue:633
        end), (errors(anything())), tostring("shunt/state.yue") .. ":" .. tostring(633)) -- shunt/state.yue:633
      end) -- shunt/state.yue:631
      it('correctly transitions states', function() -- shunt/state.yue:635
        local test_sm = make_test_sm(); -- shunt/state.yue:636
        require('shunt.spec')._expect_that([=[test_sm.state.name]=], test_sm.state.name, (eq('state_1')), tostring("shunt/state.yue") .. ":" .. tostring(637)) -- shunt/state.yue:637
        test_sm["goto"](test_sm, 'state_2', { -- shunt/state.yue:640
          hello = 'asdf', -- shunt/state.yue:640
          world = 4321 -- shunt/state.yue:641
        }); -- shunt/state.yue:639
        require('shunt.spec')._expect_that([=[test_sm.state.name]=], test_sm.state.name, (eq('state_2')), tostring("shunt/state.yue") .. ":" .. tostring(642)); -- shunt/state.yue:642
        require('shunt.spec')._expect_that([=[test_sm.state.hello]=], test_sm.state.hello, (eq('asdf')), tostring("shunt/state.yue") .. ":" .. tostring(643)); -- shunt/state.yue:643
        require('shunt.spec')._expect_that([=[test_sm.state.world]=], test_sm.state.world, (eq(4321)), tostring("shunt/state.yue") .. ":" .. tostring(644)); -- shunt/state.yue:644
        require('shunt.spec')._expect_that([=[test_sm.state.optional]=], test_sm.state.optional, (eq(nil)), tostring("shunt/state.yue") .. ":" .. tostring(645)) -- shunt/state.yue:645
        test_sm["goto"](test_sm, 'state_1'); -- shunt/state.yue:647
        require('shunt.spec')._expect_that([=[test_sm.state.name]=], test_sm.state.name, (eq('state_1')), tostring("shunt/state.yue") .. ":" .. tostring(648)); -- shunt/state.yue:648
        require('shunt.spec')._expect_that([=[test_sm.state.hello]=], test_sm.state.hello, (eq(nil)), tostring("shunt/state.yue") .. ":" .. tostring(649)); -- shunt/state.yue:649
        require('shunt.spec')._expect_that([=[test_sm.state.world]=], test_sm.state.world, (eq(nil)), tostring("shunt/state.yue") .. ":" .. tostring(650)); -- shunt/state.yue:650
        return require('shunt.spec')._expect_that([=[test_sm.state.optional]=], test_sm.state.optional, (eq(nil)), tostring("shunt/state.yue") .. ":" .. tostring(651)) -- shunt/state.yue:651
      end) -- shunt/state.yue:635
      it('rejects invalid transitions', function() -- shunt/state.yue:653
        local test_sm = make_test_sm(); -- shunt/state.yue:654
        require('shunt.spec')._expect_that([=[(-> test_sm\goto 'invalid')]=], (function() -- shunt/state.yue:655
          return test_sm["goto"](test_sm, 'invalid') -- shunt/state.yue:655
        end), (errors(matches('no such transition: state_1 %-> invalid'))), tostring("shunt/state.yue") .. ":" .. tostring(655)) -- shunt/state.yue:655
        test_sm["goto"](test_sm, 'state_3', 123); -- shunt/state.yue:657
        return require('shunt.spec')._expect_that([=[(-> test_sm\goto 'state_1')]=], (function() -- shunt/state.yue:658
          return test_sm["goto"](test_sm, 'state_1') -- shunt/state.yue:658
        end), (errors(matches('no such transition: state_3 %-> state_1'))), tostring("shunt/state.yue") .. ":" .. tostring(658)) -- shunt/state.yue:658
      end) -- shunt/state.yue:653
      it('rejects transitions with missing data', function() -- shunt/state.yue:660
        local test_sm = make_test_sm(); -- shunt/state.yue:661
        require('shunt.spec')._expect_that([=[(-> test_sm\goto 'state_2')]=], (function() -- shunt/state.yue:662
          return test_sm["goto"](test_sm, 'state_2') -- shunt/state.yue:662
        end), (errors(matches('incorrect type: expected table but got nil'))), tostring("shunt/state.yue") .. ":" .. tostring(662)); -- shunt/state.yue:662
        require('shunt.spec')._expect_that([=[(-> test_sm\goto 'state_2', hello: 'asdf')]=], (function() -- shunt/state.yue:663
          return test_sm["goto"](test_sm, 'state_2', { -- shunt/state.yue:663
            hello = 'asdf' -- shunt/state.yue:663
          }) -- shunt/state.yue:663
        end), (errors(matches('incorrect type: expected number but got nil'))), tostring("shunt/state.yue") .. ":" .. tostring(663)); -- shunt/state.yue:663
        return require('shunt.spec')._expect_that([=[(-> test_sm\goto 'state_2', world: 123)]=], (function() -- shunt/state.yue:664
          return test_sm["goto"](test_sm, 'state_2', { -- shunt/state.yue:664
            world = 123 -- shunt/state.yue:664
          }) -- shunt/state.yue:664
        end), (errors(matches('incorrect type: expected string but got nil'))), tostring("shunt/state.yue") .. ":" .. tostring(664)) -- shunt/state.yue:664
      end) -- shunt/state.yue:660
      it('validates state fields', function() -- shunt/state.yue:666
        local test_sm = make_test_sm(); -- shunt/state.yue:667
        return require('shunt.spec')._expect_that([=[(-> test_sm\goto 'state_2', hello: 'asdf', world: 'fdsa')]=], (function() -- shunt/state.yue:668
          return test_sm["goto"](test_sm, 'state_2', { -- shunt/state.yue:668
            hello = 'asdf', -- shunt/state.yue:668
            world = 'fdsa' -- shunt/state.yue:668
          }) -- shunt/state.yue:668
        end), (errors(matches('incorrect type: expected number but got string'))), tostring("shunt/state.yue") .. ":" .. tostring(668)) -- shunt/state.yue:668
      end) -- shunt/state.yue:666
      it('rejects extra state fields', function() -- shunt/state.yue:670
        local test_sm = make_test_sm(); -- shunt/state.yue:671
        return require('shunt.spec')._expect_that([=[(-> test_sm\goto 'state_3', spare: 'spare')]=], (function() -- shunt/state.yue:672
          return test_sm["goto"](test_sm, 'state_3', { -- shunt/state.yue:672
            spare = 'spare' -- shunt/state.yue:672
          }) -- shunt/state.yue:672
        end), (errors(matches('incorrect type'))), tostring("shunt/state.yue") .. ":" .. tostring(672)) -- shunt/state.yue:672
      end) -- shunt/state.yue:670
      return it('rejects transition of ended state machine', function() -- shunt/state.yue:674
        local test_sm = make_test_sm() -- shunt/state.yue:675
        test_sm["end"](test_sm); -- shunt/state.yue:676
        return require('shunt.spec')._expect_that([=[(-> test_sm\goto 'state_2', hello: 'asdf', world: 123)]=], (function() -- shunt/state.yue:677
          return test_sm["goto"](test_sm, 'state_2', { -- shunt/state.yue:677
            hello = 'asdf', -- shunt/state.yue:677
            world = 123 -- shunt/state.yue:677
          }) -- shunt/state.yue:677
        end), (errors(matches('cannot transition ended state machine'))), tostring("shunt/state.yue") .. ":" .. tostring(677)) -- shunt/state.yue:677
      end) -- shunt/state.yue:677
    end) -- shunt/state.yue:630
    describe('\\end', function() -- shunt/state.yue:679
      it('accepts valid end state', function() -- shunt/state.yue:680
        local state_machine = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):declare_end_state()) -- shunt/state.yue:681
      end) -- shunt/state.yue:680
      return it('rejects invalid end state', function() -- shunt/state.yue:686
        local state_machine = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):add_transition_to('state_2')):add((State('state_2')):declare_end_state()):build(); -- shunt/state.yue:687
        return require('shunt.spec')._expect_that([=[state_machine\end]=], (function() -- shunt/state.yue:694
          local _base_0 = state_machine -- shunt/state.yue:694
          local _fn_0 = _base_0["end"] -- shunt/state.yue:694
          return _fn_0 and function(...) -- shunt/state.yue:694
            return _fn_0(_base_0, ...) -- shunt/state.yue:694
          end -- shunt/state.yue:694
        end)(), (errors(matches('state_1 is not a valid end state'))), tostring("shunt/state.yue") .. ":" .. tostring(694)) -- shunt/state.yue:694
      end) -- shunt/state.yue:694
    end) -- shunt/state.yue:679
    describe('\\recover_to', function() -- shunt/state.yue:696
      it('allows recovery from any state to any state', function() -- shunt/state.yue:697
        local state_machine = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):add_transition_to('state_2')):add((State('state_2')):declare_end_state():set_data_type([[{
              data: string,
            }]])):build() -- shunt/state.yue:698
        state_machine:recover_to('state_2', { -- shunt/state.yue:709
          data = 'asdf' -- shunt/state.yue:709
        }); -- shunt/state.yue:708
        require('shunt.spec')._assert_that([=[state_machine.state.name]=], state_machine.state.name, (eq('state_2')), tostring("shunt/state.yue") .. ":" .. tostring(710)); -- shunt/state.yue:710
        require('shunt.spec')._assert_that([=[state_machine.state.data]=], state_machine.state.data, (eq('asdf')), tostring("shunt/state.yue") .. ":" .. tostring(711)) -- shunt/state.yue:711
        state_machine:recover_to('state_1'); -- shunt/state.yue:713
        require('shunt.spec')._assert_that([=[state_machine.state.name]=], state_machine.state.name, (eq('state_1')), tostring("shunt/state.yue") .. ":" .. tostring(714)); -- shunt/state.yue:714
        return require('shunt.spec')._assert_that([=[state_machine.state.data]=], state_machine.state.data, (eq(nil)), tostring("shunt/state.yue") .. ":" .. tostring(715)) -- shunt/state.yue:715
      end) -- shunt/state.yue:697
      return it('allows recovery after end', function() -- shunt/state.yue:717
        local state_machine = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):declare_end_state():add_transition_to('state_1')):build() -- shunt/state.yue:718
        state_machine["end"](state_machine) -- shunt/state.yue:724
        state_machine:recover_to('state_1') -- shunt/state.yue:725
        return state_machine["goto"](state_machine, 'state_1') -- shunt/state.yue:726
      end) -- shunt/state.yue:726
    end) -- shunt/state.yue:696
    describe('\\set_reporter', function() -- shunt/state.yue:728
      return it('is respected by state machines', function() -- shunt/state.yue:729
        local states = { } -- shunt/state.yue:730
        local test_sm = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):set_reporter(function(self, prev_state, state) -- shunt/state.yue:733
          states[#states + 1] = { -- shunt/state.yue:734
            prev_state = prev_state, -- shunt/state.yue:734
            state = state -- shunt/state.yue:734
          } -- shunt/state.yue:734
        end):add((State('state_1')):add_transition_to('state_2')):add((State('state_2')):declare_end_state():add_transition_to('state_1'):set_data_type([[{
              hello: string,
              world: number
            }]])):build() -- shunt/state.yue:731
        local data = { -- shunt/state.yue:747
          hello = 'asdf', -- shunt/state.yue:747
          world = 123 -- shunt/state.yue:748
        } -- shunt/state.yue:746
        test_sm["goto"](test_sm, 'state_2', data); -- shunt/state.yue:750
        require('shunt.spec')._expect_that([=[states]=], states, (deep_eq({ -- shunt/state.yue:752
          { -- shunt/state.yue:752
            prev_state = { -- shunt/state.yue:752
              name = 'state_1' -- shunt/state.yue:752
            }, -- shunt/state.yue:752
            state = (function() -- shunt/state.yue:752
              local _tab_0 = { -- shunt/state.yue:752
                name = 'state_2' -- shunt/state.yue:752
              } -- shunt/state.yue:752
              local _idx_0 = 1 -- shunt/state.yue:752
              for _key_0, _value_0 in pairs(data) do -- shunt/state.yue:752
                if _idx_0 == _key_0 then -- shunt/state.yue:752
                  _tab_0[#_tab_0 + 1] = _value_0 -- shunt/state.yue:752
                  _idx_0 = _idx_0 + 1 -- shunt/state.yue:752
                else -- shunt/state.yue:752
                  _tab_0[_key_0] = _value_0 -- shunt/state.yue:752
                end -- shunt/state.yue:752
              end -- shunt/state.yue:752
              return _tab_0 -- shunt/state.yue:752
            end)() -- shunt/state.yue:752
          } -- shunt/state.yue:752
        })), tostring("shunt/state.yue") .. ":" .. tostring(752)) -- shunt/state.yue:752
        test_sm["goto"](test_sm, 'state_1') -- shunt/state.yue:756
        test_sm["goto"](test_sm, 'state_2', data) -- shunt/state.yue:757
        test_sm["goto"](test_sm, 'state_1') -- shunt/state.yue:758
        test_sm["goto"](test_sm, 'state_2', data); -- shunt/state.yue:759
        return require('shunt.spec')._expect_that([=[[ state for state in *states ]]=], (function() -- shunt/state.yue:761
          local _accum_0 = { } -- shunt/state.yue:761
          local _len_0 = 1 -- shunt/state.yue:761
          for _index_0 = 1, #states do -- shunt/state.yue:761
            local state = states[_index_0] -- shunt/state.yue:761
            _accum_0[_len_0] = state -- shunt/state.yue:761
            _len_0 = _len_0 + 1 -- shunt/state.yue:761
          end -- shunt/state.yue:761
          return _accum_0 -- shunt/state.yue:761
        end)(), (deep_eq({ -- shunt/state.yue:761
          { -- shunt/state.yue:761
            prev_state = { -- shunt/state.yue:761
              name = 'state_1' -- shunt/state.yue:761
            }, -- shunt/state.yue:761
            state = (function() -- shunt/state.yue:761
              local _tab_0 = { -- shunt/state.yue:761
                name = 'state_2' -- shunt/state.yue:761
              } -- shunt/state.yue:761
              local _idx_0 = 1 -- shunt/state.yue:761
              for _key_0, _value_0 in pairs(data) do -- shunt/state.yue:761
                if _idx_0 == _key_0 then -- shunt/state.yue:761
                  _tab_0[#_tab_0 + 1] = _value_0 -- shunt/state.yue:761
                  _idx_0 = _idx_0 + 1 -- shunt/state.yue:761
                else -- shunt/state.yue:761
                  _tab_0[_key_0] = _value_0 -- shunt/state.yue:761
                end -- shunt/state.yue:761
              end -- shunt/state.yue:761
              return _tab_0 -- shunt/state.yue:761
            end)() -- shunt/state.yue:761
          }, -- shunt/state.yue:761
          { -- shunt/state.yue:761
            prev_state = (function() -- shunt/state.yue:761
              local _tab_0 = { -- shunt/state.yue:761
                name = 'state_2' -- shunt/state.yue:761
              } -- shunt/state.yue:761
              local _idx_0 = 1 -- shunt/state.yue:761
              for _key_0, _value_0 in pairs(data) do -- shunt/state.yue:761
                if _idx_0 == _key_0 then -- shunt/state.yue:761
                  _tab_0[#_tab_0 + 1] = _value_0 -- shunt/state.yue:761
                  _idx_0 = _idx_0 + 1 -- shunt/state.yue:761
                else -- shunt/state.yue:761
                  _tab_0[_key_0] = _value_0 -- shunt/state.yue:761
                end -- shunt/state.yue:761
              end -- shunt/state.yue:761
              return _tab_0 -- shunt/state.yue:761
            end)(), -- shunt/state.yue:761
            state = { -- shunt/state.yue:761
              name = 'state_1' -- shunt/state.yue:761
            } -- shunt/state.yue:761
          }, -- shunt/state.yue:761
          { -- shunt/state.yue:761
            prev_state = { -- shunt/state.yue:761
              name = 'state_1' -- shunt/state.yue:761
            }, -- shunt/state.yue:761
            state = (function() -- shunt/state.yue:761
              local _tab_0 = { -- shunt/state.yue:761
                name = 'state_2' -- shunt/state.yue:761
              } -- shunt/state.yue:761
              local _idx_0 = 1 -- shunt/state.yue:761
              for _key_0, _value_0 in pairs(data) do -- shunt/state.yue:761
                if _idx_0 == _key_0 then -- shunt/state.yue:761
                  _tab_0[#_tab_0 + 1] = _value_0 -- shunt/state.yue:761
                  _idx_0 = _idx_0 + 1 -- shunt/state.yue:761
                else -- shunt/state.yue:761
                  _tab_0[_key_0] = _value_0 -- shunt/state.yue:761
                end -- shunt/state.yue:761
              end -- shunt/state.yue:761
              return _tab_0 -- shunt/state.yue:761
            end)() -- shunt/state.yue:761
          }, -- shunt/state.yue:761
          { -- shunt/state.yue:761
            prev_state = (function() -- shunt/state.yue:761
              local _tab_0 = { -- shunt/state.yue:761
                name = 'state_2' -- shunt/state.yue:761
              } -- shunt/state.yue:761
              local _idx_0 = 1 -- shunt/state.yue:761
              for _key_0, _value_0 in pairs(data) do -- shunt/state.yue:761
                if _idx_0 == _key_0 then -- shunt/state.yue:761
                  _tab_0[#_tab_0 + 1] = _value_0 -- shunt/state.yue:761
                  _idx_0 = _idx_0 + 1 -- shunt/state.yue:761
                else -- shunt/state.yue:761
                  _tab_0[_key_0] = _value_0 -- shunt/state.yue:761
                end -- shunt/state.yue:761
              end -- shunt/state.yue:761
              return _tab_0 -- shunt/state.yue:761
            end)(), -- shunt/state.yue:761
            state = { -- shunt/state.yue:761
              name = 'state_1' -- shunt/state.yue:761
            } -- shunt/state.yue:761
          }, -- shunt/state.yue:761
          { -- shunt/state.yue:761
            prev_state = { -- shunt/state.yue:761
              name = 'state_1' -- shunt/state.yue:761
            }, -- shunt/state.yue:761
            state = (function() -- shunt/state.yue:761
              local _tab_0 = { -- shunt/state.yue:761
                name = 'state_2' -- shunt/state.yue:761
              } -- shunt/state.yue:761
              local _idx_0 = 1 -- shunt/state.yue:761
              for _key_0, _value_0 in pairs(data) do -- shunt/state.yue:761
                if _idx_0 == _key_0 then -- shunt/state.yue:761
                  _tab_0[#_tab_0 + 1] = _value_0 -- shunt/state.yue:761
                  _idx_0 = _idx_0 + 1 -- shunt/state.yue:761
                else -- shunt/state.yue:761
                  _tab_0[_key_0] = _value_0 -- shunt/state.yue:761
                end -- shunt/state.yue:761
              end -- shunt/state.yue:761
              return _tab_0 -- shunt/state.yue:761
            end)() -- shunt/state.yue:761
          } -- shunt/state.yue:761
        })), tostring("shunt/state.yue") .. ":" .. tostring(761)) -- shunt/state.yue:771
      end) -- shunt/state.yue:771
    end) -- shunt/state.yue:728
    describe('\\set_state_invariant', function() -- shunt/state.yue:773
      it('accepts valid states', function() -- shunt/state.yue:774
        local invariant_called_with = { } -- shunt/state.yue:775
        local test_sm = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):set_state_invariant(function(state) -- shunt/state.yue:778
          require('shunt.spec')._assert_that([=[state.name]=], state.name, (matches('^state_%d$')), tostring("shunt/state.yue") .. ":" .. tostring(779)) -- shunt/state.yue:779
          invariant_called_with[#invariant_called_with + 1] = state.name -- shunt/state.yue:780
        end):add((State('state_1')):add_transition_to('state_2')):add((State('state_2')):declare_end_state()):build() -- shunt/state.yue:776
        test_sm["goto"](test_sm, 'state_2') -- shunt/state.yue:786
        test_sm["end"](test_sm); -- shunt/state.yue:787
        return require('shunt.spec')._expect_that([=[invariant_called_with]=], invariant_called_with, (deep_eq({ -- shunt/state.yue:788
          'state_1', -- shunt/state.yue:788
          'state_2', -- shunt/state.yue:788
          'state_2' -- shunt/state.yue:788
        })), tostring("shunt/state.yue") .. ":" .. tostring(788)) -- shunt/state.yue:791
      end) -- shunt/state.yue:774
      return it('rejects invalid states', function() -- shunt/state.yue:793
        local invariant_called_with = { } -- shunt/state.yue:794
        local test_sm_builder = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):set_state_invariant(function(state) -- shunt/state.yue:797
          return error('canary') -- shunt/state.yue:798
        end):add((State('state_1')):add_transition_to('state_2')):add((State('state_2')):declare_end_state()); -- shunt/state.yue:795
        return require('shunt.spec')._expect_that([=[test_sm_builder\build]=], (function() -- shunt/state.yue:803
          local _base_0 = test_sm_builder -- shunt/state.yue:803
          local _fn_0 = _base_0.build -- shunt/state.yue:803
          return _fn_0 and function(...) -- shunt/state.yue:803
            return _fn_0(_base_0, ...) -- shunt/state.yue:803
          end -- shunt/state.yue:803
        end)(), (errors(matches('canary'))), tostring("shunt/state.yue") .. ":" .. tostring(803)) -- shunt/state.yue:803
      end) -- shunt/state.yue:803
    end) -- shunt/state.yue:773
    describe('\\set_transition_invariant', function() -- shunt/state.yue:805
      it('accepts valid transitions', function() -- shunt/state.yue:806
        local test_sm = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):set_transition_invariant(function(prev_state, state) -- shunt/state.yue:809
          require('shunt.spec')._expect_that([=[prev_state]=], prev_state, (has_fields({ -- shunt/state.yue:810
            name = eq('state_1') -- shunt/state.yue:810
          })), tostring("shunt/state.yue") .. ":" .. tostring(810)); -- shunt/state.yue:810
          return require('shunt.spec')._expect_that([=[state]=], state, (has_fields({ -- shunt/state.yue:812
            name = eq('state_2') -- shunt/state.yue:812
          })), tostring("shunt/state.yue") .. ":" .. tostring(812)) -- shunt/state.yue:813
        end):add((State('state_1')):add_transition_to('state_2')):add((State('state_2')):declare_end_state()):build() -- shunt/state.yue:807
        test_sm["goto"](test_sm, 'state_2'); -- shunt/state.yue:819
        return require('shunt.spec')._expect_that([=[test_sm.state.name]=], test_sm.state.name, (eq('state_2')), tostring("shunt/state.yue") .. ":" .. tostring(820)) -- shunt/state.yue:820
      end) -- shunt/state.yue:806
      return it('rejects invalid transitions', function() -- shunt/state.yue:822
        local test_sm = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):set_transition_invariant(function(prev_state, state) -- shunt/state.yue:825
          local prev_counter = prev_state.counter -- shunt/state.yue:826
          local counter = state.counter -- shunt/state.yue:827
          if (prev_counter ~= nil) and (counter ~= nil) then -- shunt/state.yue:828
            if not (prev_counter <= counter) then -- shunt/state.yue:829
              local label = 'label' -- shunt/state.yue:829
              return error("invariant invalidated: prev_counter <= counter (" .. tostring(label) .. ")") -- shunt/state.yue:829
            end -- shunt/state.yue:829
          end -- shunt/state.yue:828
        end):add((State('state_1')):add_transition_to('state_2')):add((State('state_2')):set_data_type([[{
              counter: number,
            }]]):add_transition_to('state_3')):add((State('state_3')):declare_end_state():set_data_type([[{
              counter: number,
            }]])):build() -- shunt/state.yue:823
        test_sm["goto"](test_sm, 'state_2', { -- shunt/state.yue:844
          counter = 1 -- shunt/state.yue:844
        }); -- shunt/state.yue:843
        return require('shunt.spec')._expect_that([=[(-> test_sm\goto 'state_3', counter: -1)]=], (function() -- shunt/state.yue:845
          return test_sm["goto"](test_sm, 'state_3', { -- shunt/state.yue:845
            counter = -1 -- shunt/state.yue:845
          }) -- shunt/state.yue:845
        end), (errors(matches('invariant invalidated: prev_counter <= counter %(label%)'))), tostring("shunt/state.yue") .. ":" .. tostring(845)) -- shunt/state.yue:846
      end) -- shunt/state.yue:846
    end) -- shunt/state.yue:805
    return describe('.states', function() -- shunt/state.yue:848
      it('contains all states', function() -- shunt/state.yue:849
        local test_sm = make_test_sm() -- shunt/state.yue:850
        local expected_states = { -- shunt/state.yue:852
          'state_1', -- shunt/state.yue:852
          'state_2', -- shunt/state.yue:853
          'state_3' -- shunt/state.yue:854
        } -- shunt/state.yue:851
        for _index_0 = 1, #expected_states do -- shunt/state.yue:855
          local expected_state = expected_states[_index_0] -- shunt/state.yue:855
          require('shunt.spec')._expect_that([=[test_sm.states[expected_state]]=], test_sm.states[expected_state], (eq(expected_state)), tostring("shunt/state.yue") .. ":" .. tostring(856)) -- shunt/state.yue:856
        end -- shunt/state.yue:856
      end) -- shunt/state.yue:849
      it('rejects unknown states', function() -- shunt/state.yue:858
        local test_sm = make_test_sm(); -- shunt/state.yue:859
        return require('shunt.spec')._expect_that([=[(-> test_sm.states.unknown)]=], (function() -- shunt/state.yue:860
          return test_sm.states.unknown -- shunt/state.yue:860
        end), (errors(matches("cannot get state 'unknown': no such state"))), tostring("shunt/state.yue") .. ":" .. tostring(860)) -- shunt/state.yue:860
      end) -- shunt/state.yue:858
      return it('rejects modifications', function() -- shunt/state.yue:862
        local test_sm = make_test_sm(); -- shunt/state.yue:863
        return require('shunt.spec')._expect_that([==[(-> test_sm.states.state_1 = nil)]==], (function() -- shunt/state.yue:864
          test_sm.states.state_1 = nil -- shunt/state.yue:864
        end), (errors(matches('cannot set fields in states'))), tostring("shunt/state.yue") .. ":" .. tostring(864)) -- shunt/state.yue:864
      end) -- shunt/state.yue:864
    end) -- shunt/state.yue:864
  end) -- shunt/state.yue:602
  return describe('StateResponsesBuilder', function() -- shunt/state.yue:866
    it('builds response', function() -- shunt/state.yue:867
      local calls = { } -- shunt/state.yue:868
      local builder -- shunt/state.yue:869
      do -- shunt/state.yue:869
        local _with_0 = StateResponsesBuilder(make_test_sm()) -- shunt/state.yue:869
        local _list_0 = { -- shunt/state.yue:870
          'state_1', -- shunt/state.yue:870
          'state_2', -- shunt/state.yue:870
          'state_3' -- shunt/state.yue:870
        } -- shunt/state.yue:870
        for _index_0 = 1, #_list_0 do -- shunt/state.yue:870
          local name = _list_0[_index_0] -- shunt/state.yue:870
          _with_0:add(name, F('() -> <>', function() -- shunt/state.yue:871
            calls[#calls + 1] = { -- shunt/state.yue:872
              name = name -- shunt/state.yue:872
            } -- shunt/state.yue:872
          end)) -- shunt/state.yue:871
        end -- shunt/state.yue:872
        builder = _with_0 -- shunt/state.yue:869
      end -- shunt/state.yue:869
      local responses = builder:build() -- shunt/state.yue:874
      responses.state_1() -- shunt/state.yue:875
      responses.state_2() -- shunt/state.yue:876
      responses.state_3(); -- shunt/state.yue:877
      require('shunt.spec')._expect_that([=[calls]=], calls, (len(eq(3))), tostring("shunt/state.yue") .. ":" .. tostring(878)); -- shunt/state.yue:878
      require('shunt.spec')._expect_that([=[calls[1]]=], calls[1], (has_fields({ -- shunt/state.yue:879
        name = eq('state_1') -- shunt/state.yue:879
      })), tostring("shunt/state.yue") .. ":" .. tostring(879)); -- shunt/state.yue:879
      require('shunt.spec')._expect_that([=[calls[2]]=], calls[2], (has_fields({ -- shunt/state.yue:881
        name = eq('state_2') -- shunt/state.yue:881
      })), tostring("shunt/state.yue") .. ":" .. tostring(881)); -- shunt/state.yue:881
      return require('shunt.spec')._expect_that([=[calls[3]]=], calls[3], (has_fields({ -- shunt/state.yue:883
        name = eq('state_3') -- shunt/state.yue:883
      })), tostring("shunt/state.yue") .. ":" .. tostring(883)) -- shunt/state.yue:884
    end) -- shunt/state.yue:867
    it('rejects unknown states', function() -- shunt/state.yue:886
      local _with_0 = StateResponsesBuilder(make_test_sm()) -- shunt/state.yue:887
      require('shunt.spec')._expect_that([=[(-> \add 'fribib', ->)]=], (function() -- shunt/state.yue:888
        return _with_0:add('fribib', function() end) -- shunt/state.yue:888
      end), (errors(matches("no such state"))), tostring("shunt/state.yue") .. ":" .. tostring(888)) -- shunt/state.yue:888
      return _with_0 -- shunt/state.yue:887
    end) -- shunt/state.yue:886
    it('rejects redefinition', function() -- shunt/state.yue:890
      local _with_0 = StateResponsesBuilder(make_test_sm()) -- shunt/state.yue:891
      _with_0:add('state_1', function() end); -- shunt/state.yue:892
      require('shunt.spec')._expect_that([=[(-> \add 'state_1', ->)]=], (function() -- shunt/state.yue:893
        return _with_0:add('state_1', function() end) -- shunt/state.yue:893
      end), (errors(matches("response for 'state_1' already defined"))), tostring("shunt/state.yue") .. ":" .. tostring(893)) -- shunt/state.yue:893
      return _with_0 -- shunt/state.yue:891
    end) -- shunt/state.yue:890
    return it('rejects incomplete coverage', function() -- shunt/state.yue:895
      local _with_0 = StateResponsesBuilder(make_test_sm()) -- shunt/state.yue:896
      require('shunt.spec')._expect_that([=[\build]=], (function() -- shunt/state.yue:897
        local _base_0 = _with_0 -- shunt/state.yue:897
        local _fn_0 = _base_0.build -- shunt/state.yue:897
        return _fn_0 and function(...) -- shunt/state.yue:897
          return _fn_0(_base_0, ...) -- shunt/state.yue:897
        end -- shunt/state.yue:897
      end)(), (errors(matches('no response: state_1, state_2, state_3'))), tostring("shunt/state.yue") .. ":" .. tostring(897)) -- shunt/state.yue:897
      return _with_0 -- shunt/state.yue:896
    end) -- shunt/state.yue:897
  end) -- shunt/state.yue:897
end) -- shunt/state.yue:384
return _module_0 -- shunt/state.yue:897
end
package.preload['shunt.writelite'] = function(...)
-- [yue]: shunt/writelite.yue
local _module_0 = { } -- shunt/writelite.yue:1
local FORMAT_VERSION, MIN_PAGE_SIZE, injected_failures, activated_failure_points, CORRUPTION_WARNING, MAIN_PRELUDE, JOURNAL_PRELUDE, OsFs, PageCache, Transaction, Journal, NIL_TAG, NIL_TAG_CHAR, TRUE_TAG, TRUE_TAG_CHAR, FALSE_TAG, FALSE_TAG_CHAR, INT_TYPE, FLOAT_TYPE, FLOAT_TYPE_CHAR, STRING_TAG, STRING_TAG_CHAR, TABLE_REF_TAG, TABLE_REF_TAG_CHAR, TABLE_PAYLOAD_TAG, BLANK_TAG, BLANK_TAG_CHAR, TAG_MASK, INT_LEN_SHIFT, INT_LEN_MASK, Serialiser, MAX_INT, MIN_INT, is_float, Deserialiser, Page, MAX_HASH, Hasher, print_serialised -- shunt/writelite.yue:1
local HOST = require('shunt.compat').HOST -- shunt/writelite.yue:0
local declare_singleton_type, declare_type, F, T -- shunt/writelite.yue:0
do -- shunt/writelite.yue:0
  local _obj_0 = require('shunt.quicktype') -- shunt/writelite.yue:0
  declare_singleton_type, declare_type, F, T = _obj_0.declare_singleton_type, _obj_0.declare_type, _obj_0.F, _obj_0.T -- shunt/writelite.yue:0
end -- shunt/writelite.yue:0
local spec = require('shunt.spec').spec -- shunt/writelite.yue:0
FORMAT_VERSION = 1 -- shunt/writelite.yue:7
MIN_PAGE_SIZE = 1024 -- shunt/writelite.yue:8
injected_failures = nil -- shunt/writelite.yue:10
activated_failure_points = nil -- shunt/writelite.yue:11
declare_type('writelite.Writelite', [[{
  mode: (writelite.Mode) => Self,
  page_size: (number) => Self,
  open: () => <boolean, ?string>,
  transaction: ((writelite.Transaction) -> <>) => <>,
  close: () => <boolean, ?string>,
}]]) -- shunt/writelite.yue:49
declare_type('writelite.Mode', '"blob"') -- shunt/writelite.yue:56
declare_type('writelite.MainHeader', [[{
  format_version: 1,
  page_size: number,
  mode: writelite.Mode,
}]]) -- shunt/writelite.yue:57
local Writelite -- shunt/writelite.yue:62
do -- shunt/writelite.yue:62
  local _class_0 -- shunt/writelite.yue:62
  local _base_0 = { -- shunt/writelite.yue:62
    mode = F('(writelite.Mode) => Self', function(self, mode) -- shunt/writelite.yue:76
      if (self._mode ~= nil) then -- shunt/writelite.yue:77
        error("cannot change mode once set") -- shunt/writelite.yue:78
      end -- shunt/writelite.yue:77
      self._mode = mode -- shunt/writelite.yue:79
      return self -- shunt/writelite.yue:80
    end), -- shunt/writelite.yue:82
    page_size = F('(number) => Self', function(self, page_size) -- shunt/writelite.yue:82
      if self._page_size_set then -- shunt/writelite.yue:83
        error("cannot change page size once set") -- shunt/writelite.yue:84
      end -- shunt/writelite.yue:83
      if page_size < MIN_PAGE_SIZE then -- shunt/writelite.yue:85
        error("cannot change page size to " .. tostring(page_size) .. ": minimum is " .. tostring(MIN_PAGE_SIZE)) -- shunt/writelite.yue:86
      end -- shunt/writelite.yue:85
      if page_size % 1 ~= 0 then -- shunt/writelite.yue:87
        error("cannot change page size to " .. tostring(page_size) .. ": not an integer") -- shunt/writelite.yue:88
      end -- shunt/writelite.yue:87
      local shifted = page_size -- shunt/writelite.yue:91
      while 0 == bit.band(shifted, 1) do -- shunt/writelite.yue:92
        shifted = bit.brshift(shifted, 1) -- shunt/writelite.yue:93
      end -- shunt/writelite.yue:93
      if shifted > 1 then -- shunt/writelite.yue:94
        error("cannot change page size to " .. tostring(page_size) .. ": not a power of 2") -- shunt/writelite.yue:95
      end -- shunt/writelite.yue:94
      self._page_size_set = true -- shunt/writelite.yue:97
      self._page_size = page_size -- shunt/writelite.yue:98
      return self -- shunt/writelite.yue:99
    end), -- shunt/writelite.yue:101
    max_cached_pages = F('(number) => Self', function(self, max_cached_pages) -- shunt/writelite.yue:101
      self._page_cache:set_max_cached_pages(max_cached_pages) -- shunt/writelite.yue:102
      return self -- shunt/writelite.yue:103
    end), -- shunt/writelite.yue:105
    open = F('() => <boolean, ?string>', function(self) -- shunt/writelite.yue:105
      if self._open then -- shunt/writelite.yue:106
        return false, 'cannot open writelite twice' -- shunt/writelite.yue:107
      end -- shunt/writelite.yue:106
      self._open = true -- shunt/writelite.yue:108
      if not (self._mode ~= nil) then -- shunt/writelite.yue:110
        return false, 'cannot open main file: mode unspecified' -- shunt/writelite.yue:111
      end -- shunt/writelite.yue:110
      if (injected_failures ~= nil) and injected_failures['pre-open'] then -- shunt/writelite.yue:113
        if activated_failure_points == nil then -- shunt/writelite.yue:113
          activated_failure_points = { } -- shunt/writelite.yue:113
        end -- shunt/writelite.yue:113
        activated_failure_points['pre-open'] = true -- shunt/writelite.yue:113
        error('FAILURE_MARKER-pre-open') -- shunt/writelite.yue:113
      end -- shunt/writelite.yue:113
      local main_file, _, _ = self._fs:open(self._path, 'rb+') -- shunt/writelite.yue:114
      if not (main_file ~= nil) then -- shunt/writelite.yue:115
        local err -- shunt/writelite.yue:120
        main_file, err, _ = self._fs:open(self._path, 'wb+') -- shunt/writelite.yue:120
        if (err ~= nil) then -- shunt/writelite.yue:121
          return false, "cannot open main file: " .. tostring(err) -- shunt/writelite.yue:122
        end -- shunt/writelite.yue:121
      end -- shunt/writelite.yue:115
      main_file:setvbuf('full') -- shunt/writelite.yue:123
      self._main_file = main_file; -- shunt/writelite.yue:124
      if (injected_failures ~= nil) and injected_failures['post-open'] then -- shunt/writelite.yue:125
        if activated_failure_points == nil then -- shunt/writelite.yue:125
          activated_failure_points = { } -- shunt/writelite.yue:125
        end -- shunt/writelite.yue:125
        activated_failure_points['post-open'] = true -- shunt/writelite.yue:125
        error('FAILURE_MARKER-post-open') -- shunt/writelite.yue:125
      end -- shunt/writelite.yue:125
      local main_end_index, err = self._main_file:seek('end', 0) -- shunt/writelite.yue:127
      if (err ~= nil) then -- shunt/writelite.yue:128
        return false, "cannot read main file: " .. tostring(err) -- shunt/writelite.yue:129
      end -- shunt/writelite.yue:128
      local journal_file -- shunt/writelite.yue:131
      journal_file, _ = self._fs:open(self._journal_path, 'rb') -- shunt/writelite.yue:131
      if (journal_file ~= nil) then -- shunt/writelite.yue:132
        local journal_content = journal_file:read('*a') -- shunt/writelite.yue:133
        journal_file:close(); -- shunt/writelite.yue:134
        if (injected_failures ~= nil) and injected_failures['post-journal-read'] then -- shunt/writelite.yue:135
          if activated_failure_points == nil then -- shunt/writelite.yue:135
            activated_failure_points = { } -- shunt/writelite.yue:135
          end -- shunt/writelite.yue:135
          activated_failure_points['post-journal-read'] = true -- shunt/writelite.yue:135
          error('FAILURE_MARKER-post-journal-read') -- shunt/writelite.yue:135
        end -- shunt/writelite.yue:135
        local journal -- shunt/writelite.yue:137
        journal, err = Journal:load(journal_content, self._page_size) -- shunt/writelite.yue:137
        if (err ~= nil) then -- shunt/writelite.yue:138
          error("cannot load journal: " .. tostring(err)) -- shunt/writelite.yue:139
        end -- shunt/writelite.yue:138
        if (injected_failures ~= nil) and injected_failures['post-journal-load'] then -- shunt/writelite.yue:140
          if activated_failure_points == nil then -- shunt/writelite.yue:140
            activated_failure_points = { } -- shunt/writelite.yue:140
          end -- shunt/writelite.yue:140
          activated_failure_points['post-journal-load'] = true -- shunt/writelite.yue:140
          error('FAILURE_MARKER-post-journal-load') -- shunt/writelite.yue:140
        end -- shunt/writelite.yue:140
        if (journal ~= nil) then -- shunt/writelite.yue:141
          local _list_0 = journal:pages() -- shunt/writelite.yue:142
          for _index_0 = 1, #_list_0 do -- shunt/writelite.yue:142
            local page = _list_0[_index_0] -- shunt/writelite.yue:142
            local offset, content = page.offset, page.content -- shunt/writelite.yue:143
            _, err = self._main_file:seek('set', offset) -- shunt/writelite.yue:144
            if (err ~= nil) then -- shunt/writelite.yue:145
              error("cannot seek in main file") -- shunt/writelite.yue:146
            end -- shunt/writelite.yue:145
            _, err = self._main_file:write(content) -- shunt/writelite.yue:147
            if (err ~= nil) then -- shunt/writelite.yue:148
              error("cannot write to main file") -- shunt/writelite.yue:149
            end -- shunt/writelite.yue:148
            if (injected_failures ~= nil) and injected_failures['mid-journal-recovery'] then -- shunt/writelite.yue:150
              if activated_failure_points == nil then -- shunt/writelite.yue:150
                activated_failure_points = { } -- shunt/writelite.yue:150
              end -- shunt/writelite.yue:150
              activated_failure_points['mid-journal-recovery'] = true -- shunt/writelite.yue:150
              error('FAILURE_MARKER-mid-journal-recovery') -- shunt/writelite.yue:150
            end -- shunt/writelite.yue:150
          end -- shunt/writelite.yue:150
        end -- shunt/writelite.yue:141
        if (injected_failures ~= nil) and injected_failures['pre-journal-removal'] then -- shunt/writelite.yue:153
          if activated_failure_points == nil then -- shunt/writelite.yue:153
            activated_failure_points = { } -- shunt/writelite.yue:153
          end -- shunt/writelite.yue:153
          activated_failure_points['pre-journal-removal'] = true -- shunt/writelite.yue:153
          error('FAILURE_MARKER-pre-journal-removal') -- shunt/writelite.yue:153
        end -- shunt/writelite.yue:153
        self._fs:remove(self._journal_path); -- shunt/writelite.yue:154
        if (injected_failures ~= nil) and injected_failures['post-journal-removal'] then -- shunt/writelite.yue:155
          if activated_failure_points == nil then -- shunt/writelite.yue:155
            activated_failure_points = { } -- shunt/writelite.yue:155
          end -- shunt/writelite.yue:155
          activated_failure_points['post-journal-removal'] = true -- shunt/writelite.yue:155
          error('FAILURE_MARKER-post-journal-removal') -- shunt/writelite.yue:155
        end -- shunt/writelite.yue:155
      end -- shunt/writelite.yue:132
      local main_header -- shunt/writelite.yue:157
      if main_end_index == 0 then -- shunt/writelite.yue:158
        main_header = self:_make_main_header() -- shunt/writelite.yue:159
        err = self:_format_main(main_header) -- shunt/writelite.yue:160
        if (err ~= nil) then -- shunt/writelite.yue:161
          return false, err -- shunt/writelite.yue:162
        end -- shunt/writelite.yue:161
      else -- shunt/writelite.yue:164
        main_header, err = self:_read_main_header() -- shunt/writelite.yue:164
        if (err ~= nil) then -- shunt/writelite.yue:165
          return false, "cannot open writelite: " .. tostring(err) -- shunt/writelite.yue:166
        end -- shunt/writelite.yue:165
      end -- shunt/writelite.yue:158
      return true, nil -- shunt/writelite.yue:169
    end), -- shunt/writelite.yue:171
    _make_main_header = F('() => writelite.MainHeader', function(self) -- shunt/writelite.yue:171
      local header = T('writelite.MainHeader', { -- shunt/writelite.yue:173
        format_version = FORMAT_VERSION, -- shunt/writelite.yue:173
        page_size = self._page_size, -- shunt/writelite.yue:174
        mode = self._mode, -- shunt/writelite.yue:175
        checksum = 0 -- shunt/writelite.yue:176
      }) -- shunt/writelite.yue:172
      local checksum = Hasher:hash(header) -- shunt/writelite.yue:178
      header.checksum = checksum -- shunt/writelite.yue:180
      return header -- shunt/writelite.yue:181
    end), -- shunt/writelite.yue:183
    _read_main_header = F('() => <?writelite.MainHeader, ?string>', function(self) -- shunt/writelite.yue:183
      self._main_file:seek('set', 0) -- shunt/writelite.yue:184
      local raw_header, err = self._main_file:read(MIN_PAGE_SIZE) -- shunt/writelite.yue:185
      if (err ~= nil) then -- shunt/writelite.yue:186
        return nil, err -- shunt/writelite.yue:187
      end -- shunt/writelite.yue:186
      if not (raw_header ~= nil) then -- shunt/writelite.yue:188
        return nil, "main file empty" -- shunt/writelite.yue:189
      end -- shunt/writelite.yue:188
      local header = (Deserialiser(raw_header:sub(#MAIN_PRELUDE + 1))):parse() -- shunt/writelite.yue:190
      local checkers = { -- shunt/writelite.yue:194
        format_version = function(fv) -- shunt/writelite.yue:194
          if fv ~= FORMAT_VERSION then -- shunt/writelite.yue:194
            return "format version mismatch" -- shunt/writelite.yue:195
          end -- shunt/writelite.yue:194
        end, -- shunt/writelite.yue:194
        mode = function(m) -- shunt/writelite.yue:196
          if m ~= self._mode then -- shunt/writelite.yue:196
            return "mode mismatch" -- shunt/writelite.yue:197
          end -- shunt/writelite.yue:196
        end, -- shunt/writelite.yue:196
        page_size = function(ps) -- shunt/writelite.yue:198
          if ps ~= self._page_size then -- shunt/writelite.yue:198
            return "page size mismatch" -- shunt/writelite.yue:199
          end -- shunt/writelite.yue:198
        end, -- shunt/writelite.yue:198
        checksum = function() end -- shunt/writelite.yue:200
      } -- shunt/writelite.yue:193
      for key, value in pairs(header) do -- shunt/writelite.yue:201
        local checker = checkers[key] -- shunt/writelite.yue:202
        if not (checker ~= nil) then -- shunt/writelite.yue:203
          error("internal error: no such checker '" .. tostring(key) .. "'") -- shunt/writelite.yue:204
        end -- shunt/writelite.yue:203
        err = checker(value) -- shunt/writelite.yue:205
        if (err ~= nil) then -- shunt/writelite.yue:206
          return nil, "cannot open " .. tostring(self._path) .. ": " .. tostring(err) -- shunt/writelite.yue:207
        end -- shunt/writelite.yue:206
      end -- shunt/writelite.yue:207
      local stored_checksum = header.checksum -- shunt/writelite.yue:209
      header.checksum = 0 -- shunt/writelite.yue:210
      local computed_checksum = Hasher:hash(header) -- shunt/writelite.yue:211
      if stored_checksum ~= computed_checksum then -- shunt/writelite.yue:212
        return nil, "header corrupt (computed_checksum=" .. tostring(computed_checksum) .. ", stored_checksum=" .. tostring(stored_checksum) .. ")" -- shunt/writelite.yue:213
      end -- shunt/writelite.yue:212
      header.checksum = stored_checksum -- shunt/writelite.yue:214
      return header -- shunt/writelite.yue:216
    end), -- shunt/writelite.yue:218
    _format_main = F('(writelite.MainHeader) => ?string', function(self, header) -- shunt/writelite.yue:218
      local fragments = { -- shunt/writelite.yue:220
        MAIN_PRELUDE, -- shunt/writelite.yue:220
        Serialiser:serialise(header) -- shunt/writelite.yue:221
      } -- shunt/writelite.yue:219
      local current_size = 0 -- shunt/writelite.yue:223
      for _index_0 = 1, #fragments do -- shunt/writelite.yue:224
        local fragment = fragments[_index_0] -- shunt/writelite.yue:224
        current_size = current_size + (#fragment) -- shunt/writelite.yue:225
      end -- shunt/writelite.yue:225
      fragments[#fragments + 1] = ('\0'):rep(MIN_PAGE_SIZE - current_size) -- shunt/writelite.yue:226
      local to_write = table.concat(fragments) -- shunt/writelite.yue:228
      if #to_write > MIN_PAGE_SIZE then -- shunt/writelite.yue:229
        error("internal error: first page too large: " .. tostring(#to_write) .. " > " .. tostring(MIN_PAGE_SIZE)) -- shunt/writelite.yue:230
      end -- shunt/writelite.yue:229
      local _, err = self._main_file:seek('set', 0) -- shunt/writelite.yue:231
      if (err ~= nil) then -- shunt/writelite.yue:232
        return err -- shunt/writelite.yue:233
      end -- shunt/writelite.yue:232
      _, err = self._main_file:write(to_write) -- shunt/writelite.yue:234
      if (err ~= nil) then -- shunt/writelite.yue:235
        return err -- shunt/writelite.yue:236
      end -- shunt/writelite.yue:235
      _, err = self._main_file:flush() -- shunt/writelite.yue:237
      return err -- shunt/writelite.yue:238
    end), -- shunt/writelite.yue:240
    transaction = F('((writelite.Transaction) -> <>) => <>', function(self, f) -- shunt/writelite.yue:240
      self.__class._open_transactions[self._path] = true -- shunt/writelite.yue:241
      local txn = Transaction(self) -- shunt/writelite.yue:243
      local err = nil -- shunt/writelite.yue:244
xpcall(function() -- shunt/writelite.yue:245
        return f(txn) -- shunt/writelite.yue:246
      end, function(err2) -- shunt/writelite.yue:246
        err = err2 -- shunt/writelite.yue:248
        return txn:abort() -- shunt/writelite.yue:249
      end) -- shunt/writelite.yue:249
      self.__class._open_transactions[self._path] = nil -- shunt/writelite.yue:251
      if (injected_failures ~= nil) and injected_failures['mid-transaction'] then -- shunt/writelite.yue:253
        if activated_failure_points == nil then -- shunt/writelite.yue:253
          activated_failure_points = { } -- shunt/writelite.yue:253
        end -- shunt/writelite.yue:253
        activated_failure_points['mid-transaction'] = true -- shunt/writelite.yue:253
        error('FAILURE_MARKER-mid-transaction') -- shunt/writelite.yue:253
      end -- shunt/writelite.yue:253
      err = txn:_close(); -- shunt/writelite.yue:254
      if (injected_failures ~= nil) and injected_failures['post-transaction'] then -- shunt/writelite.yue:255
        if activated_failure_points == nil then -- shunt/writelite.yue:255
          activated_failure_points = { } -- shunt/writelite.yue:255
        end -- shunt/writelite.yue:255
        activated_failure_points['post-transaction'] = true -- shunt/writelite.yue:255
        error('FAILURE_MARKER-post-transaction') -- shunt/writelite.yue:255
      end -- shunt/writelite.yue:255
      if (err ~= nil) then -- shunt/writelite.yue:257
        error(err) -- shunt/writelite.yue:258
      end -- shunt/writelite.yue:257
      if (err2 ~= nil) then -- shunt/writelite.yue:259
        error(err2) -- shunt/writelite.yue:260
      end -- shunt/writelite.yue:259
      return -- shunt/writelite.yue:261
    end), -- shunt/writelite.yue:263
    close = F('() => <boolean, ?string>', function(self) -- shunt/writelite.yue:263
      local _, file_closure_error = self._main_file:close() -- shunt/writelite.yue:264
      if self.__class._open_transactions[self._path] then -- shunt/writelite.yue:266
        return false, "cannot close writelite file " .. tostring(self._path) .. ": a transaction is open" -- shunt/writelite.yue:267
      end -- shunt/writelite.yue:266
      if not self._open then -- shunt/writelite.yue:269
        return false, "cannot close writelite file " .. tostring(self._path) .. ": not open" -- shunt/writelite.yue:270
      end -- shunt/writelite.yue:269
      self._open = false -- shunt/writelite.yue:271
      return not (file_closure_error ~= nil), file_closure_error -- shunt/writelite.yue:273
    end), -- shunt/writelite.yue:279
    _ut_max_cached_pages = F('() => number', function(self) -- shunt/writelite.yue:279
      return self._page_cache.max_cached_pages -- shunt/writelite.yue:280
    end) -- shunt/writelite.yue:62
  } -- shunt/writelite.yue:62
  if _base_0.__index == nil then -- shunt/writelite.yue:62
    _base_0.__index = _base_0 -- shunt/writelite.yue:62
  end -- shunt/writelite.yue:280
  _class_0 = setmetatable({ -- shunt/writelite.yue:62
    __init = F('(string, ?writelite.Fs) => <>', function(self, _path, _fs) -- shunt/writelite.yue:65
      if _fs == nil then -- shunt/writelite.yue:65
        _fs = OsFs() -- shunt/writelite.yue:65
      end -- shunt/writelite.yue:65
      self._path = _path -- shunt/writelite.yue:65
      self._fs = _fs -- shunt/writelite.yue:65
      self._journal_path = T('string', self._path .. '~') -- shunt/writelite.yue:66
      self._main_file = T('?writelite.File', nil) -- shunt/writelite.yue:67
      self._open = T('boolean', false) -- shunt/writelite.yue:68
      self._mode = T('?writelite.Mode', nil) -- shunt/writelite.yue:69
      self._page_size = 4096 -- shunt/writelite.yue:70
      self._page_size_set = T('boolean', false) -- shunt/writelite.yue:71
      self._injected_failures = T('?{string}', nil) -- shunt/writelite.yue:72
      self._page_cache = PageCache(self) -- shunt/writelite.yue:74
    end), -- shunt/writelite.yue:62
    __base = _base_0, -- shunt/writelite.yue:62
    __name = "Writelite" -- shunt/writelite.yue:62
  }, { -- shunt/writelite.yue:62
    __index = _base_0, -- shunt/writelite.yue:62
    __call = function(cls, ...) -- shunt/writelite.yue:62
      local _self_0 = setmetatable({ }, _base_0) -- shunt/writelite.yue:62
      cls.__init(_self_0, ...) -- shunt/writelite.yue:62
      return _self_0 -- shunt/writelite.yue:62
    end -- shunt/writelite.yue:62
  }) -- shunt/writelite.yue:62
  _base_0.__class = _class_0 -- shunt/writelite.yue:62
  local self = _class_0; -- shunt/writelite.yue:62
  self._open_transactions = T('{string}', { }) -- shunt/writelite.yue:63
  self._zero_page = F('() => string', function(self) -- shunt/writelite.yue:275
    if self._cached_zero_page == nil then -- shunt/writelite.yue:276
      self._cached_zero_page = ('\0'):rep(self._page_size) -- shunt/writelite.yue:276
    end -- shunt/writelite.yue:276
    return self._cached_zero_page -- shunt/writelite.yue:277
  end) -- shunt/writelite.yue:275
  Writelite = _class_0 -- shunt/writelite.yue:62
end -- shunt/writelite.yue:280
_module_0["Writelite"] = Writelite -- shunt/writelite.yue:62
CORRUPTION_WARNING = T('string', '\n+----------------------------------------------+\n|                                              |\n|                !!! STOP !!!                  |\n|                                              |\n|                DO NOT EDIT!                  |\n|                                              |\n|   Editing this file will corrupt its data.   |\n|                                              |\n| Close this file and DO NOT SAVE any changes. |\n|                                              |\n|             EXIT the editor NOW.             |\n|                                              |\n+----------------------------------------------+\n') -- shunt/writelite.yue:282
MAIN_PRELUDE = "#!writelite\0\0\0\0\0" .. tostring(CORRUPTION_WARNING) -- shunt/writelite.yue:297
JOURNAL_PRELUDE = "#!writelitejrnl\0" .. tostring(CORRUPTION_WARNING) -- shunt/writelite.yue:298
declare_type('writelite.Fs', [[{
  open: (string, writelite.FileMode) => <?writelite.File, ?string, ?number>,
  remove: (string) => boolean,
}]]) -- shunt/writelite.yue:300
declare_type('writelite.FileMode', [[  "r"|"w"|"a"
  |"r+"|"w+"|"a+"
  |"rb"|"wb"|"ab"
  |"rb+"|"wb+"|"ab+"
]]) -- shunt/writelite.yue:304
declare_type('writelite.File', [[~{
  read: ("*a"|number) => <?string, ?string>,
  write: (string) => ?string,
  seek: (Whence, ?number) => <?number, ?string>,
  setvbuf: ("full") => <>,
  flush: () => <boolean, ?string>,
  close: () => <boolean, ?string>,
}]]) -- shunt/writelite.yue:310
do -- shunt/writelite.yue:318
  local _class_0 -- shunt/writelite.yue:318
  local _base_0 = { -- shunt/writelite.yue:318
    open = F('(string, writelite.FileMode) => <?writelite.File, ?string, ?number>', function(self, path, mode) -- shunt/writelite.yue:321
      return io.open(tostring(self.dir) .. "/" .. tostring(path), mode) -- shunt/writelite.yue:322
    end), -- shunt/writelite.yue:324
    remove = F('(string) => boolean', function(self, path) -- shunt/writelite.yue:324
      return os.remove(path) -- shunt/writelite.yue:325
    end) -- shunt/writelite.yue:318
  } -- shunt/writelite.yue:318
  if _base_0.__index == nil then -- shunt/writelite.yue:318
    _base_0.__index = _base_0 -- shunt/writelite.yue:318
  end -- shunt/writelite.yue:325
  _class_0 = setmetatable({ -- shunt/writelite.yue:318
    __init = F('(?string) => <>', function(self, dir) -- shunt/writelite.yue:319
      if dir == nil then -- shunt/writelite.yue:319
        dir = '.' -- shunt/writelite.yue:319
      end -- shunt/writelite.yue:319
      self.dir = dir -- shunt/writelite.yue:319
    end), -- shunt/writelite.yue:318
    __base = _base_0, -- shunt/writelite.yue:318
    __name = "OsFs" -- shunt/writelite.yue:318
  }, { -- shunt/writelite.yue:318
    __index = _base_0, -- shunt/writelite.yue:318
    __call = function(cls, ...) -- shunt/writelite.yue:318
      local _self_0 = setmetatable({ }, _base_0) -- shunt/writelite.yue:318
      cls.__init(_self_0, ...) -- shunt/writelite.yue:318
      return _self_0 -- shunt/writelite.yue:318
    end -- shunt/writelite.yue:318
  }) -- shunt/writelite.yue:318
  _base_0.__class = _class_0 -- shunt/writelite.yue:318
  OsFs = _class_0 -- shunt/writelite.yue:318
end -- shunt/writelite.yue:325
declare_type('writelite.PageCache', [[{
  get: (number) => ?writelite.Page,
  set: (number, writelite.Page) => <>,
  set_max_cached_pages: (number) => <>,
}]]) -- shunt/writelite.yue:327
declare_type('writelite.PageCacheOpts', [[{
  _page_size: number,
  _main_file: ?writelite.File, -- Lazy
}]]) -- shunt/writelite.yue:332
do -- shunt/writelite.yue:336
  local _class_0 -- shunt/writelite.yue:336
  local _base_0 = { -- shunt/writelite.yue:336
    get = F('(number) => ?writelite.Page', function(self, offset) -- shunt/writelite.yue:346
      local page_size = self.opts._page_size -- shunt/writelite.yue:347
      if offset % page_size ~= 0 then -- shunt/writelite.yue:349
        error("internal error: page-cache offset must be a multiple of the page size") -- shunt/writelite.yue:350
      end -- shunt/writelite.yue:349
      self.lru_map[offset] = self.lru_counter -- shunt/writelite.yue:352
      self.lru_counter = self.lru_counter + 1 -- shunt/writelite.yue:353
      do -- shunt/writelite.yue:355
        local page = self.cached_pages[offset] -- shunt/writelite.yue:355
        if page then -- shunt/writelite.yue:355
          return page -- shunt/writelite.yue:356
        end -- shunt/writelite.yue:355
      end -- shunt/writelite.yue:355
      if self.num_cached_pages >= self.max_cached_pages then -- shunt/writelite.yue:358
        self:discard_old() -- shunt/writelite.yue:359
      end -- shunt/writelite.yue:358
      local page -- shunt/writelite.yue:361
      do -- shunt/writelite.yue:361
        local main_file = self.opts._main_file -- shunt/writelite.yue:362
        main_file:seek('set', offset) -- shunt/writelite.yue:363
        local content -- shunt/writelite.yue:365
        do -- shunt/writelite.yue:365
          local err -- shunt/writelite.yue:366
          content, err = main_file:read(page_size) -- shunt/writelite.yue:366
          if (err ~= nil) then -- shunt/writelite.yue:367
            error(err) -- shunt/writelite.yue:368
          end -- shunt/writelite.yue:367
          if content ~= nil then -- shunt/writelite.yue:369
            content = content -- shunt/writelite.yue:369
          else -- shunt/writelite.yue:369
            content = '' -- shunt/writelite.yue:369
          end -- shunt/writelite.yue:369
          if #content < page_size then -- shunt/writelite.yue:370
            content = content .. ('\0'):rep(page_size - #content) -- shunt/writelite.yue:371
          end -- shunt/writelite.yue:370
          content = content -- shunt/writelite.yue:372
        end -- shunt/writelite.yue:372
        if #content ~= page_size then -- shunt/writelite.yue:373
          error("internal error: incorrect page size (" .. tostring(#content) .. " != " .. tostring(page_size) .. ")") -- shunt/writelite.yue:374
        end -- shunt/writelite.yue:373
        page = Page({ -- shunt/writelite.yue:376
          offset = offset, -- shunt/writelite.yue:376
          content = content -- shunt/writelite.yue:377
        }) -- shunt/writelite.yue:375
      end -- shunt/writelite.yue:377
      self.num_cached_pages = self.num_cached_pages + 1 -- shunt/writelite.yue:379
      self.cached_pages[offset] = page -- shunt/writelite.yue:380
      return page -- shunt/writelite.yue:381
    end), -- shunt/writelite.yue:383
    set = F('(number, writelite.Page) => <>', function(self, offset, page) -- shunt/writelite.yue:383
      local page_size = self.opts._page_size -- shunt/writelite.yue:384
      if offset % page_size ~= 0 then -- shunt/writelite.yue:386
        error("internal error: page-cache offset must be a multiple of the page size") -- shunt/writelite.yue:387
      end -- shunt/writelite.yue:386
      if #page.content ~= page_size then -- shunt/writelite.yue:388
        error("internal error: page has the wrong size (" .. tostring(#page.content) .. " != " .. tostring(page_size) .. ")") -- shunt/writelite.yue:389
      end -- shunt/writelite.yue:388
      if offset ~= page.offset then -- shunt/writelite.yue:390
        error("internal error: required and declared offset mismatch (" .. tostring(offset) .. " != " .. tostring(page.offset) .. ")") -- shunt/writelite.yue:391
      end -- shunt/writelite.yue:390
      self.lru_map[offset] = self.lru_counter -- shunt/writelite.yue:393
      self.lru_counter = self.lru_counter + 1 -- shunt/writelite.yue:394
      if not (self.cached_pages[offset] ~= nil) then -- shunt/writelite.yue:396
        self.num_cached_pages = self.num_cached_pages + 1 -- shunt/writelite.yue:397
      end -- shunt/writelite.yue:396
      self.cached_pages[offset] = page -- shunt/writelite.yue:398
      if self.num_cached_pages > self.max_cached_pages then -- shunt/writelite.yue:400
        return self:discard_old() -- shunt/writelite.yue:401
      end -- shunt/writelite.yue:400
    end), -- shunt/writelite.yue:403
    discard_old = F('() => <>', function(self) -- shunt/writelite.yue:403
      local discard_horizon = self.lru_counter - self.max_cached_pages * 0.5 -- shunt/writelite.yue:404
      local indices_to_discard -- shunt/writelite.yue:405
      do -- shunt/writelite.yue:405
        local _with_0 = { } -- shunt/writelite.yue:405
        for index, last_used in pairs(self.lru_map) do -- shunt/writelite.yue:406
          if last_used < discard_horizon then -- shunt/writelite.yue:407
            _with_0[#_with_0 + 1] = index -- shunt/writelite.yue:408
          end -- shunt/writelite.yue:407
        end -- shunt/writelite.yue:408
        indices_to_discard = _with_0 -- shunt/writelite.yue:405
      end -- shunt/writelite.yue:405
      for _index_0 = 1, #indices_to_discard do -- shunt/writelite.yue:409
        local index = indices_to_discard[_index_0] -- shunt/writelite.yue:409
        self.lru_map[index] = nil -- shunt/writelite.yue:410
        self.cached_pages[index] = nil -- shunt/writelite.yue:411
      end -- shunt/writelite.yue:411
      self.num_cached_pages = self.num_cached_pages - (#indices_to_discard) -- shunt/writelite.yue:412
    end), -- shunt/writelite.yue:414
    set_max_cached_pages = F('(number) => <>', function(self, max_cached_pages) -- shunt/writelite.yue:414
      if max_cached_pages < 1 then -- shunt/writelite.yue:415
        error("cannot set max cached pages to " .. tostring(max_cached_pages) .. ": too small") -- shunt/writelite.yue:416
      end -- shunt/writelite.yue:415
      if is_float(max_cached_pages) then -- shunt/writelite.yue:417
        error("cannot set max cached pages to " .. tostring(max_cached_pages) .. ": not an integer") -- shunt/writelite.yue:418
      end -- shunt/writelite.yue:417
      self.max_cached_pages = max_cached_pages -- shunt/writelite.yue:419
    end) -- shunt/writelite.yue:336
  } -- shunt/writelite.yue:336
  if _base_0.__index == nil then -- shunt/writelite.yue:336
    _base_0.__index = _base_0 -- shunt/writelite.yue:336
  end -- shunt/writelite.yue:419
  _class_0 = setmetatable({ -- shunt/writelite.yue:336
    __init = F('(writelite.PageCacheOpts) => <>', function(self, opts) -- shunt/writelite.yue:337
      self.opts = opts -- shunt/writelite.yue:337
      self.cached_pages = T('{number->writelite.Page}', { }) -- shunt/writelite.yue:340
      self.num_cached_pages = T('number', 0) -- shunt/writelite.yue:341
      self.lru_map = T('{number->number}', { }) -- shunt/writelite.yue:342
      self.lru_counter = T('number', 0) -- shunt/writelite.yue:343
      self.max_cached_pages = T('number', 1000) -- shunt/writelite.yue:344
    end), -- shunt/writelite.yue:336
    __base = _base_0, -- shunt/writelite.yue:336
    __name = "PageCache" -- shunt/writelite.yue:336
  }, { -- shunt/writelite.yue:336
    __index = _base_0, -- shunt/writelite.yue:336
    __call = function(cls, ...) -- shunt/writelite.yue:336
      local _self_0 = setmetatable({ }, _base_0) -- shunt/writelite.yue:336
      cls.__init(_self_0, ...) -- shunt/writelite.yue:336
      return _self_0 -- shunt/writelite.yue:336
    end -- shunt/writelite.yue:336
  }) -- shunt/writelite.yue:336
  _base_0.__class = _class_0 -- shunt/writelite.yue:336
  PageCache = _class_0 -- shunt/writelite.yue:336
end -- shunt/writelite.yue:419
declare_type('writelite.Transaction', [[{
  write: (string) => <>,
  seek: (Whence, ?number) => <?number, ?string>,
  abort: () => <>,
}]]) -- shunt/writelite.yue:421
declare_type('Whence', '"set"|"cur"|"end"') -- shunt/writelite.yue:426
declare_type('writelite.Delta', [[{
  offset: number,
  content: string,
}]]) -- shunt/writelite.yue:427
do -- shunt/writelite.yue:431
  local _class_0 -- shunt/writelite.yue:431
  local _base_0 = { -- shunt/writelite.yue:431
    write = F('(string) => <>', function(self, bytes) -- shunt/writelite.yue:439
      if self._mode ~= 'blob' then -- shunt/writelite.yue:440
        error("cannot use write method in " .. tostring(self._mode) .. " mode (must be in blob mode)") -- shunt/writelite.yue:441
      end -- shunt/writelite.yue:440
      if self._aborted then -- shunt/writelite.yue:442
        error('cannot write to aborted transaction') -- shunt/writelite.yue:443
      end -- shunt/writelite.yue:442
      local offset = self._cursor + self._page_size -- shunt/writelite.yue:445
      do -- shunt/writelite.yue:446
        local _obj_0 = self._deltas -- shunt/writelite.yue:446
        _obj_0[#_obj_0 + 1] = { -- shunt/writelite.yue:447
          offset = offset, -- shunt/writelite.yue:447
          content = bytes -- shunt/writelite.yue:448
        } -- shunt/writelite.yue:446
      end -- shunt/writelite.yue:448
      self._cursor = self._cursor + (#bytes) -- shunt/writelite.yue:449
    end), -- shunt/writelite.yue:451
    seek = F('(Whence, ?number) => <>', function(self, whence, offset) -- shunt/writelite.yue:451
      if self._aborted then -- shunt/writelite.yue:452
        error('cannot seek in aborted transaction') -- shunt/writelite.yue:453
      end -- shunt/writelite.yue:452
      local new_cursor -- shunt/writelite.yue:455
      if 'set' == whence then -- shunt/writelite.yue:457
        if offset ~= nil then -- shunt/writelite.yue:458
          new_cursor = offset -- shunt/writelite.yue:458
        else -- shunt/writelite.yue:458
          new_cursor = 0 -- shunt/writelite.yue:458
        end -- shunt/writelite.yue:458
        if new_cursor < 0 then -- shunt/writelite.yue:459
          error("cannot seek to negative position") -- shunt/writelite.yue:460
        end -- shunt/writelite.yue:459
      elseif 'cur' == whence then -- shunt/writelite.yue:461
        assert((offset ~= nil), 'internal error: "cur"-whence requires offset') -- shunt/writelite.yue:462
        new_cursor = new_cursor + offset -- shunt/writelite.yue:463
      elseif 'end' == whence then -- shunt/writelite.yue:464
        assert(not (offset ~= nil), 'internal error: "end"-whence cannot have no offset') -- shunt/writelite.yue:465
        new_cursor = self._len -- shunt/writelite.yue:466
      else -- shunt/writelite.yue:468
        error('internal error: unreachable') -- shunt/writelite.yue:468
      end -- shunt/writelite.yue:468
      self._cursor = new_cursor -- shunt/writelite.yue:469
    end), -- shunt/writelite.yue:471
    abort = F('() => <>', function(self) -- shunt/writelite.yue:471
      self._aborted = true -- shunt/writelite.yue:472
    end), -- shunt/writelite.yue:474
    _close = F('() => ?string', function(self) -- shunt/writelite.yue:474
      local journal_path = self._parent._journal_path -- shunt/writelite.yue:475
      if self._aborted then -- shunt/writelite.yue:477
        self._parent._fs:remove(journal_path) -- shunt/writelite.yue:479
        return nil -- shunt/writelite.yue:480
      end -- shunt/writelite.yue:477
      local pages_to_write = self:_pages_to_write() -- shunt/writelite.yue:483
      if #pages_to_write == 0 then -- shunt/writelite.yue:485
        return nil -- shunt/writelite.yue:487
      end -- shunt/writelite.yue:485
      do -- shunt/writelite.yue:489
        local journal = Journal(self._page_size) -- shunt/writelite.yue:490
        for _index_0 = 1, #pages_to_write do -- shunt/writelite.yue:491
          local page = pages_to_write[_index_0] -- shunt/writelite.yue:491
          journal:add(page) -- shunt/writelite.yue:492
        end -- shunt/writelite.yue:492
        local fs = self._parent._fs -- shunt/writelite.yue:494
        local journal_file, err = fs:open(journal_path, 'wb+') -- shunt/writelite.yue:495
        if (err ~= nil) then -- shunt/writelite.yue:496
          error("cannot open journal file '" .. tostring(journal_path) .. "': " .. tostring(err)) -- shunt/writelite.yue:497
        end -- shunt/writelite.yue:496
        do -- shunt/writelite.yue:498
          journal_file:setvbuf('full') -- shunt/writelite.yue:499
          local _ -- shunt/writelite.yue:500
          _, err = journal:write_to(journal_file) -- shunt/writelite.yue:500
          if (err ~= nil) then -- shunt/writelite.yue:501
            error("cannot write to journal file '" .. tostring(journal_path) .. "': " .. tostring(err)) -- shunt/writelite.yue:502
          end -- shunt/writelite.yue:501
          _, err = journal_file:close() -- shunt/writelite.yue:503
          if (err ~= nil) then -- shunt/writelite.yue:504
            error("cannot close journal file '" .. tostring(journal_path) .. ": " .. tostring(err)) -- shunt/writelite.yue:505
          end -- shunt/writelite.yue:504
        end -- shunt/writelite.yue:498
      end -- shunt/writelite.yue:505
      local main_file = self._parent._main_file -- shunt/writelite.yue:508
      for _index_0 = 1, #pages_to_write do -- shunt/writelite.yue:509
        local page = pages_to_write[_index_0] -- shunt/writelite.yue:509
        local _, err = main_file:seek('set', page.offset) -- shunt/writelite.yue:510
        if (err ~= nil) then -- shunt/writelite.yue:511
          return "cannot seek in main file: " .. tostring(err) -- shunt/writelite.yue:512
        end -- shunt/writelite.yue:511
        _, err = main_file:write(page.content) -- shunt/writelite.yue:513
        if (err ~= nil) then -- shunt/writelite.yue:514
          return "cannot write to main file: " .. tostring(err) -- shunt/writelite.yue:515
        end -- shunt/writelite.yue:514
      end -- shunt/writelite.yue:515
      local _, err = main_file:flush() -- shunt/writelite.yue:517
      if (err ~= nil) then -- shunt/writelite.yue:518
        return "cannot flush main file: " .. tostring(err) -- shunt/writelite.yue:519
      end -- shunt/writelite.yue:518
      self._parent._fs:remove(journal_path) -- shunt/writelite.yue:522
      return nil -- shunt/writelite.yue:523
    end), -- shunt/writelite.yue:525
    _pages_to_write = F('() => [writelite.Page]', function(self) -- shunt/writelite.yue:525
      local page_cache, page_size -- shunt/writelite.yue:526
      do -- shunt/writelite.yue:526
        local _obj_0 = self._parent -- shunt/writelite.yue:529
        page_cache, page_size = _obj_0._page_cache, _obj_0._page_size -- shunt/writelite.yue:526
      end -- shunt/writelite.yue:529
      local page_sized_deltas -- shunt/writelite.yue:531
      do -- shunt/writelite.yue:531
        local _with_0 = { } -- shunt/writelite.yue:531
        local _list_0 = self._deltas -- shunt/writelite.yue:532
        for _index_0 = 1, #_list_0 do -- shunt/writelite.yue:532
          local delta = _list_0[_index_0] -- shunt/writelite.yue:532
          local _continue_0 = false -- shunt/writelite.yue:533
          repeat -- shunt/writelite.yue:533
            local offset, content = delta.offset, delta.content -- shunt/writelite.yue:533
            local start_page_offset = self:_to_page_offset(offset) -- shunt/writelite.yue:535
            local end_page_offset = self:_to_page_offset(offset + #content) -- shunt/writelite.yue:536
            if start_page_offset == end_page_offset then -- shunt/writelite.yue:537
              _with_0[#_with_0 + 1] = { -- shunt/writelite.yue:539
                page_offset = start_page_offset, -- shunt/writelite.yue:539
                offset = offset % page_size, -- shunt/writelite.yue:540
                content = content -- shunt/writelite.yue:541
              } -- shunt/writelite.yue:538
              _continue_0 = true -- shunt/writelite.yue:542
              break -- shunt/writelite.yue:542
            end -- shunt/writelite.yue:537
            local first_chunk_size = page_size - offset % page_size -- shunt/writelite.yue:544
            _with_0[#_with_0 + 1] = { -- shunt/writelite.yue:546
              page_offset = start_page_offset, -- shunt/writelite.yue:546
              offset = offset % page_size, -- shunt/writelite.yue:547
              content = content:sub(1, first_chunk_size) -- shunt/writelite.yue:548
            } -- shunt/writelite.yue:545
            local chunk_offset = offset -- shunt/writelite.yue:549
            for start_idx = 1 + first_chunk_size, #content, page_size do -- shunt/writelite.yue:550
              local end_idx = start_idx + page_size - 1 -- shunt/writelite.yue:551
              if end_idx > #content then -- shunt/writelite.yue:552
                end_idx = #content -- shunt/writelite.yue:553
              end -- shunt/writelite.yue:552
              _with_0[#_with_0 + 1] = { -- shunt/writelite.yue:555
                page_offset = self:_to_page_offset(start_idx + offset), -- shunt/writelite.yue:555
                offset = 0, -- shunt/writelite.yue:556
                content = content:sub(start_idx, end_idx) -- shunt/writelite.yue:557
              } -- shunt/writelite.yue:554
              chunk_offset = chunk_offset + page_size -- shunt/writelite.yue:558
            end -- shunt/writelite.yue:558
            _continue_0 = true -- shunt/writelite.yue:533
          until true -- shunt/writelite.yue:558
          if not _continue_0 then -- shunt/writelite.yue:558
            break -- shunt/writelite.yue:558
          end -- shunt/writelite.yue:558
        end -- shunt/writelite.yue:558
        page_sized_deltas = _with_0 -- shunt/writelite.yue:531
      end -- shunt/writelite.yue:531
      for _index_0 = 1, #page_sized_deltas do -- shunt/writelite.yue:560
        local delta = page_sized_deltas[_index_0] -- shunt/writelite.yue:560
        if #delta.content > page_size then -- shunt/writelite.yue:561
          error("internal error: chunk too large: " .. tostring(#delta.content) .. " > " .. tostring(page_size) .. " at (" .. tostring(delta.page_offset) .. ", " .. tostring(delta.offset) .. ")#") -- shunt/writelite.yue:562
        end -- shunt/writelite.yue:561
        if delta.offset > page_size then -- shunt/writelite.yue:563
          error("internal error: invalid delta offset: " .. tostring(delta.offset) .. " > " .. tostring(page_size)) -- shunt/writelite.yue:564
        end -- shunt/writelite.yue:563
      end -- shunt/writelite.yue:564
      local deltas_by_page -- shunt/writelite.yue:566
      do -- shunt/writelite.yue:566
        local _with_0 = { } -- shunt/writelite.yue:566
        for _index_0 = 1, #page_sized_deltas do -- shunt/writelite.yue:567
          local delta = page_sized_deltas[_index_0] -- shunt/writelite.yue:567
          local page_offset = delta.page_offset -- shunt/writelite.yue:568
          if _with_0[page_offset] == nil then -- shunt/writelite.yue:569
            _with_0[page_offset] = { } -- shunt/writelite.yue:569
          end -- shunt/writelite.yue:569
          do -- shunt/writelite.yue:570
            local _obj_0 = _with_0[page_offset] -- shunt/writelite.yue:570
            _obj_0[#_obj_0 + 1] = delta -- shunt/writelite.yue:570
          end -- shunt/writelite.yue:570
        end -- shunt/writelite.yue:570
        deltas_by_page = _with_0 -- shunt/writelite.yue:566
      end -- shunt/writelite.yue:566
      local ret -- shunt/writelite.yue:572
      do -- shunt/writelite.yue:572
        local _with_0 = { } -- shunt/writelite.yue:572
        for page_offset, page_deltas in pairs(deltas_by_page) do -- shunt/writelite.yue:573
          local content_bytes = { } -- shunt/writelite.yue:574
          for _index_0 = 1, #page_deltas do -- shunt/writelite.yue:575
            local delta = page_deltas[_index_0] -- shunt/writelite.yue:575
            local offset, content = delta.offset, delta.content -- shunt/writelite.yue:576
            for i = 1, #content do -- shunt/writelite.yue:581
              content_bytes[offset + i] = content:byte(i) -- shunt/writelite.yue:582
            end -- shunt/writelite.yue:582
          end -- shunt/writelite.yue:582
          local gaps_present = false -- shunt/writelite.yue:584
          for i = 1, page_size do -- shunt/writelite.yue:585
            if not (content_bytes[i] ~= nil) then -- shunt/writelite.yue:586
              gaps_present = true -- shunt/writelite.yue:587
              break -- shunt/writelite.yue:588
            end -- shunt/writelite.yue:586
          end -- shunt/writelite.yue:588
          if gaps_present then -- shunt/writelite.yue:589
            local prev_page = assert(page_cache:get(page_offset)) -- shunt/writelite.yue:590
            local prev_page_content = prev_page.content -- shunt/writelite.yue:591
            for i = 1, page_size do -- shunt/writelite.yue:592
              if not (content_bytes[i] ~= nil) then -- shunt/writelite.yue:593
                content_bytes[i] = prev_page_content:byte(i) -- shunt/writelite.yue:594
              end -- shunt/writelite.yue:593
            end -- shunt/writelite.yue:594
          end -- shunt/writelite.yue:589
          if #content_bytes ~= page_size then -- shunt/writelite.yue:595
            error("internal error: produced page does not match page size " .. tostring(#content_bytes) .. " != " .. tostring(page_size)) -- shunt/writelite.yue:596
          end -- shunt/writelite.yue:595
          _with_0[#_with_0 + 1] = Page({ -- shunt/writelite.yue:599
            offset = page_offset, -- shunt/writelite.yue:599
            content = table.concat((function() -- shunt/writelite.yue:600
              local _accum_0 = { } -- shunt/writelite.yue:600
              local _len_0 = 1 -- shunt/writelite.yue:600
              for _index_0 = 1, #content_bytes do -- shunt/writelite.yue:600
                local c = content_bytes[_index_0] -- shunt/writelite.yue:600
                _accum_0[_len_0] = string.char(c) -- shunt/writelite.yue:600
                _len_0 = _len_0 + 1 -- shunt/writelite.yue:600
              end -- shunt/writelite.yue:600
              return _accum_0 -- shunt/writelite.yue:600
            end)()) -- shunt/writelite.yue:600
          }) -- shunt/writelite.yue:598
        end -- shunt/writelite.yue:600
        ret = _with_0 -- shunt/writelite.yue:572
      end -- shunt/writelite.yue:572
      table.sort(ret, function(a, b) -- shunt/writelite.yue:601
        return a.offset < b.offset -- shunt/writelite.yue:601
      end) -- shunt/writelite.yue:601
      return ret -- shunt/writelite.yue:602
    end), -- shunt/writelite.yue:604
    _to_page_offset = F('(number) => number', function(self, offset) -- shunt/writelite.yue:604
      return offset - offset % self._parent._page_size -- shunt/writelite.yue:605
    end) -- shunt/writelite.yue:431
  } -- shunt/writelite.yue:431
  if _base_0.__index == nil then -- shunt/writelite.yue:431
    _base_0.__index = _base_0 -- shunt/writelite.yue:431
  end -- shunt/writelite.yue:605
  _class_0 = setmetatable({ -- shunt/writelite.yue:431
    __init = F('(writelite.Writelite) => <>', function(self, _parent) -- shunt/writelite.yue:432
      self._parent = _parent -- shunt/writelite.yue:432
      self._deltas = T('[writelite.Delta]', { }) -- shunt/writelite.yue:433
      self._cursor = T('number', 0) -- shunt/writelite.yue:434
      self._aborted = T('boolean', false) -- shunt/writelite.yue:435
      self._page_size = self._parent._page_size -- shunt/writelite.yue:436
      self._mode = T('writelite.Mode', self._parent._mode) -- shunt/writelite.yue:437
    end), -- shunt/writelite.yue:431
    __base = _base_0, -- shunt/writelite.yue:431
    __name = "Transaction" -- shunt/writelite.yue:431
  }, { -- shunt/writelite.yue:431
    __index = _base_0, -- shunt/writelite.yue:431
    __call = function(cls, ...) -- shunt/writelite.yue:431
      local _self_0 = setmetatable({ }, _base_0) -- shunt/writelite.yue:431
      cls.__init(_self_0, ...) -- shunt/writelite.yue:431
      return _self_0 -- shunt/writelite.yue:431
    end -- shunt/writelite.yue:431
  }) -- shunt/writelite.yue:431
  _base_0.__class = _class_0 -- shunt/writelite.yue:431
  Transaction = _class_0 -- shunt/writelite.yue:431
end -- shunt/writelite.yue:605
declare_type('writelite.Journal', [[{
  pages: () => [writelite.Page],
  add: (writelite.Page) => <>,
  write_to: (writelite.File) => <boolean, ?string>,
}]]) -- shunt/writelite.yue:607
declare_type('writelite.JournalHeader', [[{
  format_version: 1,
  page_size: number,
  mode: writelite.JournalMode,
  payload_length: number,
}]]) -- shunt/writelite.yue:612
declare_type('writelite.JournalMode', '"delete"') -- shunt/writelite.yue:618
do -- shunt/writelite.yue:619
  local _class_0 -- shunt/writelite.yue:619
  local _base_0 = { -- shunt/writelite.yue:619
    _validate_raw = F('(writelite.JournalHeader, number, string) => ?string', function(self, header, header_end_index, content) -- shunt/writelite.yue:636
      local first_page = content:sub(1, self._page_size - 1) -- shunt/writelite.yue:637
      if not (first_page ~= nil) then -- shunt/writelite.yue:638
        return "header missing" -- shunt/writelite.yue:639
      end -- shunt/writelite.yue:638
      if (first_page:sub(1, #JOURNAL_PRELUDE)) ~= JOURNAL_PRELUDE then -- shunt/writelite.yue:640
        return "prelude was edited" -- shunt/writelite.yue:641
      end -- shunt/writelite.yue:640
      local format_version, page_size, mode, payload_length = header.format_version, header.page_size, header.mode, header.payload_length -- shunt/writelite.yue:643
      if format_version ~= FORMAT_VERSION then -- shunt/writelite.yue:649
        return "format version " .. tostring(format_version) .. " unsupported" -- shunt/writelite.yue:650
      end -- shunt/writelite.yue:649
      if mode ~= 'delete' then -- shunt/writelite.yue:651
        return "unrecognised journal mode '" .. tostring(mode) .. "'" -- shunt/writelite.yue:652
      end -- shunt/writelite.yue:651
      if payload_length < 0 then -- shunt/writelite.yue:653
        return "invalid payload length " .. tostring(payload_length) -- shunt/writelite.yue:654
      end -- shunt/writelite.yue:653
      local expected_content_len = payload_length + header_end_index -- shunt/writelite.yue:655
      if #content ~= expected_content_len then -- shunt/writelite.yue:656
        return "unexpected length: expected " .. tostring(expected_content_len) .. " but got " .. tostring(#content) -- shunt/writelite.yue:657
      end -- shunt/writelite.yue:656
      return nil -- shunt/writelite.yue:659
    end), -- shunt/writelite.yue:661
    pages = F('() => [writelite.Page]', function(self) -- shunt/writelite.yue:661
      return self._pages -- shunt/writelite.yue:662
    end), -- shunt/writelite.yue:664
    add = F('(writelite.Page) => <>', function(self, page) -- shunt/writelite.yue:664
      do -- shunt/writelite.yue:665
        local _obj_0 = self._pages -- shunt/writelite.yue:665
        _obj_0[#_obj_0 + 1] = page -- shunt/writelite.yue:665
      end -- shunt/writelite.yue:665
    end), -- shunt/writelite.yue:667
    write_to = F('(writelite.File) => <boolean, ?string>', function(self, file) -- shunt/writelite.yue:667
      local serialised_pages = Serialiser:serialise(self._pages) -- shunt/writelite.yue:668
      local header = T('writelite.JournalHeader', { -- shunt/writelite.yue:670
        format_version = FORMAT_VERSION, -- shunt/writelite.yue:670
        page_size = self._page_size, -- shunt/writelite.yue:671
        mode = 'delete', -- shunt/writelite.yue:672
        payload_length = #serialised_pages -- shunt/writelite.yue:673
      }) -- shunt/writelite.yue:669
      local _, err = file:write(table.concat({ -- shunt/writelite.yue:675
        JOURNAL_PRELUDE, -- shunt/writelite.yue:675
        Serialiser:serialise(header), -- shunt/writelite.yue:676
        serialised_pages -- shunt/writelite.yue:677
      })) -- shunt/writelite.yue:674
      if (err ~= nil) then -- shunt/writelite.yue:678
        return false, err -- shunt/writelite.yue:679
      end -- shunt/writelite.yue:678
      return true, nil -- shunt/writelite.yue:680
    end) -- shunt/writelite.yue:619
  } -- shunt/writelite.yue:619
  if _base_0.__index == nil then -- shunt/writelite.yue:619
    _base_0.__index = _base_0 -- shunt/writelite.yue:619
  end -- shunt/writelite.yue:680
  _class_0 = setmetatable({ -- shunt/writelite.yue:619
    __init = F('(number) => <>', function(self, _page_size) -- shunt/writelite.yue:620
      self._page_size = _page_size -- shunt/writelite.yue:620
      self._pages = T('[writelite.Page]', { }) -- shunt/writelite.yue:621
      self._header = T('?writelite.JournalHeader', nil) -- shunt/writelite.yue:622
    end), -- shunt/writelite.yue:619
    __base = _base_0, -- shunt/writelite.yue:619
    __name = "Journal" -- shunt/writelite.yue:619
  }, { -- shunt/writelite.yue:619
    __index = _base_0, -- shunt/writelite.yue:619
    __call = function(cls, ...) -- shunt/writelite.yue:619
      local _self_0 = setmetatable({ }, _base_0) -- shunt/writelite.yue:619
      cls.__init(_self_0, ...) -- shunt/writelite.yue:619
      return _self_0 -- shunt/writelite.yue:619
    end -- shunt/writelite.yue:619
  }) -- shunt/writelite.yue:619
  _base_0.__class = _class_0 -- shunt/writelite.yue:619
  local self = _class_0; -- shunt/writelite.yue:619
  self.load = F('(string, number) => <?writelite.Journal, ?string>', function(self, content, page_size) -- shunt/writelite.yue:624
    local journal -- shunt/writelite.yue:625
    do -- shunt/writelite.yue:625
      local _with_0 = Journal(page_size) -- shunt/writelite.yue:625
      local de = Deserialiser(content, #JOURNAL_PRELUDE + 1) -- shunt/writelite.yue:626
      local header = T('writelite.JournalHeader', de:parse()) -- shunt/writelite.yue:627
      local err = _with_0:_validate_raw(header, de.index - 1, content) -- shunt/writelite.yue:628
      if (err ~= nil) then -- shunt/writelite.yue:629
        return nil, err -- shunt/writelite.yue:630
      end -- shunt/writelite.yue:629
      local _list_0 = T('[writelite.Page]', de:parse()) -- shunt/writelite.yue:632
      for _index_0 = 1, #_list_0 do -- shunt/writelite.yue:632
        local page = _list_0[_index_0] -- shunt/writelite.yue:632
        _with_0:add(page) -- shunt/writelite.yue:633
      end -- shunt/writelite.yue:633
      journal = _with_0 -- shunt/writelite.yue:625
    end -- shunt/writelite.yue:625
    return journal, nil -- shunt/writelite.yue:634
  end) -- shunt/writelite.yue:624
  Journal = _class_0 -- shunt/writelite.yue:619
end -- shunt/writelite.yue:680
NIL_TAG = 0 -- shunt/writelite.yue:682
NIL_TAG_CHAR = string.char(NIL_TAG) -- shunt/writelite.yue:683
TRUE_TAG = 1 -- shunt/writelite.yue:684
TRUE_TAG_CHAR = string.char(TRUE_TAG) -- shunt/writelite.yue:685
FALSE_TAG = 2 -- shunt/writelite.yue:686
FALSE_TAG_CHAR = string.char(FALSE_TAG) -- shunt/writelite.yue:687
INT_TYPE = 3 -- shunt/writelite.yue:688
FLOAT_TYPE = 4 -- shunt/writelite.yue:689
FLOAT_TYPE_CHAR = string.char(FLOAT_TYPE) -- shunt/writelite.yue:690
STRING_TAG = 5 -- shunt/writelite.yue:691
STRING_TAG_CHAR = string.char(STRING_TAG) -- shunt/writelite.yue:692
TABLE_REF_TAG = 6 -- shunt/writelite.yue:693
TABLE_REF_TAG_CHAR = string.char(TABLE_REF_TAG) -- shunt/writelite.yue:694
TABLE_PAYLOAD_TAG = 7 -- shunt/writelite.yue:695
BLANK_TAG = 8 -- shunt/writelite.yue:696
BLANK_TAG_CHAR = string.char(BLANK_TAG) -- shunt/writelite.yue:697
TAG_MASK = 0xf -- shunt/writelite.yue:698
INT_LEN_SHIFT = 4 -- shunt/writelite.yue:700
INT_LEN_MASK = 0xf -- shunt/writelite.yue:701
do -- shunt/writelite.yue:703
  local _class_0 -- shunt/writelite.yue:703
  local _base_0 = { -- shunt/writelite.yue:703
    write = F('(any) => Self', function(self, to_write) -- shunt/writelite.yue:715
      self:write_impl(to_write, self.root_fragments) -- shunt/writelite.yue:716
      return self -- shunt/writelite.yue:717
    end), -- shunt/writelite.yue:719
    write_impl = F('(any, table) => <>', function(self, to_write, fragments) -- shunt/writelite.yue:719
      local _exp_0 = type(to_write) -- shunt/writelite.yue:720
      if 'nil' == _exp_0 then -- shunt/writelite.yue:721
        fragments[#fragments + 1] = NIL_TAG_CHAR -- shunt/writelite.yue:722
      elseif 'boolean' == _exp_0 then -- shunt/writelite.yue:723
        if to_write then -- shunt/writelite.yue:724
          fragments[#fragments + 1] = TRUE_TAG_CHAR -- shunt/writelite.yue:725
        else -- shunt/writelite.yue:727
          fragments[#fragments + 1] = FALSE_TAG_CHAR -- shunt/writelite.yue:727
        end -- shunt/writelite.yue:724
      elseif 'number' == _exp_0 then -- shunt/writelite.yue:728
        if is_float(to_write) then -- shunt/writelite.yue:729
          fragments[#fragments + 1] = FLOAT_TYPE_CHAR -- shunt/writelite.yue:730
          self:write_impl((tostring(to_write)), fragments) -- shunt/writelite.yue:732
          return -- shunt/writelite.yue:733
        end -- shunt/writelite.yue:729
        fragments[#fragments + 1] = 0 -- shunt/writelite.yue:735
        local tag_index = #fragments -- shunt/writelite.yue:736
        while to_write ~= 0 do -- shunt/writelite.yue:737
          fragments[#fragments + 1] = string.char(bit.band(to_write, 0xff)) -- shunt/writelite.yue:738
          to_write = bit.brshift(to_write, 8) -- shunt/writelite.yue:739
        end -- shunt/writelite.yue:739
        local len = #fragments - tag_index -- shunt/writelite.yue:741
        if len > INT_LEN_MASK then -- shunt/writelite.yue:742
          error("internal error: len too large " .. tostring(len) .. " > " .. tostring(INT_LEN_MASK)) -- shunt/writelite.yue:743
        end -- shunt/writelite.yue:742
        fragments[tag_index] = string.char(bit.bor(INT_TYPE, bit.blshift(len, INT_LEN_SHIFT))) -- shunt/writelite.yue:744
      elseif 'string' == _exp_0 then -- shunt/writelite.yue:746
        fragments[#fragments + 1] = STRING_TAG_CHAR -- shunt/writelite.yue:747
        self:write_impl(#to_write, fragments) -- shunt/writelite.yue:748
        fragments[#fragments + 1] = to_write -- shunt/writelite.yue:749
      elseif 'table' == _exp_0 then -- shunt/writelite.yue:750
        fragments[#fragments + 1] = TABLE_REF_TAG_CHAR -- shunt/writelite.yue:751
        do -- shunt/writelite.yue:754
          local ref = self.refs[to_write] -- shunt/writelite.yue:754
          if ref then -- shunt/writelite.yue:754
            self:write_impl(ref, fragments) -- shunt/writelite.yue:755
            return -- shunt/writelite.yue:756
          end -- shunt/writelite.yue:754
        end -- shunt/writelite.yue:754
        local ref = self.next_ref -- shunt/writelite.yue:758
        self:write_impl(ref, fragments) -- shunt/writelite.yue:759
        self.refs[to_write] = ref -- shunt/writelite.yue:760
        self.next_ref = self.next_ref + 1 -- shunt/writelite.yue:761
        local content_fragments = { } -- shunt/writelite.yue:763
        local num_pairs = 0 -- shunt/writelite.yue:764
        for k, v in pairs(to_write) do -- shunt/writelite.yue:765
          num_pairs = num_pairs + 1 -- shunt/writelite.yue:766
          self:write_impl(k, content_fragments) -- shunt/writelite.yue:767
          self:write_impl(v, content_fragments) -- shunt/writelite.yue:768
        end -- shunt/writelite.yue:768
        do -- shunt/writelite.yue:769
          local _obj_0 = self.tables -- shunt/writelite.yue:769
          _obj_0[#_obj_0 + 1] = { -- shunt/writelite.yue:770
            num_pairs = num_pairs, -- shunt/writelite.yue:770
            content_fragments = content_fragments -- shunt/writelite.yue:771
          } -- shunt/writelite.yue:769
        end -- shunt/writelite.yue:771
      else -- shunt/writelite.yue:773
        return error("cannot encode " .. tostring(type(to_write))) -- shunt/writelite.yue:773
      end -- shunt/writelite.yue:773
    end), -- shunt/writelite.yue:775
    finish = F('() => string', function(self) -- shunt/writelite.yue:775
      local fragments = { } -- shunt/writelite.yue:776
      fragments[#fragments + 1] = '\0' -- shunt/writelite.yue:779
      for i = 1, 4 do -- shunt/writelite.yue:780
        fragments[#fragments + 1] = BLANK_TAG_CHAR -- shunt/writelite.yue:781
      end -- shunt/writelite.yue:781
      self:write_impl(#self.tables, fragments) -- shunt/writelite.yue:783
      local _list_0 = self.tables -- shunt/writelite.yue:784
      for _index_0 = 1, #_list_0 do -- shunt/writelite.yue:784
        local table = _list_0[_index_0] -- shunt/writelite.yue:784
        local num_pairs, content_fragments = table.num_pairs, table.content_fragments -- shunt/writelite.yue:785
        self:write_impl(num_pairs, fragments) -- shunt/writelite.yue:786
        for _index_1 = 1, #content_fragments do -- shunt/writelite.yue:787
          local fragment = content_fragments[_index_1] -- shunt/writelite.yue:787
          fragments[#fragments + 1] = fragment -- shunt/writelite.yue:788
        end -- shunt/writelite.yue:788
      end -- shunt/writelite.yue:788
      local _list_1 = self.root_fragments -- shunt/writelite.yue:790
      for _index_0 = 1, #_list_1 do -- shunt/writelite.yue:790
        local fragment = _list_1[_index_0] -- shunt/writelite.yue:790
        fragments[#fragments + 1] = fragment -- shunt/writelite.yue:791
      end -- shunt/writelite.yue:791
      local len = 0 -- shunt/writelite.yue:793
      for _index_0 = 1, #fragments do -- shunt/writelite.yue:794
        local fragment = fragments[_index_0] -- shunt/writelite.yue:794
        len = len + (#fragment) -- shunt/writelite.yue:795
      end -- shunt/writelite.yue:795
      local len_fragments = { } -- shunt/writelite.yue:796
      self:write_impl(len, len_fragments) -- shunt/writelite.yue:797
      if #len_fragments > 5 then -- shunt/writelite.yue:798
        error("internal error: len fragments too large " .. tostring(#len_fragments) .. " > 5") -- shunt/writelite.yue:799
      end -- shunt/writelite.yue:798
      for i = 1, #len_fragments do -- shunt/writelite.yue:800
        fragments[i] = len_fragments[i] -- shunt/writelite.yue:801
      end -- shunt/writelite.yue:801
      local ret = table.concat(T('[string]', fragments)) -- shunt/writelite.yue:803
      if len ~= #ret then -- shunt/writelite.yue:804
        error("written len != actual len (" .. tostring(len) .. " != " .. tostring(#ret) .. ")") -- shunt/writelite.yue:805
      end -- shunt/writelite.yue:804
      return ret -- shunt/writelite.yue:806
    end) -- shunt/writelite.yue:703
  } -- shunt/writelite.yue:703
  if _base_0.__index == nil then -- shunt/writelite.yue:703
    _base_0.__index = _base_0 -- shunt/writelite.yue:703
  end -- shunt/writelite.yue:806
  _class_0 = setmetatable({ -- shunt/writelite.yue:703
    __init = F('() => <>', function(self) -- shunt/writelite.yue:704
      self.root_fragments = T('[string]', { }) -- shunt/writelite.yue:705
      self.next_ref = T('number', 0) -- shunt/writelite.yue:706
      self.tables = T('[{num_pairs: number, content_fragments: [string]}]', { }) -- shunt/writelite.yue:707
      self.refs = T('{table->number}', { }) -- shunt/writelite.yue:708
    end), -- shunt/writelite.yue:703
    __base = _base_0, -- shunt/writelite.yue:703
    __name = "Serialiser" -- shunt/writelite.yue:703
  }, { -- shunt/writelite.yue:703
    __index = _base_0, -- shunt/writelite.yue:703
    __call = function(cls, ...) -- shunt/writelite.yue:703
      local _self_0 = setmetatable({ }, _base_0) -- shunt/writelite.yue:703
      cls.__init(_self_0, ...) -- shunt/writelite.yue:703
      return _self_0 -- shunt/writelite.yue:703
    end -- shunt/writelite.yue:703
  }) -- shunt/writelite.yue:703
  _base_0.__class = _class_0 -- shunt/writelite.yue:703
  local self = _class_0; -- shunt/writelite.yue:703
  self.serialise = F('(any) => string', function(self, to_serialise) -- shunt/writelite.yue:710
    return Serialiser():write(to_serialise):finish() -- shunt/writelite.yue:713
  end) -- shunt/writelite.yue:710
  Serialiser = _class_0 -- shunt/writelite.yue:703
end -- shunt/writelite.yue:806
if 'native' == HOST then -- shunt/writelite.yue:809
  MAX_INT = 0x7fffffff -- shunt/writelite.yue:810
elseif 'minecraft' == HOST then -- shunt/writelite.yue:812
  MAX_INT = 0xffffffff -- shunt/writelite.yue:813
else -- shunt/writelite.yue:815
  MAX_INT = error("unknown host " .. tostring(HOST)) -- shunt/writelite.yue:815
end -- shunt/writelite.yue:815
MIN_INT = -MAX_INT - 1 -- shunt/writelite.yue:816
is_float = F('(number) -> boolean', function(num) -- shunt/writelite.yue:818
  if num > MAX_INT then -- shunt/writelite.yue:819
    return true -- shunt/writelite.yue:820
  end -- shunt/writelite.yue:819
  if num < MIN_INT then -- shunt/writelite.yue:821
    return true -- shunt/writelite.yue:822
  end -- shunt/writelite.yue:821
  local _, frac = math.modf(num) -- shunt/writelite.yue:824
  if frac ~= 0 then -- shunt/writelite.yue:825
    return true -- shunt/writelite.yue:826
  end -- shunt/writelite.yue:825
  return false -- shunt/writelite.yue:828
end) -- shunt/writelite.yue:818
declare_type('writelite.DeserialiserSource', 'string|writelite.File') -- shunt/writelite.yue:830
do -- shunt/writelite.yue:831
  local _class_0 -- shunt/writelite.yue:831
  local _base_0 = { -- shunt/writelite.yue:831
    parse = F('() => <any, boolean>', function(self) -- shunt/writelite.yue:845
      if self.raw == nil then -- shunt/writelite.yue:846
        self.raw = self:prepare_raw() -- shunt/writelite.yue:846
      end -- shunt/writelite.yue:846
      if self.index > #self.raw then -- shunt/writelite.yue:847
        return nil, true -- shunt/writelite.yue:848
      end -- shunt/writelite.yue:847
      local total_len = self:parse_value() -- shunt/writelite.yue:850
      if 'number' ~= type(total_len) then -- shunt/writelite.yue:851
        error('internal error: len field is not a number') -- shunt/writelite.yue:852
      end -- shunt/writelite.yue:851
      local num_tables = self:parse_value() -- shunt/writelite.yue:854
      if 'number' ~= type(num_tables) then -- shunt/writelite.yue:855
        error('internal error: num_tables field is not a number') -- shunt/writelite.yue:856
      end -- shunt/writelite.yue:855
      for ref = num_tables - 1, 0, -1 do -- shunt/writelite.yue:857
        self:parse_table_def(ref) -- shunt/writelite.yue:858
      end -- shunt/writelite.yue:858
      local ret = self:parse_value() -- shunt/writelite.yue:860
      local _list_0 = self.unresolved_table_refs -- shunt/writelite.yue:861
      for _index_0 = 1, #_list_0 do -- shunt/writelite.yue:861
        local _des_0 = _list_0[_index_0] -- shunt/writelite.yue:861
        local table, key, ref = _des_0.table, _des_0.key, _des_0.ref -- shunt/writelite.yue:861
        local value = self.tables_by_ref[ref] -- shunt/writelite.yue:862
        if not (value ~= nil) then -- shunt/writelite.yue:863
          error("internal error: unresolved reference " .. tostring(ref)) -- shunt/writelite.yue:864
        end -- shunt/writelite.yue:863
        table[key] = value -- shunt/writelite.yue:865
      end -- shunt/writelite.yue:865
      return ret, self.index > #self.raw -- shunt/writelite.yue:866
    end), -- shunt/writelite.yue:868
    parse_table_def = F('(number) => {}', function(self, ref) -- shunt/writelite.yue:868
      local num_pairs = self:parse_value() -- shunt/writelite.yue:869
      if 'number' ~= type(num_pairs) then -- shunt/writelite.yue:870
        error('internal error: num_pairs field is not a number') -- shunt/writelite.yue:871
      end -- shunt/writelite.yue:870
      local table = { } -- shunt/writelite.yue:873
      self.tables_by_ref[ref] = table -- shunt/writelite.yue:874
      for _ = 1, num_pairs do -- shunt/writelite.yue:876
        local key = self:parse_value() -- shunt/writelite.yue:877
        if TABLE_REF_TAG == self.raw:byte(self.index) then -- shunt/writelite.yue:879
          self.index = self.index + 1 -- shunt/writelite.yue:880
          ref = self:parse_value() -- shunt/writelite.yue:881
          do -- shunt/writelite.yue:882
            local _obj_0 = self.unresolved_table_refs -- shunt/writelite.yue:882
            _obj_0[#_obj_0 + 1] = { -- shunt/writelite.yue:883
              table = table, -- shunt/writelite.yue:883
              key = key, -- shunt/writelite.yue:884
              ref = ref -- shunt/writelite.yue:885
            } -- shunt/writelite.yue:882
          end -- shunt/writelite.yue:885
        else -- shunt/writelite.yue:887
          table[key] = self:parse_value() -- shunt/writelite.yue:887
        end -- shunt/writelite.yue:879
      end -- shunt/writelite.yue:887
      return table -- shunt/writelite.yue:875
    end), -- shunt/writelite.yue:889
    parse_value = F('() => any', function(self) -- shunt/writelite.yue:889
      if self.raw == nil then -- shunt/writelite.yue:890
        self.raw = self:prepare_raw() -- shunt/writelite.yue:890
      end -- shunt/writelite.yue:890
      local head -- shunt/writelite.yue:892
      while true do -- shunt/writelite.yue:893
        head = self.raw:byte(self.index) -- shunt/writelite.yue:894
        if not (head ~= nil) then -- shunt/writelite.yue:895
          error("internal error: unexpected EOF at index " .. tostring(self.index)) -- shunt/writelite.yue:896
        end -- shunt/writelite.yue:895
        if head ~= BLANK_TAG then -- shunt/writelite.yue:897
          break -- shunt/writelite.yue:898
        end -- shunt/writelite.yue:897
        self.index = self.index + 1 -- shunt/writelite.yue:899
      end -- shunt/writelite.yue:899
      self.index = self.index + 1 -- shunt/writelite.yue:900
      do -- shunt/writelite.yue:901
        local _exp_0 = bit.band(head, TAG_MASK) -- shunt/writelite.yue:901
        if NIL_TAG == _exp_0 then -- shunt/writelite.yue:902
          return nil -- shunt/writelite.yue:903
        elseif TRUE_TAG == _exp_0 then -- shunt/writelite.yue:904
          return true -- shunt/writelite.yue:905
        elseif FALSE_TAG == _exp_0 then -- shunt/writelite.yue:906
          return false -- shunt/writelite.yue:907
        elseif INT_TYPE == _exp_0 then -- shunt/writelite.yue:908
          local len = bit.band(INT_LEN_MASK, bit.brshift(head, INT_LEN_SHIFT)) -- shunt/writelite.yue:909
          local ret = 0 -- shunt/writelite.yue:913
          for i = 0, len - 1 do -- shunt/writelite.yue:914
            ret = bit.bor(ret, bit.blshift((self.raw:byte(self.index)), i * 8)) -- shunt/writelite.yue:915
            self.index = self.index + 1 -- shunt/writelite.yue:918
          end -- shunt/writelite.yue:918
          return ret -- shunt/writelite.yue:919
        elseif FLOAT_TYPE == _exp_0 then -- shunt/writelite.yue:920
          local raw = self:parse_value() -- shunt/writelite.yue:921
          if 'string' ~= type(raw) then -- shunt/writelite.yue:922
            error("internal error: cannot parse a " .. tostring(type(raw)) .. " into float[]") -- shunt/writelite.yue:923
          end -- shunt/writelite.yue:922
          return tonumber(raw) -- shunt/writelite.yue:924
        elseif STRING_TAG == _exp_0 then -- shunt/writelite.yue:925
          local len = self:parse_value() -- shunt/writelite.yue:926
          if 'number' ~= type(len) then -- shunt/writelite.yue:927
            error("internal error: cannot use a " .. tostring(type(len)) .. " as a string length") -- shunt/writelite.yue:928
          end -- shunt/writelite.yue:927
          local ret = self.raw:sub(self.index, self.index + len - 1) -- shunt/writelite.yue:929
          self.index = self.index + len -- shunt/writelite.yue:930
          return ret -- shunt/writelite.yue:931
        elseif TABLE_REF_TAG == _exp_0 then -- shunt/writelite.yue:932
          local index = self.index -- shunt/writelite.yue:933
          local ref = self:parse_value() -- shunt/writelite.yue:934
          if 'number' ~= type(ref) then -- shunt/writelite.yue:935
            error('internal error: ref is not a number') -- shunt/writelite.yue:936
          end -- shunt/writelite.yue:935
          local table = self.tables_by_ref[ref] -- shunt/writelite.yue:937
          if not (table ~= nil) then -- shunt/writelite.yue:938
            error("internal error: ref " .. tostring(ref) .. " invalid at " .. tostring(index)) -- shunt/writelite.yue:939
          end -- shunt/writelite.yue:938
          return table -- shunt/writelite.yue:940
        else -- shunt/writelite.yue:942
          print_serialised(self.raw) -- shunt/writelite.yue:942
          error(("unrecognised tag %02x at index %d"):format((bit.band(head, TAG_MASK)), self.index - 1)) -- shunt/writelite.yue:943
        end -- shunt/writelite.yue:944
      end -- shunt/writelite.yue:944
      return error('unreachable') -- shunt/writelite.yue:945
    end), -- shunt/writelite.yue:947
    prepare_raw = F('() => string', function(self) -- shunt/writelite.yue:947
      local _exp_0 = type(self.source) -- shunt/writelite.yue:948
      if 'string' == _exp_0 then -- shunt/writelite.yue:949
        return self.source -- shunt/writelite.yue:950
      else -- shunt/writelite.yue:952
        local raw_len_bytes, err = self.source:read(5) -- shunt/writelite.yue:952
        if (err ~= nil) then -- shunt/writelite.yue:953
          error("cannot read length from parse source: " .. tostring(err)) -- shunt/writelite.yue:954
        end -- shunt/writelite.yue:953
        local len = Deserialiser:deserialise_raw(raw_len_bytes) -- shunt/writelite.yue:955
        if 'number' ~= type(len) then -- shunt/writelite.yue:956
          error("cannot use " .. tostring(type(len)) .. " as length") -- shunt/writelite.yue:957
        end -- shunt/writelite.yue:956
        local _ -- shunt/writelite.yue:958
        _, err = self.source:seek('set', 0) -- shunt/writelite.yue:958
        if (err ~= nil) then -- shunt/writelite.yue:959
          error("cannot seek parse source: " .. tostring(err)) -- shunt/writelite.yue:960
        end -- shunt/writelite.yue:959
        local raw -- shunt/writelite.yue:961
        raw, err = self.source:read(len) -- shunt/writelite.yue:961
        if (err ~= nil) then -- shunt/writelite.yue:962
          error("cannot read parse source: " .. tostring(err)) -- shunt/writelite.yue:963
        end -- shunt/writelite.yue:962
        return raw -- shunt/writelite.yue:964
      end -- shunt/writelite.yue:964
    end) -- shunt/writelite.yue:831
  } -- shunt/writelite.yue:831
  if _base_0.__index == nil then -- shunt/writelite.yue:831
    _base_0.__index = _base_0 -- shunt/writelite.yue:831
  end -- shunt/writelite.yue:964
  _class_0 = setmetatable({ -- shunt/writelite.yue:831
    __init = F('(writelite.DeserialiserSource, ?number) => <>', function(self, source, index) -- shunt/writelite.yue:832
      if index == nil then -- shunt/writelite.yue:832
        index = 1 -- shunt/writelite.yue:832
      end -- shunt/writelite.yue:832
      self.source = source -- shunt/writelite.yue:832
      self.index = index -- shunt/writelite.yue:832
      self.tables_by_ref = T('{number->table}', { }) -- shunt/writelite.yue:833
      self.unresolved_table_refs = T('[{table: table, key: some, ref: number}]', { }) -- shunt/writelite.yue:834
    end), -- shunt/writelite.yue:831
    __base = _base_0, -- shunt/writelite.yue:831
    __name = "Deserialiser" -- shunt/writelite.yue:831
  }, { -- shunt/writelite.yue:831
    __index = _base_0, -- shunt/writelite.yue:831
    __call = function(cls, ...) -- shunt/writelite.yue:831
      local _self_0 = setmetatable({ }, _base_0) -- shunt/writelite.yue:831
      cls.__init(_self_0, ...) -- shunt/writelite.yue:831
      return _self_0 -- shunt/writelite.yue:831
    end -- shunt/writelite.yue:831
  }) -- shunt/writelite.yue:831
  _base_0.__class = _class_0 -- shunt/writelite.yue:831
  local self = _class_0; -- shunt/writelite.yue:831
  self.deserialise = F('(writelite.DeserialiserSource, ?number) => any', function(self, source, index) -- shunt/writelite.yue:836
    local v, _ = (Deserialiser(source, index)):parse() -- shunt/writelite.yue:837
    return v -- shunt/writelite.yue:839
  end) -- shunt/writelite.yue:836
  self.deserialise_raw = F('(string, ?number) => any', function(self, source, index) -- shunt/writelite.yue:841
    return (Deserialiser(source, index)):parse_value() -- shunt/writelite.yue:843
  end) -- shunt/writelite.yue:841
  Deserialiser = _class_0 -- shunt/writelite.yue:831
end -- shunt/writelite.yue:964
declare_type('writelite.PageOpts', [[{
  offset: number,
  content: string,
}]]) -- shunt/writelite.yue:966
declare_type('writelite.Page', [[{
  offset: number,
  content: string,
  checksum: number,
}]]) -- shunt/writelite.yue:970
do -- shunt/writelite.yue:975
  local _class_0 -- shunt/writelite.yue:975
  local _base_0 = { } -- shunt/writelite.yue:975
  if _base_0.__index == nil then -- shunt/writelite.yue:975
    _base_0.__index = _base_0 -- shunt/writelite.yue:975
  end -- shunt/writelite.yue:983
  _class_0 = setmetatable({ -- shunt/writelite.yue:975
    __init = F('(writelite.PageOpts) => <>', function(self, opts) -- shunt/writelite.yue:976
      local offset, content = opts.offset, opts.content -- shunt/writelite.yue:977
      self.offset = offset -- shunt/writelite.yue:981
      self.content = content -- shunt/writelite.yue:982
      self.checksum = Hasher:hash(content) -- shunt/writelite.yue:983
    end), -- shunt/writelite.yue:975
    __base = _base_0, -- shunt/writelite.yue:975
    __name = "Page" -- shunt/writelite.yue:975
  }, { -- shunt/writelite.yue:975
    __index = _base_0, -- shunt/writelite.yue:975
    __call = function(cls, ...) -- shunt/writelite.yue:975
      local _self_0 = setmetatable({ }, _base_0) -- shunt/writelite.yue:975
      cls.__init(_self_0, ...) -- shunt/writelite.yue:975
      return _self_0 -- shunt/writelite.yue:975
    end -- shunt/writelite.yue:975
  }) -- shunt/writelite.yue:975
  _base_0.__class = _class_0 -- shunt/writelite.yue:975
  Page = _class_0 -- shunt/writelite.yue:975
end -- shunt/writelite.yue:983
MAX_HASH = 99999999 -- shunt/writelite.yue:985
assert(MAX_INT >= MAX_HASH) -- shunt/writelite.yue:986
declare_type('writelite.Hasher', [[{
  hash: (any) => number,
  write: (string) => <>,
  finish: () => number,
}]]) -- shunt/writelite.yue:988
do -- shunt/writelite.yue:993
  local _class_0 -- shunt/writelite.yue:993
  local _base_0 = { -- shunt/writelite.yue:993
    write = F('(any) => Self', function(self, to_write) -- shunt/writelite.yue:1002
      do -- shunt/writelite.yue:1003
        local _exp_0 = type(to_write) -- shunt/writelite.yue:1003
        if 'boolean' == _exp_0 then -- shunt/writelite.yue:1004
          if to_write then -- shunt/writelite.yue:1005
            self:_add(997 * 127) -- shunt/writelite.yue:1006
          else -- shunt/writelite.yue:1008
            self:_add(997 * 13) -- shunt/writelite.yue:1008
          end -- shunt/writelite.yue:1005
        elseif 'number' == _exp_0 then -- shunt/writelite.yue:1009
          self:_add(997 * (8302197 + to_write)) -- shunt/writelite.yue:1010
        elseif 'string' == _exp_0 then -- shunt/writelite.yue:1011
          self:write(1 + #to_write) -- shunt/writelite.yue:1012
          local CHUNK_SIZE = 100 -- shunt/writelite.yue:1014
          for i = 1, to_write:len(), CHUNK_SIZE do -- shunt/writelite.yue:1015
            local start_idx = 1 + (i - 1) * CHUNK_SIZE -- shunt/writelite.yue:1016
            local end_idx = i * CHUNK_SIZE -- shunt/writelite.yue:1017
            local _list_0 = { -- shunt/writelite.yue:1018
              to_write:byte(start_idx, end_idx) -- shunt/writelite.yue:1018
            } -- shunt/writelite.yue:1018
            for _index_0 = 1, #_list_0 do -- shunt/writelite.yue:1018
              local byte = _list_0[_index_0] -- shunt/writelite.yue:1018
              self:_add(997 * byte) -- shunt/writelite.yue:1019
            end -- shunt/writelite.yue:1019
          end -- shunt/writelite.yue:1019
        elseif 'table' == _exp_0 then -- shunt/writelite.yue:1020
          local entries -- shunt/writelite.yue:1021
          do -- shunt/writelite.yue:1021
            local _with_0 = { } -- shunt/writelite.yue:1021
            for key, value in pairs(to_write) do -- shunt/writelite.yue:1022
              _with_0[#_with_0 + 1] = { -- shunt/writelite.yue:1023
                key = key, -- shunt/writelite.yue:1023
                value = value -- shunt/writelite.yue:1023
              } -- shunt/writelite.yue:1023
            end -- shunt/writelite.yue:1023
            entries = _with_0 -- shunt/writelite.yue:1021
          end -- shunt/writelite.yue:1021
          self:_add(1 + #entries) -- shunt/writelite.yue:1024
          table.sort(entries, function(a, b) -- shunt/writelite.yue:1025
            return a.key < b.key -- shunt/writelite.yue:1025
          end) -- shunt/writelite.yue:1025
          for _index_0 = 1, #entries do -- shunt/writelite.yue:1026
            local _des_0 = entries[_index_0] -- shunt/writelite.yue:1026
            local key, value = _des_0.key, _des_0.value -- shunt/writelite.yue:1026
            self:write(key) -- shunt/writelite.yue:1027
            self:write(value) -- shunt/writelite.yue:1028
          end -- shunt/writelite.yue:1028
        else -- shunt/writelite.yue:1030
          error("cannot hash a " .. tostring(type(to_write))) -- shunt/writelite.yue:1030
        end -- shunt/writelite.yue:1030
      end -- shunt/writelite.yue:1030
      return self -- shunt/writelite.yue:1031
    end), -- shunt/writelite.yue:1033
    _add = F('(number) => <>', function(self, num) -- shunt/writelite.yue:1033
      self._current = self._current * num -- shunt/writelite.yue:1034
      self._current = self._current % MAX_HASH -- shunt/writelite.yue:1035
    end), -- shunt/writelite.yue:1037
    finish = F('() => number', function(self) -- shunt/writelite.yue:1037
      return self._current -- shunt/writelite.yue:1038
    end) -- shunt/writelite.yue:993
  } -- shunt/writelite.yue:993
  if _base_0.__index == nil then -- shunt/writelite.yue:993
    _base_0.__index = _base_0 -- shunt/writelite.yue:993
  end -- shunt/writelite.yue:1038
  _class_0 = setmetatable({ -- shunt/writelite.yue:993
    __init = F('() => <>', function(self) -- shunt/writelite.yue:994
      self._current = 7 -- shunt/writelite.yue:995
    end), -- shunt/writelite.yue:993
    __base = _base_0, -- shunt/writelite.yue:993
    __name = "Hasher" -- shunt/writelite.yue:993
  }, { -- shunt/writelite.yue:993
    __index = _base_0, -- shunt/writelite.yue:993
    __call = function(cls, ...) -- shunt/writelite.yue:993
      local _self_0 = setmetatable({ }, _base_0) -- shunt/writelite.yue:993
      cls.__init(_self_0, ...) -- shunt/writelite.yue:993
      return _self_0 -- shunt/writelite.yue:993
    end -- shunt/writelite.yue:993
  }) -- shunt/writelite.yue:993
  _base_0.__class = _class_0 -- shunt/writelite.yue:993
  local self = _class_0; -- shunt/writelite.yue:993
  self.hash = F('(any) => number', function(self, to_hash) -- shunt/writelite.yue:997
    return Hasher():write(to_hash):finish() -- shunt/writelite.yue:1000
  end) -- shunt/writelite.yue:997
  Hasher = _class_0 -- shunt/writelite.yue:993
end -- shunt/writelite.yue:1038
print_serialised = F('(string) -> <>', function(serialised) -- shunt/writelite.yue:1040
  local indices -- shunt/writelite.yue:1041
  do -- shunt/writelite.yue:1041
    local _accum_0 = { } -- shunt/writelite.yue:1041
    local _len_0 = 1 -- shunt/writelite.yue:1041
    for i = 1, #serialised do -- shunt/writelite.yue:1041
      _accum_0[_len_0] = ('%02d'):format(i) -- shunt/writelite.yue:1041
      _len_0 = _len_0 + 1 -- shunt/writelite.yue:1041
    end -- shunt/writelite.yue:1041
    indices = _accum_0 -- shunt/writelite.yue:1041
  end -- shunt/writelite.yue:1041
  local bytes -- shunt/writelite.yue:1042
  do -- shunt/writelite.yue:1042
    local _with_0 = { } -- shunt/writelite.yue:1042
    for i = 1, #serialised do -- shunt/writelite.yue:1043
      _with_0[#_with_0 + 1] = ('%02x'):format(serialised:byte(i)) -- shunt/writelite.yue:1044
    end -- shunt/writelite.yue:1044
    bytes = _with_0 -- shunt/writelite.yue:1042
  end -- shunt/writelite.yue:1042
  local is_printable -- shunt/writelite.yue:1045
  is_printable = function(c) -- shunt/writelite.yue:1045
    return 'a' <= c and c <= 'z' or 'A' <= c and c <= 'Z' or '0' <= c and c <= '9' or c == '-' or c == '+' or c == '_' -- shunt/writelite.yue:1051
  end -- shunt/writelite.yue:1045
  local chars -- shunt/writelite.yue:1052
  do -- shunt/writelite.yue:1052
    local _with_0 = { } -- shunt/writelite.yue:1052
    for i = 1, #serialised do -- shunt/writelite.yue:1053
      local byte = serialised:byte(i) -- shunt/writelite.yue:1054
      if is_printable(string.char(byte)) then -- shunt/writelite.yue:1055
        _with_0[#_with_0 + 1] = ('% 2s'):format(serialised:sub(i, i)) -- shunt/writelite.yue:1056
      else -- shunt/writelite.yue:1058
        _with_0[#_with_0 + 1] = ('%02x'):format(byte) -- shunt/writelite.yue:1058
      end -- shunt/writelite.yue:1055
    end -- shunt/writelite.yue:1058
    chars = _with_0 -- shunt/writelite.yue:1052
  end -- shunt/writelite.yue:1052
  assert(#indices == #bytes) -- shunt/writelite.yue:1059
  assert(#indices == #chars) -- shunt/writelite.yue:1060
  local PER_LINE = 25 -- shunt/writelite.yue:1061
  local first = true -- shunt/writelite.yue:1062
  for i = 1, #indices, PER_LINE do -- shunt/writelite.yue:1063
    if first then -- shunt/writelite.yue:1064
      first = false -- shunt/writelite.yue:1065
    else -- shunt/writelite.yue:1067
      print() -- shunt/writelite.yue:1067
    end -- shunt/writelite.yue:1064
    print(table.concat((function() -- shunt/writelite.yue:1068
      local _accum_0 = { } -- shunt/writelite.yue:1068
      local _len_0 = 1 -- shunt/writelite.yue:1068
      local _max_0 = i + PER_LINE - 1 -- shunt/writelite.yue:1068
      for _index_0 = i, _max_0 < 0 and #indices + _max_0 or _max_0 do -- shunt/writelite.yue:1068
        local i = indices[_index_0] -- shunt/writelite.yue:1068
        _accum_0[_len_0] = i -- shunt/writelite.yue:1068
        _len_0 = _len_0 + 1 -- shunt/writelite.yue:1068
      end -- shunt/writelite.yue:1068
      return _accum_0 -- shunt/writelite.yue:1068
    end)(), ' ')) -- shunt/writelite.yue:1068
    print(('-'):rep(3 * (PER_LINE + 1) - 1)) -- shunt/writelite.yue:1069
    print(table.concat((function() -- shunt/writelite.yue:1070
      local _accum_0 = { } -- shunt/writelite.yue:1070
      local _len_0 = 1 -- shunt/writelite.yue:1070
      local _max_0 = i + PER_LINE - 1 -- shunt/writelite.yue:1070
      for _index_0 = i, _max_0 < 0 and #bytes + _max_0 or _max_0 do -- shunt/writelite.yue:1070
        local i = bytes[_index_0] -- shunt/writelite.yue:1070
        _accum_0[_len_0] = i -- shunt/writelite.yue:1070
        _len_0 = _len_0 + 1 -- shunt/writelite.yue:1070
      end -- shunt/writelite.yue:1070
      return _accum_0 -- shunt/writelite.yue:1070
    end)(), ' ')) -- shunt/writelite.yue:1070
    print(table.concat((function() -- shunt/writelite.yue:1071
      local _accum_0 = { } -- shunt/writelite.yue:1071
      local _len_0 = 1 -- shunt/writelite.yue:1071
      local _max_0 = i + PER_LINE - 1 -- shunt/writelite.yue:1071
      for _index_0 = i, _max_0 < 0 and #chars + _max_0 or _max_0 do -- shunt/writelite.yue:1071
        local i = chars[_index_0] -- shunt/writelite.yue:1071
        _accum_0[_len_0] = i -- shunt/writelite.yue:1071
        _len_0 = _len_0 + 1 -- shunt/writelite.yue:1071
      end -- shunt/writelite.yue:1071
      return _accum_0 -- shunt/writelite.yue:1071
    end)(), ' ')) -- shunt/writelite.yue:1071
  end -- shunt/writelite.yue:1071
end) -- shunt/writelite.yue:1040
spec(function() -- shunt/writelite.yue:1073
  local TestFs, TestFile -- shunt/writelite.yue:1074
  local clone, describe, it, matchers -- shunt/writelite.yue:0
  do -- shunt/writelite.yue:0
    local _obj_0 = require('shunt.spec') -- shunt/writelite.yue:0
    clone, describe, it, matchers = _obj_0.clone, _obj_0.describe, _obj_0.it, _obj_0.matchers -- shunt/writelite.yue:0
  end -- shunt/writelite.yue:0
  local deep_eq, each_value, eq, errors, has_fields, len, lt, matches, near, no_errors, not_ = matchers.deep_eq, matchers.each_value, matchers.eq, matchers.errors, matchers.has_fields, matchers.len, matchers.lt, matchers.matches, matchers.near, matchers.no_errors, matchers.not_ -- shunt/writelite.yue:1080
  declare_type('writelite.FileSpec', [[{
    content: string,
  }]]) -- shunt/writelite.yue:1082
  do -- shunt/writelite.yue:1085
    local _class_0 -- shunt/writelite.yue:1085
    local _base_0 = { -- shunt/writelite.yue:1085
      open = F('(string, writelite.FileMode) => <?writelite.File, ?string, ?number>', function(self, path, mode) -- shunt/writelite.yue:1090
        if mode:match('^w') then -- shunt/writelite.yue:1091
          local file = TestFile('') -- shunt/writelite.yue:1092
          file:open() -- shunt/writelite.yue:1093
          self.files[path] = file -- shunt/writelite.yue:1094
          return file, nil, nil -- shunt/writelite.yue:1095
        else -- shunt/writelite.yue:1096
          do -- shunt/writelite.yue:1096
            local file = self.files[path] -- shunt/writelite.yue:1096
            if file then -- shunt/writelite.yue:1096
              file:open() -- shunt/writelite.yue:1097
              return file, nil, nil -- shunt/writelite.yue:1098
            else -- shunt/writelite.yue:1100
              return nil, tostring(path) .. ": No such file or directory", 2 -- shunt/writelite.yue:1100
            end -- shunt/writelite.yue:1096
          end -- shunt/writelite.yue:1096
        end -- shunt/writelite.yue:1091
      end), -- shunt/writelite.yue:1102
      remove = F('(string) => boolean', function(self, path) -- shunt/writelite.yue:1102
        local file = self.files[path] -- shunt/writelite.yue:1103
        if not (file ~= nil) then -- shunt/writelite.yue:1104
          return false -- shunt/writelite.yue:1105
        end -- shunt/writelite.yue:1104
        if not file.closed then -- shunt/writelite.yue:1107
          error('cannot remove open file') -- shunt/writelite.yue:1108
        end -- shunt/writelite.yue:1107
        local _obj_0 = self.removed -- shunt/writelite.yue:1110
        if _obj_0[path] == nil then -- shunt/writelite.yue:1110
          _obj_0[path] = { } -- shunt/writelite.yue:1110
        end -- shunt/writelite.yue:1110
        do -- shunt/writelite.yue:1111
          local _obj_1 = self.removed[path] -- shunt/writelite.yue:1111
          _obj_1[#_obj_1 + 1] = file -- shunt/writelite.yue:1111
        end -- shunt/writelite.yue:1111
        self.files[path] = nil -- shunt/writelite.yue:1112
        return true -- shunt/writelite.yue:1113
      end), -- shunt/writelite.yue:1115
      reinstate = F('(string) => <>', function(self, path) -- shunt/writelite.yue:1115
        local versions = self.removed[path] -- shunt/writelite.yue:1116
        if not (versions ~= nil) then -- shunt/writelite.yue:1117
          error("cannot reinstate " .. tostring(path) .. ": never deleted") -- shunt/writelite.yue:1118
        end -- shunt/writelite.yue:1117
        self.files[path] = versions[#versions] -- shunt/writelite.yue:1119
      end) -- shunt/writelite.yue:1085
    } -- shunt/writelite.yue:1085
    if _base_0.__index == nil then -- shunt/writelite.yue:1085
      _base_0.__index = _base_0 -- shunt/writelite.yue:1085
    end -- shunt/writelite.yue:1119
    _class_0 = setmetatable({ -- shunt/writelite.yue:1085
      __init = F('(?{string->writelite.FileSpec}) => <>', function(self, files) -- shunt/writelite.yue:1086
        if files == nil then -- shunt/writelite.yue:1086
          files = { } -- shunt/writelite.yue:1086
        end -- shunt/writelite.yue:1086
        do -- shunt/writelite.yue:1087
          local _tbl_0 = { } -- shunt/writelite.yue:1087
          for file, _des_0 in pairs(files) do -- shunt/writelite.yue:1087
            local content = _des_0.content -- shunt/writelite.yue:1087
            _tbl_0[file] = TestFile(content) -- shunt/writelite.yue:1087
          end -- shunt/writelite.yue:1087
          self.files = _tbl_0 -- shunt/writelite.yue:1087
        end -- shunt/writelite.yue:1087
        self.removed = T('{string->[writelite.File]}', { }) -- shunt/writelite.yue:1088
      end), -- shunt/writelite.yue:1085
      __base = _base_0, -- shunt/writelite.yue:1085
      __name = "TestFs" -- shunt/writelite.yue:1085
    }, { -- shunt/writelite.yue:1085
      __index = _base_0, -- shunt/writelite.yue:1085
      __call = function(cls, ...) -- shunt/writelite.yue:1085
        local _self_0 = setmetatable({ }, _base_0) -- shunt/writelite.yue:1085
        cls.__init(_self_0, ...) -- shunt/writelite.yue:1085
        return _self_0 -- shunt/writelite.yue:1085
      end -- shunt/writelite.yue:1085
    }) -- shunt/writelite.yue:1085
    _base_0.__class = _class_0 -- shunt/writelite.yue:1085
    TestFs = _class_0 -- shunt/writelite.yue:1085
  end -- shunt/writelite.yue:1119
  do -- shunt/writelite.yue:1121
    local _class_0 -- shunt/writelite.yue:1121
    local _base_0 = { -- shunt/writelite.yue:1121
      content = F('() => string', function(self) -- shunt/writelite.yue:1129
        return table.concat((function() -- shunt/writelite.yue:1130
          local _with_0 = { } -- shunt/writelite.yue:1130
          local i = 0 -- shunt/writelite.yue:1131
          while (self.content_bytes[i] ~= nil) do -- shunt/writelite.yue:1132
            _with_0[#_with_0 + 1] = string.char(self.content_bytes[i]) -- shunt/writelite.yue:1133
            i = i + 1 -- shunt/writelite.yue:1134
          end -- shunt/writelite.yue:1134
          return _with_0 -- shunt/writelite.yue:1130
        end)()) -- shunt/writelite.yue:1134
      end), -- shunt/writelite.yue:1136
      open = F('() => <>', function(self) -- shunt/writelite.yue:1136
        if self.closed then -- shunt/writelite.yue:1137
          self.cursor = 0 -- shunt/writelite.yue:1138
        end -- shunt/writelite.yue:1137
        self.closed = false -- shunt/writelite.yue:1139
      end), -- shunt/writelite.yue:1141
      read = F('("*a"|number) => <?string, ?string>', function(self, amount) -- shunt/writelite.yue:1141
        if self.closed then -- shunt/writelite.yue:1142
          return nil, 'closed' -- shunt/writelite.yue:1143
        end -- shunt/writelite.yue:1142
        local content = self:content() -- shunt/writelite.yue:1144
        local end_index -- shunt/writelite.yue:1145
        if '*a' == amount then -- shunt/writelite.yue:1146
          end_index = #content -- shunt/writelite.yue:1147
        else -- shunt/writelite.yue:1149
          end_index = self.cursor + amount -- shunt/writelite.yue:1149
        end -- shunt/writelite.yue:1149
        if end_index > #content then -- shunt/writelite.yue:1150
          end_index = #content -- shunt/writelite.yue:1151
        end -- shunt/writelite.yue:1150
        if self.cursor == #content then -- shunt/writelite.yue:1152
          return nil, nil -- shunt/writelite.yue:1153
        end -- shunt/writelite.yue:1152
        local cursor = self.cursor -- shunt/writelite.yue:1154
        self.cursor = end_index -- shunt/writelite.yue:1155
        return (self:content():sub(1 + cursor, end_index)), nil -- shunt/writelite.yue:1156
      end), -- shunt/writelite.yue:1158
      write = F('(string) => ?string', function(self, to_write) -- shunt/writelite.yue:1158
        if self.closed then -- shunt/writelite.yue:1159
          return 'closed' -- shunt/writelite.yue:1160
        end -- shunt/writelite.yue:1159
        for i = 1, #to_write do -- shunt/writelite.yue:1161
          self.content_bytes[self.cursor] = to_write:byte(i) -- shunt/writelite.yue:1162
          self.cursor = self.cursor + 1 -- shunt/writelite.yue:1163
        end -- shunt/writelite.yue:1163
        return nil -- shunt/writelite.yue:1164
      end), -- shunt/writelite.yue:1166
      seek = F('(Whence, ?number) => <?number, ?string>', function(self, whence, num) -- shunt/writelite.yue:1166
        if self.closed then -- shunt/writelite.yue:1167
          return nil, 'closed' -- shunt/writelite.yue:1168
        end -- shunt/writelite.yue:1167
        local _ -- shunt/writelite.yue:1169
        num, _ = math.modf(num, 1) -- shunt/writelite.yue:1169
        if 'set' == whence then -- shunt/writelite.yue:1171
          self.cursor = num -- shunt/writelite.yue:1172
        elseif 'cur' == whence then -- shunt/writelite.yue:1173
          self.cursor = self.cursor + num -- shunt/writelite.yue:1174
        elseif 'end' == whence then -- shunt/writelite.yue:1175
          self.cursor = #self.content_bytes + num -- shunt/writelite.yue:1176
        else -- shunt/writelite.yue:1178
          error("internal error: unexpected whence " .. tostring(whence)) -- shunt/writelite.yue:1178
        end -- shunt/writelite.yue:1178
        return self.cursor, nil -- shunt/writelite.yue:1179
      end), -- shunt/writelite.yue:1181
      setvbuf = F('("full") => <>', function(self, _mode) -- shunt/writelite.yue:1181
        if self.closed then -- shunt/writelite.yue:1182
          return error('closed') -- shunt/writelite.yue:1183
        end -- shunt/writelite.yue:1182
      end), -- shunt/writelite.yue:1185
      flush = F('() => <boolean, ?string>', function(self) -- shunt/writelite.yue:1185
        return true, nil -- shunt/writelite.yue:1186
      end), -- shunt/writelite.yue:1188
      close = F('() => <boolean, ?string>', function(self) -- shunt/writelite.yue:1188
        if self.closed then -- shunt/writelite.yue:1189
          return false, 'closed' -- shunt/writelite.yue:1190
        end -- shunt/writelite.yue:1189
        self.closed = true -- shunt/writelite.yue:1191
        return true, nil -- shunt/writelite.yue:1192
      end) -- shunt/writelite.yue:1121
    } -- shunt/writelite.yue:1121
    if _base_0.__index == nil then -- shunt/writelite.yue:1121
      _base_0.__index = _base_0 -- shunt/writelite.yue:1121
    end -- shunt/writelite.yue:1192
    _class_0 = setmetatable({ -- shunt/writelite.yue:1121
      __init = F('(string) => <>', function(self, content) -- shunt/writelite.yue:1122
        self.cursor = 0 -- shunt/writelite.yue:1123
        do -- shunt/writelite.yue:1124
          local _with_0 = { } -- shunt/writelite.yue:1124
          for i = 1, #content do -- shunt/writelite.yue:1125
            _with_0[i - 1] = content:byte(i) -- shunt/writelite.yue:1126
          end -- shunt/writelite.yue:1126
          self.content_bytes = _with_0 -- shunt/writelite.yue:1124
        end -- shunt/writelite.yue:1124
        self.closed = true -- shunt/writelite.yue:1127
      end), -- shunt/writelite.yue:1121
      __base = _base_0, -- shunt/writelite.yue:1121
      __name = "TestFile" -- shunt/writelite.yue:1121
    }, { -- shunt/writelite.yue:1121
      __index = _base_0, -- shunt/writelite.yue:1121
      __call = function(cls, ...) -- shunt/writelite.yue:1121
        local _self_0 = setmetatable({ }, _base_0) -- shunt/writelite.yue:1121
        cls.__init(_self_0, ...) -- shunt/writelite.yue:1121
        return _self_0 -- shunt/writelite.yue:1121
      end -- shunt/writelite.yue:1121
    }) -- shunt/writelite.yue:1121
    _base_0.__class = _class_0 -- shunt/writelite.yue:1121
    TestFile = _class_0 -- shunt/writelite.yue:1121
  end -- shunt/writelite.yue:1192
  describe('writelite.Writelite', function() -- shunt/writelite.yue:1194
    describe('\\mode', function() -- shunt/writelite.yue:1195
      local modes = T('[writelite.Mode]', { -- shunt/writelite.yue:1197
        'blob' -- shunt/writelite.yue:1197
      }) -- shunt/writelite.yue:1196
      return it('forbids explicit reassignment', function() -- shunt/writelite.yue:1199
        for _index_0 = 1, #modes do -- shunt/writelite.yue:1200
          local mode_a = modes[_index_0] -- shunt/writelite.yue:1200
          for _index_1 = 1, #modes do -- shunt/writelite.yue:1201
            local mode_b = modes[_index_1] -- shunt/writelite.yue:1201
            print("mode_a=" .. tostring(mode_a) .. ", mode_b=" .. tostring(mode_b)) -- shunt/writelite.yue:1202
            local writelite = Writelite('database.db', TestFs()) -- shunt/writelite.yue:1203
            writelite:mode(mode_a); -- shunt/writelite.yue:1204
            require('shunt.spec')._assert_that([=[(-> writelite\mode mode_b)]=], (function() -- shunt/writelite.yue:1205
              return writelite:mode(mode_b) -- shunt/writelite.yue:1205
            end), (errors(matches('cannot change mode once set'))), tostring("shunt/writelite.yue") .. ":" .. tostring(1205)) -- shunt/writelite.yue:1205
          end -- shunt/writelite.yue:1205
        end -- shunt/writelite.yue:1205
      end) -- shunt/writelite.yue:1205
    end) -- shunt/writelite.yue:1195
    describe('\\page_size', function() -- shunt/writelite.yue:1213
      it('forbids explicit reassignment', function() -- shunt/writelite.yue:1214
        local writelite = Writelite('database.db', TestFs()) -- shunt/writelite.yue:1215
        writelite:page_size(MIN_PAGE_SIZE); -- shunt/writelite.yue:1216
        return require('shunt.spec')._assert_that([=[(-> writelite\page_size MIN_PAGE_SIZE)]=], (function() -- shunt/writelite.yue:1217
          return writelite:page_size(MIN_PAGE_SIZE) -- shunt/writelite.yue:1217
        end), (errors(matches('cannot change page size once set'))), tostring("shunt/writelite.yue") .. ":" .. tostring(1217)) -- shunt/writelite.yue:1217
      end) -- shunt/writelite.yue:1214
      it('forbids too-small page sizes', function() -- shunt/writelite.yue:1219
        local _with_0 = Writelite('database.db', TestFs()) -- shunt/writelite.yue:1220
        require('shunt.spec')._assert_that([=[(-> \page_size MIN_PAGE_SIZE - 1)]=], (function() -- shunt/writelite.yue:1221
          return _with_0:page_size(MIN_PAGE_SIZE - 1) -- shunt/writelite.yue:1221
        end), (errors(matches("cannot change page size to " .. tostring(MIN_PAGE_SIZE - 1) .. ": minimum is " .. tostring(MIN_PAGE_SIZE)))), tostring("shunt/writelite.yue") .. ":" .. tostring(1221)) -- shunt/writelite.yue:1221
        return _with_0 -- shunt/writelite.yue:1220
      end) -- shunt/writelite.yue:1219
      it('requires integers', function() -- shunt/writelite.yue:1223
        local _with_0 = Writelite('database.db', TestFs()) -- shunt/writelite.yue:1224
        require('shunt.spec')._assert_that([=[(-> \page_size 1234.5)]=], (function() -- shunt/writelite.yue:1225
          return _with_0:page_size(1234.5) -- shunt/writelite.yue:1225
        end), (errors(matches('cannot change page size to 1234%.5: not an integer'))), tostring("shunt/writelite.yue") .. ":" .. tostring(1225)) -- shunt/writelite.yue:1225
        return _with_0 -- shunt/writelite.yue:1224
      end) -- shunt/writelite.yue:1223
      it('requires powers of two', function() -- shunt/writelite.yue:1227
        for i = 10, 30 do -- shunt/writelite.yue:1228
          print("testing " .. tostring(i) .. "...") -- shunt/writelite.yue:1229
          do -- shunt/writelite.yue:1230
            local _with_0 = Writelite('database.db', TestFs()) -- shunt/writelite.yue:1230
            require('shunt.spec')._expect_that([=[(-> \page_size bit.blshift 1, i)]=], (function() -- shunt/writelite.yue:1231
              return _with_0:page_size(bit.blshift(1, i)) -- shunt/writelite.yue:1231
            end), (no_errors()), tostring("shunt/writelite.yue") .. ":" .. tostring(1231)) -- shunt/writelite.yue:1231
          end -- shunt/writelite.yue:1230
        end -- shunt/writelite.yue:1231
        local _with_0 = Writelite('database.db', TestFs()) -- shunt/writelite.yue:1233
        require('shunt.spec')._expect_that([=[(-> \page_size 2000)]=], (function() -- shunt/writelite.yue:1234
          return _with_0:page_size(2000) -- shunt/writelite.yue:1234
        end), (errors(matches('cannot change page size to 2000: not a power of 2'))), tostring("shunt/writelite.yue") .. ":" .. tostring(1234)) -- shunt/writelite.yue:1234
        return _with_0 -- shunt/writelite.yue:1233
      end) -- shunt/writelite.yue:1227
      return it('forbids implicit reassignment', function() -- shunt/writelite.yue:1236
        local fs = TestFs() -- shunt/writelite.yue:1237
        do -- shunt/writelite.yue:1238
          local _with_0 = Writelite('database.db', fs) -- shunt/writelite.yue:1238
          _with_0:mode('blob') -- shunt/writelite.yue:1239
          _with_0:page_size(bit.blshift(1, 13)) -- shunt/writelite.yue:1240
          local _, err = _with_0:open(); -- shunt/writelite.yue:1241
          require('shunt.spec')._assert_that([=[err]=], err, (eq(nil)), tostring("shunt/writelite.yue") .. ":" .. tostring(1242)) -- shunt/writelite.yue:1242
          _, err = _with_0:close(); -- shunt/writelite.yue:1243
          require('shunt.spec')._assert_that([=[err]=], err, (eq(nil)), tostring("shunt/writelite.yue") .. ":" .. tostring(1244)) -- shunt/writelite.yue:1244
        end -- shunt/writelite.yue:1238
        local _with_0 = Writelite('database.db', fs) -- shunt/writelite.yue:1245
        _with_0:mode('blob') -- shunt/writelite.yue:1246
        _with_0:page_size(bit.blshift(1, 20)) -- shunt/writelite.yue:1247
        local ok, err = _with_0:open(); -- shunt/writelite.yue:1248
        require('shunt.spec')._expect_that([=[ok]=], ok, (eq(false)), tostring("shunt/writelite.yue") .. ":" .. tostring(1249)); -- shunt/writelite.yue:1249
        require('shunt.spec')._expect_that([=[err]=], err, (matches('page size mismatch')), tostring("shunt/writelite.yue") .. ":" .. tostring(1250)) -- shunt/writelite.yue:1250
        return _with_0 -- shunt/writelite.yue:1245
      end) -- shunt/writelite.yue:1250
    end) -- shunt/writelite.yue:1213
    describe('\\max_cached_pages', function() -- shunt/writelite.yue:1252
      local tests = { -- shunt/writelite.yue:1254
        { -- shunt/writelite.yue:1254
          it = 'accepts valid numbers', -- shunt/writelite.yue:1254
          max_cached_pages = 256 -- shunt/writelite.yue:1255
        }, -- shunt/writelite.yue:1254
        { -- shunt/writelite.yue:1256
          it = 'rejects floats', -- shunt/writelite.yue:1256
          max_cached_pages = 255.5, -- shunt/writelite.yue:1257
          expect = 'cannot set max cached pages to 255.5: not an integer' -- shunt/writelite.yue:1258
        }, -- shunt/writelite.yue:1256
        { -- shunt/writelite.yue:1259
          it = 'rejects too small numbers', -- shunt/writelite.yue:1259
          max_cached_pages = 0, -- shunt/writelite.yue:1260
          expect = 'cannot set max cached pages to 0: too small' -- shunt/writelite.yue:1261
        }, -- shunt/writelite.yue:1259
        { -- shunt/writelite.yue:1262
          it = 'rejects negative numbers', -- shunt/writelite.yue:1262
          max_cached_pages = -1, -- shunt/writelite.yue:1263
          expect = 'cannot set max cached pages to %-1: too small' -- shunt/writelite.yue:1264
        } -- shunt/writelite.yue:1262
      } -- shunt/writelite.yue:1253
      for _index_0 = 1, #tests do -- shunt/writelite.yue:1265
        local test = tests[_index_0] -- shunt/writelite.yue:1265
        it(test.it, function() -- shunt/writelite.yue:1266
          local max_cached_pages, expect = test.max_cached_pages, test.expect -- shunt/writelite.yue:1267
          local writelite = Writelite('database.db', TestFs()) -- shunt/writelite.yue:1268
          if (expect ~= nil) then -- shunt/writelite.yue:1269
            return require('shunt.spec')._expect_that([=[(-> writelite\max_cached_pages max_cached_pages)]=], (function() -- shunt/writelite.yue:1270
              return writelite:max_cached_pages(max_cached_pages) -- shunt/writelite.yue:1270
            end), (errors(matches(expect))), tostring("shunt/writelite.yue") .. ":" .. tostring(1270)) -- shunt/writelite.yue:1270
          else -- shunt/writelite.yue:1272
            require('shunt.spec')._expect_that([=[(writelite\max_cached_pages max_cached_pages)]=], (writelite:max_cached_pages(max_cached_pages)), (eq(writelite)), tostring("shunt/writelite.yue") .. ":" .. tostring(1272)); -- shunt/writelite.yue:1272
            return require('shunt.spec')._expect_that([=[writelite\_ut_max_cached_pages!]=], writelite:_ut_max_cached_pages(), (eq(max_cached_pages)), tostring("shunt/writelite.yue") .. ":" .. tostring(1273)) -- shunt/writelite.yue:1273
          end -- shunt/writelite.yue:1269
        end) -- shunt/writelite.yue:1266
      end -- shunt/writelite.yue:1273
    end) -- shunt/writelite.yue:1252
    describe('\\open', function() -- shunt/writelite.yue:1275
      it('requires mandatory metadata', function() -- shunt/writelite.yue:1276
        local metadata = { -- shunt/writelite.yue:1278
          { -- shunt/writelite.yue:1278
            name = 'mode', -- shunt/writelite.yue:1278
            action = function(wl) -- shunt/writelite.yue:1279
              return wl:mode('blob') -- shunt/writelite.yue:1279
            end, -- shunt/writelite.yue:1279
            expect = 'cannot open main file: mode unspecified' -- shunt/writelite.yue:1280
          }, -- shunt/writelite.yue:1278
          { -- shunt/writelite.yue:1281
            name = 'page size', -- shunt/writelite.yue:1281
            action = function(wl) -- shunt/writelite.yue:1282
              return wl:page_size(bit.blshift(1, 13)) -- shunt/writelite.yue:1282
            end -- shunt/writelite.yue:1282
          } -- shunt/writelite.yue:1281
        } -- shunt/writelite.yue:1277
        for index_to_omit = 1, #metadata do -- shunt/writelite.yue:1283
          local name, expect -- shunt/writelite.yue:1284
          do -- shunt/writelite.yue:1284
            local _obj_0 = metadata[index_to_omit] -- shunt/writelite.yue:1284
            name, expect = _obj_0.name, _obj_0.expect -- shunt/writelite.yue:1284
          end -- shunt/writelite.yue:1284
          print("testing omission of " .. tostring(name) .. "...") -- shunt/writelite.yue:1285
          local writelite = Writelite('database.db', TestFs()) -- shunt/writelite.yue:1287
          for i = 1, #metadata do -- shunt/writelite.yue:1289
            local _continue_0 = false -- shunt/writelite.yue:1290
            repeat -- shunt/writelite.yue:1290
              if i == index_to_omit then -- shunt/writelite.yue:1290
                _continue_0 = true -- shunt/writelite.yue:1291
                break -- shunt/writelite.yue:1291
              end -- shunt/writelite.yue:1290
              metadata[i].action(writelite) -- shunt/writelite.yue:1292
              _continue_0 = true -- shunt/writelite.yue:1290
            until true -- shunt/writelite.yue:1292
            if not _continue_0 then -- shunt/writelite.yue:1292
              break -- shunt/writelite.yue:1292
            end -- shunt/writelite.yue:1292
          end -- shunt/writelite.yue:1292
          if (expect ~= nil) then -- shunt/writelite.yue:1294
            local ok, err = writelite:open(); -- shunt/writelite.yue:1295
            require('shunt.spec')._expect_that([=[ok]=], ok, (eq(false)), tostring("shunt/writelite.yue") .. ":" .. tostring(1296)); -- shunt/writelite.yue:1296
            require('shunt.spec')._expect_that([=[err]=], err, (matches(expect)), tostring("shunt/writelite.yue") .. ":" .. tostring(1297)) -- shunt/writelite.yue:1297
          else -- shunt/writelite.yue:1299
            local ok, err = writelite:open(); -- shunt/writelite.yue:1299
            require('shunt.spec')._assert_that([=[ok]=], ok, (eq(true)), tostring("shunt/writelite.yue") .. ":" .. tostring(1300)); -- shunt/writelite.yue:1300
            require('shunt.spec')._assert_that([=[err]=], err, (eq(nil)), tostring("shunt/writelite.yue") .. ":" .. tostring(1301)) -- shunt/writelite.yue:1301
            ok, err = writelite:close(); -- shunt/writelite.yue:1303
            require('shunt.spec')._assert_that([=[ok]=], ok, (eq(true)), tostring("shunt/writelite.yue") .. ":" .. tostring(1304)); -- shunt/writelite.yue:1304
            require('shunt.spec')._assert_that([=[err]=], err, (eq(nil)), tostring("shunt/writelite.yue") .. ":" .. tostring(1305)) -- shunt/writelite.yue:1305
          end -- shunt/writelite.yue:1294
        end -- shunt/writelite.yue:1305
      end) -- shunt/writelite.yue:1276
      return it('cannot be called whilst open', function() -- shunt/writelite.yue:1307
        local _with_0 = Writelite('database.db', TestFs()) -- shunt/writelite.yue:1308
        _with_0:mode('blob') -- shunt/writelite.yue:1309
        local ok, err = _with_0:open(); -- shunt/writelite.yue:1310
        require('shunt.spec')._expect_that([=[ok]=], ok, (eq(true)), tostring("shunt/writelite.yue") .. ":" .. tostring(1311)); -- shunt/writelite.yue:1311
        require('shunt.spec')._assert_that([=[err]=], err, (eq(nil)), tostring("shunt/writelite.yue") .. ":" .. tostring(1312)) -- shunt/writelite.yue:1312
        ok, err = _with_0:open(); -- shunt/writelite.yue:1314
        require('shunt.spec')._expect_that([=[ok]=], ok, (eq(false)), tostring("shunt/writelite.yue") .. ":" .. tostring(1315)); -- shunt/writelite.yue:1315
        require('shunt.spec')._assert_that([=[err]=], err, (matches('cannot open writelite twice')), tostring("shunt/writelite.yue") .. ":" .. tostring(1316)) -- shunt/writelite.yue:1316
        ok, err = _with_0:close(); -- shunt/writelite.yue:1318
        require('shunt.spec')._expect_that([=[ok]=], ok, (eq(true)), tostring("shunt/writelite.yue") .. ":" .. tostring(1319)); -- shunt/writelite.yue:1319
        require('shunt.spec')._assert_that([=[err]=], err, (eq(nil)), tostring("shunt/writelite.yue") .. ":" .. tostring(1320)) -- shunt/writelite.yue:1320
        ok, err = _with_0:open(); -- shunt/writelite.yue:1322
        require('shunt.spec')._expect_that([=[ok]=], ok, (eq(true)), tostring("shunt/writelite.yue") .. ":" .. tostring(1323)); -- shunt/writelite.yue:1323
        require('shunt.spec')._assert_that([=[err]=], err, (eq(nil)), tostring("shunt/writelite.yue") .. ":" .. tostring(1324)) -- shunt/writelite.yue:1324
        ok, err = _with_0:open(); -- shunt/writelite.yue:1326
        require('shunt.spec')._expect_that([=[ok]=], ok, (eq(false)), tostring("shunt/writelite.yue") .. ":" .. tostring(1327)); -- shunt/writelite.yue:1327
        require('shunt.spec')._assert_that([=[err]=], err, (matches('cannot open writelite twice')), tostring("shunt/writelite.yue") .. ":" .. tostring(1328)) -- shunt/writelite.yue:1328
        return _with_0 -- shunt/writelite.yue:1308
      end) -- shunt/writelite.yue:1328
    end) -- shunt/writelite.yue:1275
    describe('\\close', function() -- shunt/writelite.yue:1330
      return it('cannot be called twice', function() -- shunt/writelite.yue:1331
        local _with_0 = Writelite('database.db', TestFs()) -- shunt/writelite.yue:1332
        _with_0:mode('blob') -- shunt/writelite.yue:1333
        local ok, err = _with_0:open(); -- shunt/writelite.yue:1334
        require('shunt.spec')._assert_that([=[ok]=], ok, (eq(true)), tostring("shunt/writelite.yue") .. ":" .. tostring(1335)); -- shunt/writelite.yue:1335
        require('shunt.spec')._expect_that([=[err]=], err, (eq(nil)), tostring("shunt/writelite.yue") .. ":" .. tostring(1336)) -- shunt/writelite.yue:1336
        ok, err = _with_0:close(); -- shunt/writelite.yue:1338
        require('shunt.spec')._assert_that([=[ok]=], ok, (eq(true)), tostring("shunt/writelite.yue") .. ":" .. tostring(1339)); -- shunt/writelite.yue:1339
        require('shunt.spec')._assert_that([=[err]=], err, (eq(nil)), tostring("shunt/writelite.yue") .. ":" .. tostring(1340)) -- shunt/writelite.yue:1340
        ok, err = _with_0:close(); -- shunt/writelite.yue:1342
        require('shunt.spec')._assert_that([=[ok]=], ok, (eq(false)), tostring("shunt/writelite.yue") .. ":" .. tostring(1343)); -- shunt/writelite.yue:1343
        require('shunt.spec')._assert_that([=[err]=], err, (eq('cannot close writelite file database.db: not open')), tostring("shunt/writelite.yue") .. ":" .. tostring(1344)) -- shunt/writelite.yue:1344
        return _with_0 -- shunt/writelite.yue:1332
      end) -- shunt/writelite.yue:1344
    end) -- shunt/writelite.yue:1330
    return describe('consistency', function() -- shunt/writelite.yue:1346
      describe('on golden-path', function() -- shunt/writelite.yue:1347
        local PAGE_SIZE = 1024 -- shunt/writelite.yue:1348
        local tests = { -- shunt/writelite.yue:1350
          { -- shunt/writelite.yue:1350
            name = 'no deltas', -- shunt/writelite.yue:1350
            txn_fn = function(txn) end -- shunt/writelite.yue:1351
          }, -- shunt/writelite.yue:1350
          { -- shunt/writelite.yue:1352
            name = 'single page deltas', -- shunt/writelite.yue:1352
            txn_fn = function(txn) -- shunt/writelite.yue:1353
              txn:seek('set', 0) -- shunt/writelite.yue:1354
              txn:write('hello, world') -- shunt/writelite.yue:1355
              txn:seek('set', 128) -- shunt/writelite.yue:1356
              return txn:write('how are you?') -- shunt/writelite.yue:1357
            end, -- shunt/writelite.yue:1353
            assertion = function(content) -- shunt/writelite.yue:1358
              local first_chunk_start_index = content:find('hello, world'); -- shunt/writelite.yue:1359
              require('shunt.spec')._expect_that([=[first_chunk_start_index]=], first_chunk_start_index, (eq(PAGE_SIZE + 1)), tostring("shunt/writelite.yue") .. ":" .. tostring(1360)) -- shunt/writelite.yue:1360
              local second_chunk_start_index = content:find('how are you?'); -- shunt/writelite.yue:1362
              return require('shunt.spec')._expect_that([=[second_chunk_start_index]=], second_chunk_start_index, (eq(PAGE_SIZE + 1 + 128)), tostring("shunt/writelite.yue") .. ":" .. tostring(1363)) -- shunt/writelite.yue:1363
            end -- shunt/writelite.yue:1358
          }, -- shunt/writelite.yue:1352
          { -- shunt/writelite.yue:1364
            name = 'overlapping small deltas', -- shunt/writelite.yue:1364
            txn_fn = function(txn) -- shunt/writelite.yue:1365
              txn:seek('set', 128) -- shunt/writelite.yue:1366
              txn:write('aaaaa.....ccccc') -- shunt/writelite.yue:1367
              txn:seek('set', 128 + 5) -- shunt/writelite.yue:1368
              return txn:write('bbbbb') -- shunt/writelite.yue:1369
            end, -- shunt/writelite.yue:1365
            assertion = function(content) -- shunt/writelite.yue:1370
              local pattern_index = content:find('aaaaabbbbbccccc'); -- shunt/writelite.yue:1371
              return require('shunt.spec')._expect_that([=[pattern_index]=], pattern_index, (eq(PAGE_SIZE + 1 + 128)), tostring("shunt/writelite.yue") .. ":" .. tostring(1372)) -- shunt/writelite.yue:1372
            end -- shunt/writelite.yue:1370
          }, -- shunt/writelite.yue:1364
          { -- shunt/writelite.yue:1373
            name = 'multi-page delta', -- shunt/writelite.yue:1373
            txn_fn = function(txn) -- shunt/writelite.yue:1374
              txn:seek('set', PAGE_SIZE / 4) -- shunt/writelite.yue:1375
              return txn:write(('a'):rep(2 * PAGE_SIZE)) -- shunt/writelite.yue:1376
            end, -- shunt/writelite.yue:1374
            assertion = function(content) -- shunt/writelite.yue:1377
              local pattern_index = content:find(('a'):rep(2 * PAGE_SIZE)); -- shunt/writelite.yue:1378
              return require('shunt.spec')._expect_that([=[pattern_index]=], pattern_index, (eq(1 + PAGE_SIZE + PAGE_SIZE / 4)), tostring("shunt/writelite.yue") .. ":" .. tostring(1379)) -- shunt/writelite.yue:1379
            end -- shunt/writelite.yue:1377
          } -- shunt/writelite.yue:1373
        } -- shunt/writelite.yue:1349
        for _index_0 = 1, #tests do -- shunt/writelite.yue:1380
          local test = tests[_index_0] -- shunt/writelite.yue:1380
          local name, txn_fn, assertion = test.name, test.txn_fn, test.assertion -- shunt/writelite.yue:1381
          it("functions with " .. tostring(name), function() -- shunt/writelite.yue:1382
            local fs = TestFs() -- shunt/writelite.yue:1383
            local FILE = 'database.db' -- shunt/writelite.yue:1384
            local _with_0 = Writelite(FILE, fs) -- shunt/writelite.yue:1385
            _with_0:mode('blob') -- shunt/writelite.yue:1386
            _with_0:page_size(PAGE_SIZE) -- shunt/writelite.yue:1387
            local ok, err = _with_0:open(); -- shunt/writelite.yue:1388
            require('shunt.spec')._assert_that([=[ok]=], ok, (eq(true)), tostring("shunt/writelite.yue") .. ":" .. tostring(1389)); -- shunt/writelite.yue:1389
            require('shunt.spec')._expect_that([=[err]=], err, (eq(nil)), tostring("shunt/writelite.yue") .. ":" .. tostring(1390)); -- shunt/writelite.yue:1390
            require('shunt.spec')._expect_that([=[fs.files[FILE]?]=], (fs.files[FILE] ~= nil), (eq(true)), tostring("shunt/writelite.yue") .. ":" .. tostring(1392)) -- shunt/writelite.yue:1392
            _with_0:transaction(txn_fn) -- shunt/writelite.yue:1394
            local content = fs.files[FILE]:content(); -- shunt/writelite.yue:1396
            require('shunt.spec')._expect_that([=[content]=], content, (matches('^#!writelite\0')), tostring("shunt/writelite.yue") .. ":" .. tostring(1397)) -- shunt/writelite.yue:1397
            if (assertion ~= nil) then -- shunt/writelite.yue:1398
              assertion(content) -- shunt/writelite.yue:1399
            end -- shunt/writelite.yue:1398
            ok, err = _with_0:close(); -- shunt/writelite.yue:1401
            require('shunt.spec')._assert_that([=[ok]=], ok, (eq(true)), tostring("shunt/writelite.yue") .. ":" .. tostring(1402)); -- shunt/writelite.yue:1402
            require('shunt.spec')._assert_that([=[err]=], err, (eq(nil)), tostring("shunt/writelite.yue") .. ":" .. tostring(1403)) -- shunt/writelite.yue:1403
            return _with_0 -- shunt/writelite.yue:1385
          end) -- shunt/writelite.yue:1382
        end -- shunt/writelite.yue:1403
      end) -- shunt/writelite.yue:1347
      return describe('with failures', function() -- shunt/writelite.yue:1405
        local PAGE_SIZE = 1024 -- shunt/writelite.yue:1406
        local clean_fs -- shunt/writelite.yue:1408
        do -- shunt/writelite.yue:1408
          clean_fs = TestFs() -- shunt/writelite.yue:1409
          do -- shunt/writelite.yue:1411
            local _with_0 = Writelite('database.db', clean_fs) -- shunt/writelite.yue:1411
            _with_0:mode('blob') -- shunt/writelite.yue:1412
            _with_0:page_size(PAGE_SIZE) -- shunt/writelite.yue:1413
            assert(_with_0:open()) -- shunt/writelite.yue:1414
            assert(_with_0:close()) -- shunt/writelite.yue:1415
          end -- shunt/writelite.yue:1411
          clean_fs = clean_fs -- shunt/writelite.yue:1416
        end -- shunt/writelite.yue:1416
        it('is tested with a clean file system', function() -- shunt/writelite.yue:1418
          return require('shunt.spec')._assert_that([=[clean_fs.files]=], clean_fs.files, (has_fields({ -- shunt/writelite.yue:1419
            ['database.db'] = not_(eq(nil)), -- shunt/writelite.yue:1419
            ['database.db~'] = eq(nil) -- shunt/writelite.yue:1419
          })), tostring("shunt/writelite.yue") .. ":" .. tostring(1419)) -- shunt/writelite.yue:1421
        end) -- shunt/writelite.yue:1418
        local clone_fs -- shunt/writelite.yue:1423
        clone_fs = function(fs) -- shunt/writelite.yue:1423
          local _with_0 = clone(fs) -- shunt/writelite.yue:1424
          setmetatable(_with_0, getmetatable(fs)) -- shunt/writelite.yue:1425
          local mt = getmetatable((TestFile(''))) -- shunt/writelite.yue:1426
          for _, file in pairs(_with_0.files) do -- shunt/writelite.yue:1427
            setmetatable(file, mt) -- shunt/writelite.yue:1428
          end -- shunt/writelite.yue:1428
          return _with_0 -- shunt/writelite.yue:1424
        end -- shunt/writelite.yue:1423
        local journal_present -- shunt/writelite.yue:1430
        journal_present = function(fs) -- shunt/writelite.yue:1430
          return require('shunt.spec')._expect_that([=[fs.files['database.db~']]=], fs.files['database.db~'], (not_(eq(nil))), tostring("shunt/writelite.yue") .. ":" .. tostring(1431)) -- shunt/writelite.yue:1431
        end -- shunt/writelite.yue:1430
        local journal_absent -- shunt/writelite.yue:1432
        journal_absent = function(fs) -- shunt/writelite.yue:1432
          return require('shunt.spec')._expect_that([=[fs.files['database.db~']]=], fs.files['database.db~'], (eq(nil)), tostring("shunt/writelite.yue") .. ":" .. tostring(1433)) -- shunt/writelite.yue:1433
        end -- shunt/writelite.yue:1432
        local main_unchanged -- shunt/writelite.yue:1434
        main_unchanged = function(fs) -- shunt/writelite.yue:1434
          return require('shunt.spec')._expect_that([=[fs.files['database.db']\content!]=], fs.files['database.db']:content(), (eq(clean_fs.files['database.db']:content())), tostring("shunt/writelite.yue") .. ":" .. tostring(1435)) -- shunt/writelite.yue:1435
        end -- shunt/writelite.yue:1434
        local main_advanced -- shunt/writelite.yue:1436
        main_advanced = function(fs) -- shunt/writelite.yue:1436
          return require('shunt.spec')._expect_that([=[fs.files['database.db']\content!]=], fs.files['database.db']:content(), (matches(('a'):rep(3 * PAGE_SIZE))), tostring("shunt/writelite.yue") .. ":" .. tostring(1437)) -- shunt/writelite.yue:1437
        end -- shunt/writelite.yue:1436
        local clean_tests = { -- shunt/writelite.yue:1440
          { -- shunt/writelite.yue:1440
            failure_points = { -- shunt/writelite.yue:1441
              'pre-open' -- shunt/writelite.yue:1441
            }, -- shunt/writelite.yue:1440
            expect_after_first_run = { -- shunt/writelite.yue:1443
              journal_absent -- shunt/writelite.yue:1443
            }, -- shunt/writelite.yue:1442
            expect_after_second_run = { -- shunt/writelite.yue:1445
              journal_absent, -- shunt/writelite.yue:1445
              main_unchanged -- shunt/writelite.yue:1446
            } -- shunt/writelite.yue:1444
          }, -- shunt/writelite.yue:1440
          { -- shunt/writelite.yue:1447
            failure_points = { -- shunt/writelite.yue:1448
              'post-open' -- shunt/writelite.yue:1448
            }, -- shunt/writelite.yue:1447
            expect_after_first_run = { -- shunt/writelite.yue:1450
              journal_absent -- shunt/writelite.yue:1450
            }, -- shunt/writelite.yue:1449
            expect_after_second_run = { -- shunt/writelite.yue:1452
              journal_absent, -- shunt/writelite.yue:1452
              main_unchanged -- shunt/writelite.yue:1453
            } -- shunt/writelite.yue:1451
          }, -- shunt/writelite.yue:1447
          { -- shunt/writelite.yue:1454
            failure_points = { -- shunt/writelite.yue:1455
              'mid-transaction' -- shunt/writelite.yue:1455
            }, -- shunt/writelite.yue:1454
            expect_after_first_run = { -- shunt/writelite.yue:1457
              journal_absent -- shunt/writelite.yue:1457
            }, -- shunt/writelite.yue:1456
            expect_after_second_run = { -- shunt/writelite.yue:1459
              journal_absent, -- shunt/writelite.yue:1459
              main_unchanged -- shunt/writelite.yue:1460
            } -- shunt/writelite.yue:1458
          }, -- shunt/writelite.yue:1454
          { -- shunt/writelite.yue:1461
            failure_points = { -- shunt/writelite.yue:1462
              'post-transaction' -- shunt/writelite.yue:1462
            }, -- shunt/writelite.yue:1461
            expect_after_first_run = { -- shunt/writelite.yue:1464
              journal_absent -- shunt/writelite.yue:1464
            }, -- shunt/writelite.yue:1463
            expect_after_second_run = { -- shunt/writelite.yue:1466
              journal_absent, -- shunt/writelite.yue:1466
              main_advanced -- shunt/writelite.yue:1467
            } -- shunt/writelite.yue:1465
          } -- shunt/writelite.yue:1461
        } -- shunt/writelite.yue:1439
        for _index_0 = 1, #clean_tests do -- shunt/writelite.yue:1468
          local test = clean_tests[_index_0] -- shunt/writelite.yue:1468
          local failure_points, expect_after_first_run, expect_after_second_run = test.failure_points, test.expect_after_first_run, test.expect_after_second_run -- shunt/writelite.yue:1469
          it("is maintained with a clean file system at " .. tostring(table.concat(failure_points, '+')) .. " failures", function() -- shunt/writelite.yue:1474
            print('first-run') -- shunt/writelite.yue:1475
            local fs = clone_fs(clean_fs); -- shunt/writelite.yue:1476
            do -- shunt/writelite.yue:1477
              local _tbl_0 = { } -- shunt/writelite.yue:1477
              for _index_1 = 1, #failure_points do -- shunt/writelite.yue:1477
                local name = failure_points[_index_1] -- shunt/writelite.yue:1477
                _tbl_0[name] = true -- shunt/writelite.yue:1477
              end -- shunt/writelite.yue:1477
              injected_failures = _tbl_0 -- shunt/writelite.yue:1477
            end -- shunt/writelite.yue:1477
            local err -- shunt/writelite.yue:1478
xpcall(function() -- shunt/writelite.yue:1479
              local _with_0 = Writelite('database.db', fs) -- shunt/writelite.yue:1480
              _with_0:mode('blob') -- shunt/writelite.yue:1481
              _with_0:page_size(PAGE_SIZE) -- shunt/writelite.yue:1482
              assert(_with_0:open()) -- shunt/writelite.yue:1483
              _with_0:transaction(function(txn) -- shunt/writelite.yue:1484
                txn:seek('set', 256) -- shunt/writelite.yue:1486
                txn:write(('a'):rep(3 * PAGE_SIZE)) -- shunt/writelite.yue:1487
                return txn -- shunt/writelite.yue:1485
              end) -- shunt/writelite.yue:1484
              assert(_with_0:close()) -- shunt/writelite.yue:1488
              return _with_0 -- shunt/writelite.yue:1480
            end, function(err2) -- shunt/writelite.yue:1488
              if not err2:match('FAILURE_MARKER') then -- shunt/writelite.yue:1490
                err = err2 -- shunt/writelite.yue:1491
              end -- shunt/writelite.yue:1490
            end); -- shunt/writelite.yue:1491
            require('shunt.spec')._assert_that([=[err]=], err, (eq(nil)), tostring("shunt/writelite.yue") .. ":" .. tostring(1492)) -- shunt/writelite.yue:1492
            for _index_1 = 1, #expect_after_first_run do -- shunt/writelite.yue:1494
              local check = expect_after_first_run[_index_1] -- shunt/writelite.yue:1494
              check(fs) -- shunt/writelite.yue:1495
            end -- shunt/writelite.yue:1495
            print('second-run'); -- shunt/writelite.yue:1497
            injected_failures = nil -- shunt/writelite.yue:1498
            local err -- shunt/writelite.yue:1499
xpcall(function() -- shunt/writelite.yue:1500
              local _with_0 = Writelite('database.db', fs) -- shunt/writelite.yue:1501
              _with_0:mode('blob') -- shunt/writelite.yue:1502
              _with_0:page_size(PAGE_SIZE) -- shunt/writelite.yue:1503
              assert(_with_0:open()) -- shunt/writelite.yue:1504
              assert(_with_0:close()) -- shunt/writelite.yue:1505
              return _with_0 -- shunt/writelite.yue:1501
            end, function(err2) -- shunt/writelite.yue:1505
              err = err2 -- shunt/writelite.yue:1507
            end); -- shunt/writelite.yue:1507
            require('shunt.spec')._assert_that([=[err]=], err, (eq(nil)), tostring("shunt/writelite.yue") .. ":" .. tostring(1508)) -- shunt/writelite.yue:1508
            for _index_1 = 1, #expect_after_second_run do -- shunt/writelite.yue:1510
              local check = expect_after_second_run[_index_1] -- shunt/writelite.yue:1510
              check(fs) -- shunt/writelite.yue:1511
            end -- shunt/writelite.yue:1511
          end) -- shunt/writelite.yue:1474
        end -- shunt/writelite.yue:1511
        local dirty_fs -- shunt/writelite.yue:1513
        do -- shunt/writelite.yue:1513
          dirty_fs = clone_fs(clean_fs) -- shunt/writelite.yue:1514
          do -- shunt/writelite.yue:1515
            local _with_0 = Writelite('database.db', dirty_fs) -- shunt/writelite.yue:1515
            _with_0:mode('blob') -- shunt/writelite.yue:1516
            _with_0:page_size(PAGE_SIZE) -- shunt/writelite.yue:1517
            assert(_with_0:open()) -- shunt/writelite.yue:1518
            local err -- shunt/writelite.yue:1519
xpcall(function() -- shunt/writelite.yue:1520
              return _with_0:transaction(function(txn) -- shunt/writelite.yue:1521
                return txn:write(('a'):rep(3 * PAGE_SIZE)) -- shunt/writelite.yue:1522
              end) -- shunt/writelite.yue:1522
            end, function(err2) -- shunt/writelite.yue:1522
              err = err2 -- shunt/writelite.yue:1524
            end) -- shunt/writelite.yue:1524
            if (err ~= nil) then -- shunt/writelite.yue:1525
              error("unexpected error: " .. tostring(err)) -- shunt/writelite.yue:1526
            end -- shunt/writelite.yue:1525
            assert(_with_0:close()) -- shunt/writelite.yue:1527
          end -- shunt/writelite.yue:1515
          dirty_fs.files['database.db'] = clean_fs.files['database.db'] -- shunt/writelite.yue:1530
          dirty_fs:reinstate('database.db~') -- shunt/writelite.yue:1531
          dirty_fs = dirty_fs -- shunt/writelite.yue:1533
        end -- shunt/writelite.yue:1533
        it('is tested with a dirty file system', function() -- shunt/writelite.yue:1535
          return require('shunt.spec')._assert_that([=[dirty_fs.files]=], dirty_fs.files, (has_fields({ -- shunt/writelite.yue:1536
            ['database.db'] = not_(eq(nil)), -- shunt/writelite.yue:1536
            ['database.db~'] = not_(eq(nil)) -- shunt/writelite.yue:1536
          })), tostring("shunt/writelite.yue") .. ":" .. tostring(1536)) -- shunt/writelite.yue:1538
        end) -- shunt/writelite.yue:1535
        local dirty_tests = { -- shunt/writelite.yue:1541
          { -- shunt/writelite.yue:1541
            failure_points = { -- shunt/writelite.yue:1542
              'pre-open' -- shunt/writelite.yue:1542
            }, -- shunt/writelite.yue:1541
            expect_after_run = { -- shunt/writelite.yue:1544
              journal_present, -- shunt/writelite.yue:1544
              main_unchanged -- shunt/writelite.yue:1545
            } -- shunt/writelite.yue:1543
          }, -- shunt/writelite.yue:1541
          { -- shunt/writelite.yue:1546
            failure_points = { -- shunt/writelite.yue:1547
              'post-open' -- shunt/writelite.yue:1547
            }, -- shunt/writelite.yue:1546
            expect_after_run = { -- shunt/writelite.yue:1549
              journal_present, -- shunt/writelite.yue:1549
              main_unchanged -- shunt/writelite.yue:1550
            } -- shunt/writelite.yue:1548
          }, -- shunt/writelite.yue:1546
          { -- shunt/writelite.yue:1551
            failure_points = { -- shunt/writelite.yue:1552
              'post-journal-read' -- shunt/writelite.yue:1552
            }, -- shunt/writelite.yue:1551
            expect_after_run = { -- shunt/writelite.yue:1554
              journal_present, -- shunt/writelite.yue:1554
              main_unchanged -- shunt/writelite.yue:1555
            } -- shunt/writelite.yue:1553
          }, -- shunt/writelite.yue:1551
          { -- shunt/writelite.yue:1556
            failure_points = { -- shunt/writelite.yue:1557
              'post-journal-load' -- shunt/writelite.yue:1557
            }, -- shunt/writelite.yue:1556
            expect_after_run = { -- shunt/writelite.yue:1559
              journal_present, -- shunt/writelite.yue:1559
              main_unchanged -- shunt/writelite.yue:1560
            } -- shunt/writelite.yue:1558
          }, -- shunt/writelite.yue:1556
          { -- shunt/writelite.yue:1561
            failure_points = { -- shunt/writelite.yue:1562
              'mid-journal-recovery' -- shunt/writelite.yue:1562
            }, -- shunt/writelite.yue:1561
            expect_after_run = { -- shunt/writelite.yue:1564
              journal_present -- shunt/writelite.yue:1564
            } -- shunt/writelite.yue:1563
          }, -- shunt/writelite.yue:1561
          { -- shunt/writelite.yue:1565
            failure_points = { -- shunt/writelite.yue:1566
              'pre-journal-removal' -- shunt/writelite.yue:1566
            }, -- shunt/writelite.yue:1565
            expect_after_run = { -- shunt/writelite.yue:1568
              journal_present, -- shunt/writelite.yue:1568
              main_advanced -- shunt/writelite.yue:1569
            } -- shunt/writelite.yue:1567
          }, -- shunt/writelite.yue:1565
          { -- shunt/writelite.yue:1570
            failure_points = { -- shunt/writelite.yue:1571
              'post-journal-removal' -- shunt/writelite.yue:1571
            }, -- shunt/writelite.yue:1570
            expect_after_run = { -- shunt/writelite.yue:1573
              journal_absent, -- shunt/writelite.yue:1573
              main_advanced -- shunt/writelite.yue:1574
            } -- shunt/writelite.yue:1572
          } -- shunt/writelite.yue:1570
        } -- shunt/writelite.yue:1540
        for _index_0 = 1, #dirty_tests do -- shunt/writelite.yue:1575
          local test = dirty_tests[_index_0] -- shunt/writelite.yue:1575
          local failure_points, expect_after_run = test.failure_points, test.expect_after_run -- shunt/writelite.yue:1576
          it("is maintained with a dirty file system at " .. tostring(table.concat(failure_points, '+')) .. " failures", function() -- shunt/writelite.yue:1580
            local fs = clone_fs(dirty_fs); -- shunt/writelite.yue:1581
            do -- shunt/writelite.yue:1582
              local _tbl_0 = { } -- shunt/writelite.yue:1582
              for _index_1 = 1, #failure_points do -- shunt/writelite.yue:1582
                local name = failure_points[_index_1] -- shunt/writelite.yue:1582
                _tbl_0[name] = true -- shunt/writelite.yue:1582
              end -- shunt/writelite.yue:1582
              injected_failures = _tbl_0 -- shunt/writelite.yue:1582
            end -- shunt/writelite.yue:1582
            local err -- shunt/writelite.yue:1583
xpcall(function() -- shunt/writelite.yue:1584
              local _with_0 = Writelite('database.db', fs) -- shunt/writelite.yue:1585
              _with_0:mode('blob') -- shunt/writelite.yue:1586
              _with_0:page_size(PAGE_SIZE) -- shunt/writelite.yue:1587
              assert(_with_0:open()) -- shunt/writelite.yue:1588
              assert(_with_0:close()) -- shunt/writelite.yue:1589
              return _with_0 -- shunt/writelite.yue:1585
            end, function(err2) -- shunt/writelite.yue:1589
              if not err2:match('FAILURE_MARKER') then -- shunt/writelite.yue:1591
                err = err2 -- shunt/writelite.yue:1592
              end -- shunt/writelite.yue:1591
            end); -- shunt/writelite.yue:1592
            require('shunt.spec')._assert_that([=[err]=], err, (eq(nil)), tostring("shunt/writelite.yue") .. ":" .. tostring(1593)) -- shunt/writelite.yue:1593
            for _index_1 = 1, #expect_after_run do -- shunt/writelite.yue:1595
              local check = expect_after_run[_index_1] -- shunt/writelite.yue:1595
              check(fs) -- shunt/writelite.yue:1596
            end -- shunt/writelite.yue:1596
          end) -- shunt/writelite.yue:1580
        end -- shunt/writelite.yue:1596
        return it('is tested comprehensively', function() -- shunt/writelite.yue:1598
          local attempted_failure_points -- shunt/writelite.yue:1599
          do -- shunt/writelite.yue:1599
            local _with_0 = { } -- shunt/writelite.yue:1599
            for _index_0 = 1, #clean_tests do -- shunt/writelite.yue:1600
              local test = clean_tests[_index_0] -- shunt/writelite.yue:1600
              local _list_0 = test.failure_points -- shunt/writelite.yue:1601
              for _index_1 = 1, #_list_0 do -- shunt/writelite.yue:1601
                local failure_point = _list_0[_index_1] -- shunt/writelite.yue:1601
                _with_0[failure_point] = true -- shunt/writelite.yue:1602
              end -- shunt/writelite.yue:1602
            end -- shunt/writelite.yue:1602
            for _index_0 = 1, #dirty_tests do -- shunt/writelite.yue:1603
              local test = dirty_tests[_index_0] -- shunt/writelite.yue:1603
              local _list_0 = test.failure_points -- shunt/writelite.yue:1604
              for _index_1 = 1, #_list_0 do -- shunt/writelite.yue:1604
                local failure_point = _list_0[_index_1] -- shunt/writelite.yue:1604
                _with_0[failure_point] = true -- shunt/writelite.yue:1605
              end -- shunt/writelite.yue:1605
            end -- shunt/writelite.yue:1605
            attempted_failure_points = _with_0 -- shunt/writelite.yue:1599
          end -- shunt/writelite.yue:1599
          require('shunt.spec')._expect_that([=[attempted_failure_points]=], attempted_failure_points, (deep_eq({ -- shunt/writelite.yue:1606
            ['mid-journal-recovery'] = true, -- shunt/writelite.yue:1606
            ['mid-transaction'] = true, -- shunt/writelite.yue:1606
            ['post-journal-load'] = true, -- shunt/writelite.yue:1606
            ['post-journal-read'] = true, -- shunt/writelite.yue:1606
            ['post-journal-removal'] = true, -- shunt/writelite.yue:1606
            ['post-open'] = true, -- shunt/writelite.yue:1606
            ['post-transaction'] = true, -- shunt/writelite.yue:1606
            ['pre-journal-removal'] = true, -- shunt/writelite.yue:1606
            ['pre-open'] = true -- shunt/writelite.yue:1606
          })), tostring("shunt/writelite.yue") .. ":" .. tostring(1606)); -- shunt/writelite.yue:1606
          return require('shunt.spec')._expect_that([=[attempted_failure_points]=], attempted_failure_points, (deep_eq(activated_failure_points)), tostring("shunt/writelite.yue") .. ":" .. tostring(1607)) -- shunt/writelite.yue:1607
        end) -- shunt/writelite.yue:1607
      end) -- shunt/writelite.yue:1607
    end) -- shunt/writelite.yue:1607
  end) -- shunt/writelite.yue:1194
  describe('writelite.PageCache', function() -- shunt/writelite.yue:1609
    describe('\\write', function() -- shunt/writelite.yue:1610
      it('accesses the filesystem', function() -- shunt/writelite.yue:1611
        local page_size = 10 -- shunt/writelite.yue:1612
        local main_file = TestFile(table.concat((function() -- shunt/writelite.yue:1614
          local _with_0 = { } -- shunt/writelite.yue:1614
          _with_0[#_with_0 + 1] = ('a'):rep(page_size) -- shunt/writelite.yue:1615
          _with_0[#_with_0 + 1] = ('b'):rep(page_size) -- shunt/writelite.yue:1616
          _with_0[#_with_0 + 1] = ('c'):rep(page_size / 2) -- shunt/writelite.yue:1617
          return _with_0 -- shunt/writelite.yue:1614
        end)())) -- shunt/writelite.yue:1614
        main_file:open() -- shunt/writelite.yue:1618
        local cache = PageCache({ -- shunt/writelite.yue:1621
          _main_file = main_file, -- shunt/writelite.yue:1621
          _page_size = page_size -- shunt/writelite.yue:1622
        }); -- shunt/writelite.yue:1620
        require('shunt.spec')._expect_that([=[(cache\get 0 * page_size)]=], (cache:get(0 * page_size)), (has_fields({ -- shunt/writelite.yue:1623
          offset = eq(0), -- shunt/writelite.yue:1623
          content = eq(('a'):rep(page_size)) -- shunt/writelite.yue:1623
        })), tostring("shunt/writelite.yue") .. ":" .. tostring(1623)); -- shunt/writelite.yue:1623
        require('shunt.spec')._expect_that([=[(cache\get 0 * page_size)]=], (cache:get(0 * page_size)), (has_fields({ -- shunt/writelite.yue:1626
          offset = eq(0), -- shunt/writelite.yue:1626
          content = eq(('a'):rep(page_size)) -- shunt/writelite.yue:1626
        })), tostring("shunt/writelite.yue") .. ":" .. tostring(1626)); -- shunt/writelite.yue:1626
        require('shunt.spec')._expect_that([=[(cache\get 1 * page_size)]=], (cache:get(1 * page_size)), (has_fields({ -- shunt/writelite.yue:1629
          offset = eq(page_size), -- shunt/writelite.yue:1629
          content = eq(('b'):rep(page_size)) -- shunt/writelite.yue:1629
        })), tostring("shunt/writelite.yue") .. ":" .. tostring(1629)); -- shunt/writelite.yue:1629
        require('shunt.spec')._expect_that([=[(cache\get 2 * page_size)]=], (cache:get(2 * page_size)), (has_fields({ -- shunt/writelite.yue:1632
          offset = eq(2 * page_size), -- shunt/writelite.yue:1632
          content = eq(table.concat({ -- shunt/writelite.yue:1632
            ('c'):rep(page_size / 2), -- shunt/writelite.yue:1632
            ('\0'):rep(page_size / 2) -- shunt/writelite.yue:1632
          })) -- shunt/writelite.yue:1632
        })), tostring("shunt/writelite.yue") .. ":" .. tostring(1632)); -- shunt/writelite.yue:1632
        return require('shunt.spec')._expect_that([=[(cache\get 1 * page_size)]=], (cache:get(1 * page_size)), (has_fields({ -- shunt/writelite.yue:1637
          offset = eq(page_size), -- shunt/writelite.yue:1637
          content = eq(('b'):rep(page_size)) -- shunt/writelite.yue:1637
        })), tostring("shunt/writelite.yue") .. ":" .. tostring(1637)) -- shunt/writelite.yue:1639
      end) -- shunt/writelite.yue:1611
      return it('caches appropriately', function() -- shunt/writelite.yue:1641
        local PAGE_SIZE = 10 -- shunt/writelite.yue:1642
        local main_file = TestFile(table.concat((function() -- shunt/writelite.yue:1644
          local _with_0 = { } -- shunt/writelite.yue:1644
          local a = ('a'):byte() -- shunt/writelite.yue:1645
          for i = 0, 20 do -- shunt/writelite.yue:1646
            _with_0[#_with_0 + 1] = (string.char(a + i)):rep(PAGE_SIZE) -- shunt/writelite.yue:1647
          end -- shunt/writelite.yue:1647
          return _with_0 -- shunt/writelite.yue:1644
        end)())) -- shunt/writelite.yue:1644
        main_file:open() -- shunt/writelite.yue:1648
        local MAX_CACHED_PAGES = 10 -- shunt/writelite.yue:1650
        local cache = PageCache({ -- shunt/writelite.yue:1652
          _main_file = main_file, -- shunt/writelite.yue:1652
          _page_size = PAGE_SIZE -- shunt/writelite.yue:1653
        }) -- shunt/writelite.yue:1651
        cache:set_max_cached_pages(MAX_CACHED_PAGES) -- shunt/writelite.yue:1654
        for i = 0, MAX_CACHED_PAGES - 1 do -- shunt/writelite.yue:1657
          cache:get(i * PAGE_SIZE) -- shunt/writelite.yue:1658
        end -- shunt/writelite.yue:1658
        main_file:seek('set', 0) -- shunt/writelite.yue:1661
        local err = main_file:write(('0'):rep(20 * PAGE_SIZE)) -- shunt/writelite.yue:1662
        assert(not (err ~= nil), err) -- shunt/writelite.yue:1663
        local a = ('a'):byte() -- shunt/writelite.yue:1666
        for i = 0, MAX_CACHED_PAGES - 1 do -- shunt/writelite.yue:1667
          require('shunt.spec')._expect_that([=[(cache\get i * PAGE_SIZE)]=], (cache:get(i * PAGE_SIZE)), (has_fields({ -- shunt/writelite.yue:1668
            offset = eq(i * PAGE_SIZE), -- shunt/writelite.yue:1668
            content = eq((string.char(a + i)):rep(PAGE_SIZE)) -- shunt/writelite.yue:1668
          })), tostring("shunt/writelite.yue") .. ":" .. tostring(1668)) -- shunt/writelite.yue:1668
        end -- shunt/writelite.yue:1670
        cache:get(MAX_CACHED_PAGES * PAGE_SIZE); -- shunt/writelite.yue:1673
        return require('shunt.spec')._expect_that([=[(cache\get 0)]=], (cache:get(0)), (has_fields({ -- shunt/writelite.yue:1675
          offset = eq(0), -- shunt/writelite.yue:1675
          content = eq(('0'):rep(PAGE_SIZE)) -- shunt/writelite.yue:1675
        })), tostring("shunt/writelite.yue") .. ":" .. tostring(1675)) -- shunt/writelite.yue:1677
      end) -- shunt/writelite.yue:1677
    end) -- shunt/writelite.yue:1610
    return describe('\\set', function() -- shunt/writelite.yue:1679
      it('shows changes immediately', function() -- shunt/writelite.yue:1680
        local PAGE_SIZE = 10 -- shunt/writelite.yue:1681
        local main_file = TestFile(table.concat((function() -- shunt/writelite.yue:1683
          local _with_0 = { } -- shunt/writelite.yue:1683
          local a = ('a'):byte() -- shunt/writelite.yue:1684
          for i = 0, 20 do -- shunt/writelite.yue:1685
            _with_0[#_with_0 + 1] = (string.char(a + i)):rep(PAGE_SIZE) -- shunt/writelite.yue:1686
          end -- shunt/writelite.yue:1686
          return _with_0 -- shunt/writelite.yue:1683
        end)())) -- shunt/writelite.yue:1683
        main_file:open() -- shunt/writelite.yue:1687
        local MAX_CACHED_PAGES = 10 -- shunt/writelite.yue:1689
        local cache = PageCache({ -- shunt/writelite.yue:1691
          _main_file = main_file, -- shunt/writelite.yue:1691
          _page_size = PAGE_SIZE -- shunt/writelite.yue:1692
        }) -- shunt/writelite.yue:1690
        return cache:set_max_cached_pages(MAX_CACHED_PAGES) -- shunt/writelite.yue:1693
      end) -- shunt/writelite.yue:1680
      it('rejects unaligned pages', function() -- shunt/writelite.yue:1695
        local PAGE_SIZE = 32 -- shunt/writelite.yue:1696
        local cache = PageCache({ -- shunt/writelite.yue:1698
          _main_file = (function() -- shunt/writelite.yue:1698
            local _with_0 = TestFile('') -- shunt/writelite.yue:1698
            _with_0:open() -- shunt/writelite.yue:1699
            return _with_0 -- shunt/writelite.yue:1698
          end)(), -- shunt/writelite.yue:1698
          _page_size = PAGE_SIZE -- shunt/writelite.yue:1700
        }) -- shunt/writelite.yue:1697
        local page = Page({ -- shunt/writelite.yue:1702
          offset = 0, -- shunt/writelite.yue:1702
          content = ('\0'):rep(PAGE_SIZE) -- shunt/writelite.yue:1703
        }); -- shunt/writelite.yue:1701
        return require('shunt.spec')._expect_that([=[(-> cache\set 12, page)]=], (function() -- shunt/writelite.yue:1704
          return cache:set(12, page) -- shunt/writelite.yue:1704
        end), (errors(matches('page%-cache offset must be a multiple of the page size'))), tostring("shunt/writelite.yue") .. ":" .. tostring(1704)) -- shunt/writelite.yue:1704
      end) -- shunt/writelite.yue:1695
      return it('rejects incorrect-size pages', function() -- shunt/writelite.yue:1706
        local PAGE_SIZE = 32 -- shunt/writelite.yue:1707
        local cache = PageCache({ -- shunt/writelite.yue:1709
          _main_file = (function() -- shunt/writelite.yue:1709
            local _with_0 = TestFile('') -- shunt/writelite.yue:1709
            _with_0:open() -- shunt/writelite.yue:1710
            return _with_0 -- shunt/writelite.yue:1709
          end)(), -- shunt/writelite.yue:1709
          _page_size = PAGE_SIZE -- shunt/writelite.yue:1711
        }) -- shunt/writelite.yue:1708
        local page = Page({ -- shunt/writelite.yue:1713
          offset = 123 * PAGE_SIZE, -- shunt/writelite.yue:1713
          content = '0123456789' -- shunt/writelite.yue:1714
        }); -- shunt/writelite.yue:1712
        return require('shunt.spec')._expect_that([=[(-> cache\set 123 * PAGE_SIZE, page)]=], (function() -- shunt/writelite.yue:1715
          return cache:set(123 * PAGE_SIZE, page) -- shunt/writelite.yue:1715
        end), (errors(matches("internal error: page has the wrong size %(10 != " .. tostring(PAGE_SIZE) .. "%)"))), tostring("shunt/writelite.yue") .. ":" .. tostring(1715)) -- shunt/writelite.yue:1715
      end) -- shunt/writelite.yue:1715
    end) -- shunt/writelite.yue:1715
  end) -- shunt/writelite.yue:1609
  describe('writelite.Hasher', function() -- shunt/writelite.yue:1717
    it('avoids collisions', function() -- shunt/writelite.yue:1718
      local collisions = { } -- shunt/writelite.yue:1719
      local NUM_STRINGS = 10000 -- shunt/writelite.yue:1720
      for i = 1, NUM_STRINGS do -- shunt/writelite.yue:1721
        local hash = Hasher():write("some_string_" .. tostring(i) .. "_which_is_similar"):finish() -- shunt/writelite.yue:1722
        if collisions[hash] == nil then -- shunt/writelite.yue:1725
          collisions[hash] = 0 -- shunt/writelite.yue:1725
        end -- shunt/writelite.yue:1725
        collisions[hash] = collisions[hash] + 1 -- shunt/writelite.yue:1726
      end -- shunt/writelite.yue:1726
      local max_collisions = -1 -- shunt/writelite.yue:1728
      for h, c in pairs(collisions) do -- shunt/writelite.yue:1729
        if max_collisions < c then -- shunt/writelite.yue:1730
          max_collisions = c -- shunt/writelite.yue:1731
        end -- shunt/writelite.yue:1730
      end -- shunt/writelite.yue:1731
      return require('shunt.spec')._expect_that([=[max_collisions]=], max_collisions, (lt(NUM_STRINGS * 0.01)), tostring("shunt/writelite.yue") .. ":" .. tostring(1732)) -- shunt/writelite.yue:1732
    end) -- shunt/writelite.yue:1718
    return it('is stable for tables', function() -- shunt/writelite.yue:1734
      local make_test_data -- shunt/writelite.yue:1735
      make_test_data = function() -- shunt/writelite.yue:1735
        local _with_0 = { } -- shunt/writelite.yue:1736
        _with_0.k1 = { -- shunt/writelite.yue:1738
          k11 = 'a', -- shunt/writelite.yue:1738
          k12 = 'b' -- shunt/writelite.yue:1739
        } -- shunt/writelite.yue:1737
        _with_0.k2 = { -- shunt/writelite.yue:1741
          k21 = 'c', -- shunt/writelite.yue:1741
          k22 = 'd' -- shunt/writelite.yue:1742
        } -- shunt/writelite.yue:1740
        return _with_0 -- shunt/writelite.yue:1736
      end -- shunt/writelite.yue:1735
      local hash = nil -- shunt/writelite.yue:1743
      for i = 1, 1000 do -- shunt/writelite.yue:1744
        local h = Hasher():write(make_test_data()):finish() -- shunt/writelite.yue:1745
        if (hash ~= nil) then -- shunt/writelite.yue:1748
          require('shunt.spec')._assert_that([=[h]=], h, (eq(hash)), tostring("shunt/writelite.yue") .. ":" .. tostring(1749)) -- shunt/writelite.yue:1749
        else -- shunt/writelite.yue:1751
          hash = h -- shunt/writelite.yue:1751
        end -- shunt/writelite.yue:1748
      end -- shunt/writelite.yue:1751
    end) -- shunt/writelite.yue:1751
  end) -- shunt/writelite.yue:1717
  return describe('writelite.Serialiser roundtrip', function() -- shunt/writelite.yue:1753
    local tests = { -- shunt/writelite.yue:1755
      { -- shunt/writelite.yue:1755
        name = 'nil', -- shunt/writelite.yue:1755
        value = nil -- shunt/writelite.yue:1756
      }, -- shunt/writelite.yue:1755
      { -- shunt/writelite.yue:1757
        name = 'true', -- shunt/writelite.yue:1757
        value = true -- shunt/writelite.yue:1758
      }, -- shunt/writelite.yue:1757
      { -- shunt/writelite.yue:1759
        name = 'false', -- shunt/writelite.yue:1759
        value = false -- shunt/writelite.yue:1760
      }, -- shunt/writelite.yue:1759
      { -- shunt/writelite.yue:1761
        name = 'int (zero)', -- shunt/writelite.yue:1761
        value = 0 -- shunt/writelite.yue:1762
      }, -- shunt/writelite.yue:1761
      { -- shunt/writelite.yue:1763
        name = 'int (small, positive)', -- shunt/writelite.yue:1763
        value = 10 -- shunt/writelite.yue:1764
      }, -- shunt/writelite.yue:1763
      { -- shunt/writelite.yue:1765
        name = 'int (small, negative)', -- shunt/writelite.yue:1765
        value = -10 -- shunt/writelite.yue:1766
      }, -- shunt/writelite.yue:1765
      { -- shunt/writelite.yue:1767
        name = 'int (max int)', -- shunt/writelite.yue:1767
        value = MAX_INT -- shunt/writelite.yue:1768
      }, -- shunt/writelite.yue:1767
      { -- shunt/writelite.yue:1769
        name = 'int (min int)', -- shunt/writelite.yue:1769
        value = MIN_INT -- shunt/writelite.yue:1770
      }, -- shunt/writelite.yue:1769
      { -- shunt/writelite.yue:1771
        name = 'float (small positive)', -- shunt/writelite.yue:1771
        value = 1.1, -- shunt/writelite.yue:1772
        check = function(actual, value) -- shunt/writelite.yue:1773
          return require('shunt.spec')._expect_that([=[actual]=], actual, (near(value)), tostring("shunt/writelite.yue") .. ":" .. tostring(1774)) -- shunt/writelite.yue:1774
        end -- shunt/writelite.yue:1773
      }, -- shunt/writelite.yue:1771
      { -- shunt/writelite.yue:1775
        name = 'float (small negative)', -- shunt/writelite.yue:1775
        value = -1.1, -- shunt/writelite.yue:1776
        check = function(actual, value) -- shunt/writelite.yue:1777
          return require('shunt.spec')._expect_that([=[actual]=], actual, (near(value)), tostring("shunt/writelite.yue") .. ":" .. tostring(1778)) -- shunt/writelite.yue:1778
        end -- shunt/writelite.yue:1777
      }, -- shunt/writelite.yue:1775
      { -- shunt/writelite.yue:1779
        name = 'float (large positive)', -- shunt/writelite.yue:1779
        value = 9999999999999 * 9999999 * 0.3, -- shunt/writelite.yue:1780
        check = function(actual, value) -- shunt/writelite.yue:1781
          return require('shunt.spec')._expect_that([=[actual]=], actual, (near(value)), tostring("shunt/writelite.yue") .. ":" .. tostring(1782)) -- shunt/writelite.yue:1782
        end -- shunt/writelite.yue:1781
      }, -- shunt/writelite.yue:1779
      { -- shunt/writelite.yue:1783
        name = 'float (large negative)', -- shunt/writelite.yue:1783
        value = -9999999999999 * 9999999 * 0.3, -- shunt/writelite.yue:1784
        check = function(actual, value) -- shunt/writelite.yue:1785
          return require('shunt.spec')._expect_that([=[actual]=], actual, (near(value)), tostring("shunt/writelite.yue") .. ":" .. tostring(1786)) -- shunt/writelite.yue:1786
        end -- shunt/writelite.yue:1785
      }, -- shunt/writelite.yue:1783
      { -- shunt/writelite.yue:1787
        name = 'empty string', -- shunt/writelite.yue:1787
        value = '' -- shunt/writelite.yue:1788
      }, -- shunt/writelite.yue:1787
      { -- shunt/writelite.yue:1789
        name = 'short string', -- shunt/writelite.yue:1789
        value = 'asdf' -- shunt/writelite.yue:1790
      }, -- shunt/writelite.yue:1789
      { -- shunt/writelite.yue:1791
        name = 'long string', -- shunt/writelite.yue:1791
        value = ('x'):rep(1000) -- shunt/writelite.yue:1792
      }, -- shunt/writelite.yue:1791
      { -- shunt/writelite.yue:1793
        name = 'simple leaf table', -- shunt/writelite.yue:1793
        value = { -- shunt/writelite.yue:1795
          [false] = true -- shunt/writelite.yue:1795
        } -- shunt/writelite.yue:1794
      }, -- shunt/writelite.yue:1793
      { -- shunt/writelite.yue:1796
        name = 'simple leaf table', -- shunt/writelite.yue:1796
        value = { -- shunt/writelite.yue:1798
          hello = true -- shunt/writelite.yue:1798
        } -- shunt/writelite.yue:1797
      }, -- shunt/writelite.yue:1796
      { -- shunt/writelite.yue:1799
        name = 'simple leaf table', -- shunt/writelite.yue:1799
        value = { -- shunt/writelite.yue:1801
          [false] = 'world' -- shunt/writelite.yue:1801
        } -- shunt/writelite.yue:1800
      }, -- shunt/writelite.yue:1799
      { -- shunt/writelite.yue:1802
        name = 'complex leaf table', -- shunt/writelite.yue:1802
        value = { -- shunt/writelite.yue:1804
          hello = 'world' -- shunt/writelite.yue:1804
        } -- shunt/writelite.yue:1803
      }, -- shunt/writelite.yue:1802
      { -- shunt/writelite.yue:1805
        name = 'tree table', -- shunt/writelite.yue:1805
        value = { -- shunt/writelite.yue:1807
          hello = { -- shunt/writelite.yue:1808
            world = { -- shunt/writelite.yue:1809
              how = { -- shunt/writelite.yue:1810
                are = 'you' -- shunt/writelite.yue:1810
              } -- shunt/writelite.yue:1809
            } -- shunt/writelite.yue:1808
          } -- shunt/writelite.yue:1807
        } -- shunt/writelite.yue:1806
      }, -- shunt/writelite.yue:1805
      { -- shunt/writelite.yue:1811
        name = 'cyclic table', -- shunt/writelite.yue:1811
        value = (function() -- shunt/writelite.yue:1812
          local ret = { } -- shunt/writelite.yue:1813
          ret.self = ret -- shunt/writelite.yue:1814
          return ret -- shunt/writelite.yue:1815
        end)() -- shunt/writelite.yue:1812
      }, -- shunt/writelite.yue:1811
      { -- shunt/writelite.yue:1816
        name = 'indirectly cyclic table', -- shunt/writelite.yue:1816
        value = (function() -- shunt/writelite.yue:1817
          local ret = { -- shunt/writelite.yue:1818
            child = { } -- shunt/writelite.yue:1818
          } -- shunt/writelite.yue:1818
          ret.child.parent = ret -- shunt/writelite.yue:1819
          return ret -- shunt/writelite.yue:1820
        end)() -- shunt/writelite.yue:1817
      }, -- shunt/writelite.yue:1816
      { -- shunt/writelite.yue:1821
        name = 'key-tree-table', -- shunt/writelite.yue:1821
        value = { -- shunt/writelite.yue:1823
          [{ -- shunt/writelite.yue:1823
            hello = 'there' -- shunt/writelite.yue:1823
          }] = 'world' -- shunt/writelite.yue:1823
        }, -- shunt/writelite.yue:1822
        check = function(actual, value) -- shunt/writelite.yue:1824
          local actual_structure -- shunt/writelite.yue:1825
          do -- shunt/writelite.yue:1825
            local _accum_0 = { } -- shunt/writelite.yue:1825
            local _len_0 = 1 -- shunt/writelite.yue:1825
            for key, value in pairs(actual) do -- shunt/writelite.yue:1825
              _accum_0[_len_0] = { -- shunt/writelite.yue:1825
                key = key, -- shunt/writelite.yue:1825
                value = value -- shunt/writelite.yue:1825
              } -- shunt/writelite.yue:1825
              _len_0 = _len_0 + 1 -- shunt/writelite.yue:1825
            end -- shunt/writelite.yue:1825
            actual_structure = _accum_0 -- shunt/writelite.yue:1825
          end -- shunt/writelite.yue:1825
          for _index_0 = 1, #actual_structure do -- shunt/writelite.yue:1826
            local kv = actual_structure[_index_0] -- shunt/writelite.yue:1826
            do -- shunt/writelite.yue:1827
              local _accum_0 = { } -- shunt/writelite.yue:1827
              local _len_0 = 1 -- shunt/writelite.yue:1827
              for key, value in pairs(kv.key) do -- shunt/writelite.yue:1827
                _accum_0[_len_0] = { -- shunt/writelite.yue:1827
                  key = key, -- shunt/writelite.yue:1827
                  value = value -- shunt/writelite.yue:1827
                } -- shunt/writelite.yue:1827
                _len_0 = _len_0 + 1 -- shunt/writelite.yue:1827
              end -- shunt/writelite.yue:1827
              kv.key = _accum_0 -- shunt/writelite.yue:1827
            end -- shunt/writelite.yue:1827
          end -- shunt/writelite.yue:1827
          return require('shunt.spec')._expect_that([=[actual_structure]=], actual_structure, (deep_eq({ -- shunt/writelite.yue:1828
            { -- shunt/writelite.yue:1828
              key = { -- shunt/writelite.yue:1828
                { -- shunt/writelite.yue:1828
                  key = 'hello', -- shunt/writelite.yue:1828
                  value = 'there' -- shunt/writelite.yue:1828
                } -- shunt/writelite.yue:1828
              }, -- shunt/writelite.yue:1828
              value = 'world' -- shunt/writelite.yue:1828
            } -- shunt/writelite.yue:1828
          })), tostring("shunt/writelite.yue") .. ":" .. tostring(1828)) -- shunt/writelite.yue:1833
        end -- shunt/writelite.yue:1824
      }, -- shunt/writelite.yue:1821
      { -- shunt/writelite.yue:1834
        name = 'key-cyclic table', -- shunt/writelite.yue:1834
        value = (function() -- shunt/writelite.yue:1835
          local ret = { } -- shunt/writelite.yue:1836
          ret[ret] = true -- shunt/writelite.yue:1837
          return ret -- shunt/writelite.yue:1838
        end)(), -- shunt/writelite.yue:1835
        check = function(actual, value) -- shunt/writelite.yue:1839
          local keys -- shunt/writelite.yue:1840
          do -- shunt/writelite.yue:1840
            local _accum_0 = { } -- shunt/writelite.yue:1840
            local _len_0 = 1 -- shunt/writelite.yue:1840
            for key, _ in pairs(actual) do -- shunt/writelite.yue:1840
              _accum_0[_len_0] = { -- shunt/writelite.yue:1840
                key = key -- shunt/writelite.yue:1840
              } -- shunt/writelite.yue:1840
              _len_0 = _len_0 + 1 -- shunt/writelite.yue:1840
            end -- shunt/writelite.yue:1840
            keys = _accum_0 -- shunt/writelite.yue:1840
          end -- shunt/writelite.yue:1840
          require('shunt.spec')._assert_that([=[keys]=], keys, (len(eq(1))), tostring("shunt/writelite.yue") .. ":" .. tostring(1841)) -- shunt/writelite.yue:1841
          local key = keys[1].key; -- shunt/writelite.yue:1843
          return require('shunt.spec')._expect_that([=[key[key]]=], key[key], (eq(true)), tostring("shunt/writelite.yue") .. ":" .. tostring(1844)) -- shunt/writelite.yue:1844
        end -- shunt/writelite.yue:1839
      } -- shunt/writelite.yue:1834
    } -- shunt/writelite.yue:1754
    for _index_0 = 1, #tests do -- shunt/writelite.yue:1847
      local test = tests[_index_0] -- shunt/writelite.yue:1847
      local name, value, matcher, check = test.name, test.value, test.matcher, test.check -- shunt/writelite.yue:1848
      if matcher == nil then -- shunt/writelite.yue:1851
        matcher = deep_eq -- shunt/writelite.yue:1851
      end -- shunt/writelite.yue:1851
      if check == nil then -- shunt/writelite.yue:1852
        check = function(actual, value) -- shunt/writelite.yue:1852
          return require('shunt.spec')._expect_that([=[actual]=], actual, (deep_eq(value)), tostring("shunt/writelite.yue") .. ":" .. tostring(1853)) -- shunt/writelite.yue:1853
        end -- shunt/writelite.yue:1852
      end -- shunt/writelite.yue:1852
      it("works for " .. tostring(name), function() -- shunt/writelite.yue:1855
        local serialised = Serialiser():write(value):finish() -- shunt/writelite.yue:1856
        local serialised_directly = Serialiser:serialise(value); -- shunt/writelite.yue:1860
        require('shunt.spec')._expect_that([=[serialised_directly]=], serialised_directly, (eq(serialised)), tostring("shunt/writelite.yue") .. ":" .. tostring(1861)) -- shunt/writelite.yue:1861
        print_serialised(serialised) -- shunt/writelite.yue:1863
        local deserialised_from_string, eof = (Deserialiser(serialised)):parse() -- shunt/writelite.yue:1864
        check(deserialised_from_string, value); -- shunt/writelite.yue:1866
        require('shunt.spec')._expect_that([=[eof]=], eof, (eq(true)), tostring("shunt/writelite.yue") .. ":" .. tostring(1867)) -- shunt/writelite.yue:1867
        local direct_deserialised_from_string = Deserialiser:deserialise(serialised) -- shunt/writelite.yue:1869
        check(direct_deserialised_from_string, value) -- shunt/writelite.yue:1870
        local path = os.tmpname() -- shunt/writelite.yue:1872
        local file = assert(io.open(path, 'w+')) -- shunt/writelite.yue:1873
        assert(file:write(serialised)) -- shunt/writelite.yue:1875
        assert(file:flush()) -- shunt/writelite.yue:1876
        assert(file:seek('set', 0)) -- shunt/writelite.yue:1877
        local err -- shunt/writelite.yue:1879
xpcall(function() -- shunt/writelite.yue:1881
          local deserialised_from_file = (Deserialiser(file)):parse() -- shunt/writelite.yue:1882
          return check(deserialised_from_file, value) -- shunt/writelite.yue:1884
        end, function(err2) -- shunt/writelite.yue:1884
          err = err2 -- shunt/writelite.yue:1886
        end) -- shunt/writelite.yue:1886
        if (err ~= nil) then -- shunt/writelite.yue:1887
          error(err) -- shunt/writelite.yue:1888
        end -- shunt/writelite.yue:1887
        assert(file:seek('set', 0)) -- shunt/writelite.yue:1890
xpcall(function() -- shunt/writelite.yue:1891
          local direct_deserialised_from_file = Deserialiser:deserialise(file) -- shunt/writelite.yue:1892
          return check(direct_deserialised_from_file, value) -- shunt/writelite.yue:1893
        end, function(err2) -- shunt/writelite.yue:1893
          err = err2 -- shunt/writelite.yue:1895
        end) -- shunt/writelite.yue:1895
        if (err ~= nil) then -- shunt/writelite.yue:1896
          error(err) -- shunt/writelite.yue:1897
        end -- shunt/writelite.yue:1896
        assert(file:close()) -- shunt/writelite.yue:1899
        return os.remove(path) -- shunt/writelite.yue:1900
      end) -- shunt/writelite.yue:1855
    end -- shunt/writelite.yue:1900
  end) -- shunt/writelite.yue:1900
end) -- shunt/writelite.yue:1073
return _module_0 -- shunt/writelite.yue:1900
end
package.preload['shunt.compat'] = function(...)
-- [yue]: shunt/compat.yue
local _module_0 = { } -- shunt/compat.yue:1
local detect_host, HOST, LUA, compat_applied, apply_compat, test_compat -- shunt/compat.yue:1
detect_host = function() -- shunt/compat.yue:3
  if (collectgarbage ~= nil) then -- shunt/compat.yue:4
    return 'native' -- shunt/compat.yue:5
  else -- shunt/compat.yue:7
    return 'minecraft' -- shunt/compat.yue:7
  end -- shunt/compat.yue:4
end -- shunt/compat.yue:3
HOST = detect_host() -- shunt/compat.yue:8
_module_0["HOST"] = HOST -- shunt/compat.yue:8
LUA = 'luajit' -- shunt/compat.yue:9
_module_0["LUA"] = LUA -- shunt/compat.yue:9
compat_applied = false -- shunt/compat.yue:11
apply_compat = function() -- shunt/compat.yue:12
  compat_applied = true -- shunt/compat.yue:13
  local _obj_0 = table -- shunt/compat.yue:15
  if _obj_0.unpack == nil then -- shunt/compat.yue:15
    _obj_0.unpack = assert(unpack, 'internal error: cannot find unpack function') -- shunt/compat.yue:15
  end -- shunt/compat.yue:15
  local _obj_1 = os -- shunt/compat.yue:17
  if _obj_1.sleep == nil then -- shunt/compat.yue:17
    _obj_1.sleep = function(n_secs) -- shunt/compat.yue:17
      return os.execute("sleep " .. tostring(n_secs) .. "s") -- shunt/compat.yue:18
    end -- shunt/compat.yue:17
  end -- shunt/compat.yue:18
  local _obj_2 = os -- shunt/compat.yue:20
  if _obj_2.tmpname == nil then -- shunt/compat.yue:20
    _obj_2.tmpname = function() -- shunt/compat.yue:20
      while true do -- shunt/compat.yue:21
        local _continue_0 = false -- shunt/compat.yue:22
        repeat -- shunt/compat.yue:22
          local f = "lua_" .. tostring(('%x'):format(math.random(1, 100000))) -- shunt/compat.yue:22
          do -- shunt/compat.yue:23
            local _with_0 = io.open(f, 'r') -- shunt/compat.yue:23
            if _with_0 ~= nil then -- shunt/compat.yue:23
              _with_0:close() -- shunt/compat.yue:24
              _continue_0 = true -- shunt/compat.yue:25
              break -- shunt/compat.yue:25
            end -- shunt/compat.yue:23
          end -- shunt/compat.yue:23
          do -- shunt/compat.yue:26
            return f -- shunt/compat.yue:26
          end -- shunt/compat.yue:26
          _continue_0 = true -- shunt/compat.yue:22
        until true -- shunt/compat.yue:26
        if not _continue_0 then -- shunt/compat.yue:26
          break -- shunt/compat.yue:26
        end -- shunt/compat.yue:26
      end -- shunt/compat.yue:26
    end -- shunt/compat.yue:20
  end -- shunt/compat.yue:26
  local _obj_3 = os -- shunt/compat.yue:28
  if _obj_3.remove == nil then -- shunt/compat.yue:28
    _obj_3.remove = function(path) -- shunt/compat.yue:28
      return xpcall(function() -- shunt/compat.yue:29
        fs.delete(path) -- shunt/compat.yue:30
        return true -- shunt/compat.yue:31
      end, function(_) -- shunt/compat.yue:31
        return false -- shunt/compat.yue:33
      end) -- shunt/compat.yue:33
    end -- shunt/compat.yue:28
  end -- shunt/compat.yue:33
  local _obj_4 = os -- shunt/compat.yue:35
  if _obj_4.rename == nil then -- shunt/compat.yue:35
    _obj_4.rename = function(src, dest) -- shunt/compat.yue:35
      return fs.move(src, dest) -- shunt/compat.yue:36
    end -- shunt/compat.yue:35
  end -- shunt/compat.yue:36
  local _obj_5 = os -- shunt/compat.yue:38
  if _obj_5.exit == nil then -- shunt/compat.yue:38
    _obj_5.exit = function(code) -- shunt/compat.yue:38
      return error("EXIT(" .. tostring(code) .. ")") -- shunt/compat.yue:39
    end -- shunt/compat.yue:38
  end -- shunt/compat.yue:39
  if not (fs ~= nil) then -- shunt/compat.yue:41
    fs = { } -- shunt/compat.yue:42
  end -- shunt/compat.yue:41
  local _obj_6 = fs -- shunt/compat.yue:44
  if _obj_6.makeDir == nil then -- shunt/compat.yue:44
    _obj_6.makeDir = function(path) -- shunt/compat.yue:44
      return os.execute("mkdir -p '" .. tostring(path) .. "'") -- shunt/compat.yue:45
    end -- shunt/compat.yue:44
  end -- shunt/compat.yue:45
  local _obj_7 = fs -- shunt/compat.yue:47
  if _obj_7.getFreeSpace == nil then -- shunt/compat.yue:47
    _obj_7.getFreeSpace = function(path) -- shunt/compat.yue:47
      return 1000000 -- shunt/compat.yue:48
    end -- shunt/compat.yue:47
  end -- shunt/compat.yue:48
  local _obj_8 = fs -- shunt/compat.yue:50
  if _obj_8.getCapacity == nil then -- shunt/compat.yue:50
    _obj_8.getCapacity = function(path) -- shunt/compat.yue:50
      return 1000000 -- shunt/compat.yue:51
    end -- shunt/compat.yue:50
  end -- shunt/compat.yue:51
  local _obj_9 = fs -- shunt/compat.yue:53
  if _obj_9.list == nil then -- shunt/compat.yue:53
    _obj_9.list = function(dir) -- shunt/compat.yue:53
      assert((not dir:match("'")), "cannot list directory containing quote mark '" .. tostring(dir) .. "'") -- shunt/compat.yue:54
      local _with_0 = { } -- shunt/compat.yue:55
      local p = assert(io.popen("ls -1 '" .. tostring(dir) .. "'")) -- shunt/compat.yue:56
      local line = p:read('*l') -- shunt/compat.yue:57
      while (line ~= nil) do -- shunt/compat.yue:58
        _with_0[#_with_0 + 1] = line -- shunt/compat.yue:59
        line = p:read('*l') -- shunt/compat.yue:60
      end -- shunt/compat.yue:60
      p:close() -- shunt/compat.yue:61
      return _with_0 -- shunt/compat.yue:55
    end -- shunt/compat.yue:53
  end -- shunt/compat.yue:61
  if not (shell ~= nil) then -- shunt/compat.yue:63
    shell = { } -- shunt/compat.yue:64
  end -- shunt/compat.yue:63
  local _obj_10 = shell -- shunt/compat.yue:66
  if _obj_10.execute == nil then -- shunt/compat.yue:66
    _obj_10.execute = function(...) -- shunt/compat.yue:66
      for i = 1, select('#', ...) do -- shunt/compat.yue:67
        assert('string' == type(select(i, ...))) -- shunt/compat.yue:68
      end -- shunt/compat.yue:68
      local args -- shunt/compat.yue:70
      do -- shunt/compat.yue:70
        local _accum_0 = { } -- shunt/compat.yue:70
        local _len_0 = 1 -- shunt/compat.yue:70
        local _list_0 = { -- shunt/compat.yue:70
          LUA, -- shunt/compat.yue:70
          ... -- shunt/compat.yue:70
        } -- shunt/compat.yue:70
        for _index_0 = 1, #_list_0 do -- shunt/compat.yue:70
          local arg = _list_0[_index_0] -- shunt/compat.yue:70
          _accum_0[_len_0] = "'" .. tostring(arg) .. "'" -- shunt/compat.yue:70
          _len_0 = _len_0 + 1 -- shunt/compat.yue:70
        end -- shunt/compat.yue:70
        args = _accum_0 -- shunt/compat.yue:70
      end -- shunt/compat.yue:70
      local rc = os.execute(table.concat(args, ' ')) -- shunt/compat.yue:71
      return rc == 0 -- shunt/compat.yue:72
    end -- shunt/compat.yue:66
  end -- shunt/compat.yue:72
  local _obj_11 = bit -- shunt/compat.yue:74
  if _obj_11.blshift == nil then -- shunt/compat.yue:74
    _obj_11.blshift = bit.lshift -- shunt/compat.yue:74
  end -- shunt/compat.yue:74
  local _obj_12 = bit -- shunt/compat.yue:75
  if _obj_12.brshift == nil then -- shunt/compat.yue:75
    _obj_12.brshift = bit.rshift -- shunt/compat.yue:75
  end -- shunt/compat.yue:75
  if not (textutils ~= nil) then -- shunt/compat.yue:77
    textutils = { } -- shunt/compat.yue:78
  end -- shunt/compat.yue:77
  local is_list -- shunt/compat.yue:80
  is_list = function(t) -- shunt/compat.yue:80
    local max_key = -1 -- shunt/compat.yue:81
    for k, _ in pairs(t) do -- shunt/compat.yue:82
      if 'number' ~= type(k) then -- shunt/compat.yue:83
        return false -- shunt/compat.yue:84
      end -- shunt/compat.yue:83
      if k % 1 ~= 0 then -- shunt/compat.yue:85
        return false -- shunt/compat.yue:86
      end -- shunt/compat.yue:85
      if k > max_key then -- shunt/compat.yue:87
        max_key = k -- shunt/compat.yue:88
      end -- shunt/compat.yue:87
    end -- shunt/compat.yue:88
    return #t == max_key -- shunt/compat.yue:89
  end -- shunt/compat.yue:80
  local _obj_13 = textutils -- shunt/compat.yue:91
  if _obj_13.serialise == nil then -- shunt/compat.yue:91
    _obj_13.serialise = function(value, opts) -- shunt/compat.yue:91
      if not (opts ~= nil) then -- shunt/compat.yue:92
        error('textutils.serialise must be called with compact:true') -- shunt/compat.yue:93
      end -- shunt/compat.yue:92
      if opts.compact ~= true then -- shunt/compat.yue:94
        error('textutils.serialise must be called with compact:true') -- shunt/compat.yue:95
      end -- shunt/compat.yue:94
      if (opts.allow_repetitions ~= nil) then -- shunt/compat.yue:96
        error('textutils.serialise must not be called with allow_repetitions') -- shunt/compat.yue:97
      end -- shunt/compat.yue:96
      return table.concat((function() -- shunt/compat.yue:99
        local _with_0 = { } -- shunt/compat.yue:99
        local serialise -- shunt/compat.yue:100
        serialise = function(value) -- shunt/compat.yue:100
          local _exp_0 = type(value) -- shunt/compat.yue:101
          if 'nil' == _exp_0 then -- shunt/compat.yue:102
            _with_0[#_with_0 + 1] = 'null' -- shunt/compat.yue:103
          elseif 'boolean' == _exp_0 or 'number' == _exp_0 then -- shunt/compat.yue:104
            _with_0[#_with_0 + 1] = tostring(value) -- shunt/compat.yue:105
          elseif 'string' == _exp_0 then -- shunt/compat.yue:106
            _with_0[#_with_0 + 1] = '"' -- shunt/compat.yue:107
            _with_0[#_with_0 + 1] = value:gsub('"', '\\"') -- shunt/compat.yue:108
            _with_0[#_with_0 + 1] = '"' -- shunt/compat.yue:109
          elseif 'table' == _exp_0 then -- shunt/compat.yue:110
            if is_list(value) then -- shunt/compat.yue:111
              _with_0[#_with_0 + 1] = '[' -- shunt/compat.yue:112
              local first = true -- shunt/compat.yue:113
              for _index_0 = 1, #value do -- shunt/compat.yue:114
                local e = value[_index_0] -- shunt/compat.yue:114
                if first then -- shunt/compat.yue:115
                  first = false -- shunt/compat.yue:116
                else -- shunt/compat.yue:118
                  _with_0[#_with_0 + 1] = ',' -- shunt/compat.yue:118
                end -- shunt/compat.yue:115
                serialise(e) -- shunt/compat.yue:119
              end -- shunt/compat.yue:119
              _with_0[#_with_0 + 1] = ']' -- shunt/compat.yue:120
            else -- shunt/compat.yue:122
              _with_0[#_with_0 + 1] = '{' -- shunt/compat.yue:122
              local first = true -- shunt/compat.yue:123
              for k, v in pairs(value) do -- shunt/compat.yue:124
                if first then -- shunt/compat.yue:125
                  first = false -- shunt/compat.yue:126
                else -- shunt/compat.yue:128
                  _with_0[#_with_0 + 1] = ',' -- shunt/compat.yue:128
                end -- shunt/compat.yue:125
                serialise(k) -- shunt/compat.yue:129
                _with_0[#_with_0 + 1] = ':' -- shunt/compat.yue:130
                serialise(v) -- shunt/compat.yue:131
              end -- shunt/compat.yue:131
              _with_0[#_with_0 + 1] = '}' -- shunt/compat.yue:132
            end -- shunt/compat.yue:111
          else -- shunt/compat.yue:134
            return error("cannot serialise a " .. tostring(type(value)) .. " as json") -- shunt/compat.yue:134
          end -- shunt/compat.yue:134
        end -- shunt/compat.yue:100
        serialise(value) -- shunt/compat.yue:135
        return _with_0 -- shunt/compat.yue:99
      end)()) -- shunt/compat.yue:135
    end -- shunt/compat.yue:91
  end -- shunt/compat.yue:135
  local _obj_14 = textutils -- shunt/compat.yue:137
  if _obj_14.deserialise == nil then -- shunt/compat.yue:137
    _obj_14.deserialise = function(raw) -- shunt/compat.yue:137
      local index = 1 -- shunt/compat.yue:138
      local deserialise -- shunt/compat.yue:139
      deserialise = function() -- shunt/compat.yue:139
        do -- shunt/compat.yue:140
          local token = raw:match('^null', index) -- shunt/compat.yue:140
          if token then -- shunt/compat.yue:140
            index = index + (#token) -- shunt/compat.yue:141
            return nil -- shunt/compat.yue:142
          else -- shunt/compat.yue:143
            token = raw:match('^true', index) -- shunt/compat.yue:143
            if token then -- shunt/compat.yue:143
              index = index + (#token) -- shunt/compat.yue:144
              return true -- shunt/compat.yue:145
            else -- shunt/compat.yue:146
              token = raw:match('^false', index) -- shunt/compat.yue:146
              if token then -- shunt/compat.yue:146
                index = index + (#token) -- shunt/compat.yue:147
                return false -- shunt/compat.yue:148
              else -- shunt/compat.yue:149
                do -- shunt/compat.yue:149
                  local number = raw:match('^[0-9]+%.[0-9]+', index) -- shunt/compat.yue:149
                  if number then -- shunt/compat.yue:149
                    index = index + (#number) -- shunt/compat.yue:150
                    return tonumber(number) -- shunt/compat.yue:151
                  else -- shunt/compat.yue:152
                    number = raw:match('^[0-9]+', index) -- shunt/compat.yue:152
                    if number then -- shunt/compat.yue:152
                      index = index + (#number) -- shunt/compat.yue:153
                      return tonumber(number) -- shunt/compat.yue:154
                    else -- shunt/compat.yue:155
                      do -- shunt/compat.yue:155
                        local string = raw:match('^"([^"]*)"', index) -- shunt/compat.yue:155
                        if string then -- shunt/compat.yue:155
                          index = index + (2 + #string) -- shunt/compat.yue:156
                          return string -- shunt/compat.yue:157
                        else -- shunt/compat.yue:158
                          token = raw:match('^%[', index) -- shunt/compat.yue:158
                          if token then -- shunt/compat.yue:158
                            index = index + 1 -- shunt/compat.yue:159
                            local _with_0 = { } -- shunt/compat.yue:160
                            local first = true -- shunt/compat.yue:161
                            while not raw:match('^]', index) do -- shunt/compat.yue:162
                              if first then -- shunt/compat.yue:163
                                first = false -- shunt/compat.yue:164
                              else -- shunt/compat.yue:165
                                if raw:match('^,', index) then -- shunt/compat.yue:165
                                  index = index + 1 -- shunt/compat.yue:166
                                else -- shunt/compat.yue:168
                                  error("expected `,` at position " .. tostring(index)) -- shunt/compat.yue:168
                                end -- shunt/compat.yue:165
                              end -- shunt/compat.yue:163
                              _with_0[#_with_0 + 1] = deserialise() -- shunt/compat.yue:169
                            end -- shunt/compat.yue:169
                            index = index + 1 -- shunt/compat.yue:170
                            return _with_0 -- shunt/compat.yue:160
                          else -- shunt/compat.yue:171
                            if raw:match('^{', index) then -- shunt/compat.yue:171
                              local _with_0 = { } -- shunt/compat.yue:172
                              index = index + 1 -- shunt/compat.yue:173
                              local first = true -- shunt/compat.yue:174
                              while not raw:match('^}', index) do -- shunt/compat.yue:175
                                if first then -- shunt/compat.yue:176
                                  first = false -- shunt/compat.yue:177
                                else -- shunt/compat.yue:178
                                  if raw:match('^,', index) then -- shunt/compat.yue:178
                                    index = index + 1 -- shunt/compat.yue:179
                                  else -- shunt/compat.yue:181
                                    error("expected `,` at position " .. tostring(index)) -- shunt/compat.yue:181
                                  end -- shunt/compat.yue:178
                                end -- shunt/compat.yue:176
                                local key = deserialise() -- shunt/compat.yue:183
                                if raw:match('^:', index) then -- shunt/compat.yue:184
                                  index = index + 1 -- shunt/compat.yue:185
                                else -- shunt/compat.yue:187
                                  error("expected `:` at position " .. tostring(index)) -- shunt/compat.yue:187
                                end -- shunt/compat.yue:184
                                _with_0[key] = deserialise() -- shunt/compat.yue:188
                              end -- shunt/compat.yue:188
                              index = index + 1 -- shunt/compat.yue:189
                              return _with_0 -- shunt/compat.yue:172
                            else -- shunt/compat.yue:191
                              return error("unexpected character " .. tostring(raw:sub(index, index)) .. " at " .. tostring(index)) -- shunt/compat.yue:191
                            end -- shunt/compat.yue:171
                          end -- shunt/compat.yue:158
                        end -- shunt/compat.yue:155
                      end -- shunt/compat.yue:155
                    end -- shunt/compat.yue:152
                  end -- shunt/compat.yue:149
                end -- shunt/compat.yue:149
              end -- shunt/compat.yue:146
            end -- shunt/compat.yue:143
          end -- shunt/compat.yue:140
        end -- shunt/compat.yue:140
      end -- shunt/compat.yue:139
      local ret = deserialise() -- shunt/compat.yue:192
      if #raw ~= index - 1 then -- shunt/compat.yue:193
        error("deserialisation ended early (parsed " .. tostring(index) .. " of " .. tostring(#raw) .. ")") -- shunt/compat.yue:194
      end -- shunt/compat.yue:193
      return ret -- shunt/compat.yue:195
    end -- shunt/compat.yue:137
  end -- shunt/compat.yue:195
end -- shunt/compat.yue:12
_module_0["apply_compat"] = apply_compat -- shunt/compat.yue:195
test_compat = function() -- shunt/compat.yue:197
  if not compat_applied then -- shunt/compat.yue:198
    error('call apply_compat before testing compat') -- shunt/compat.yue:199
  end -- shunt/compat.yue:198
  local tests = { -- shunt/compat.yue:201
    { -- shunt/compat.yue:201
      name = 'os.tmpname returns a string', -- shunt/compat.yue:201
      check = function() -- shunt/compat.yue:202
        return assert('string' == type(os.tmpname())) -- shunt/compat.yue:203
      end -- shunt/compat.yue:202
    }, -- shunt/compat.yue:201
    { -- shunt/compat.yue:204
      name = 'os.remove removes files', -- shunt/compat.yue:204
      check = function() -- shunt/compat.yue:205
        local TEST_FILE = '.test_file_hj4k3h5jio' -- shunt/compat.yue:206
        do -- shunt/compat.yue:207
          local _with_0 = io.open(TEST_FILE, 'r') -- shunt/compat.yue:207
          if _with_0 ~= nil then -- shunt/compat.yue:207
            _with_0:close() -- shunt/compat.yue:208
            error("test file '" .. tostring(TEST_FILE) .. "' already exists, please remove it") -- shunt/compat.yue:209
          end -- shunt/compat.yue:207
        end -- shunt/compat.yue:207
        do -- shunt/compat.yue:210
          local _with_0 = assert(io.open(TEST_FILE, 'w+')) -- shunt/compat.yue:210
          _with_0:close() -- shunt/compat.yue:211
        end -- shunt/compat.yue:210
        do -- shunt/compat.yue:212
          local _with_0 = assert(io.open(TEST_FILE, 'r')) -- shunt/compat.yue:212
          _with_0:close() -- shunt/compat.yue:213
        end -- shunt/compat.yue:212
        os.remove(TEST_FILE) -- shunt/compat.yue:214
        local _with_0 = io.open(TEST_FILE, 'r') -- shunt/compat.yue:215
        if _with_0 ~= nil then -- shunt/compat.yue:215
          _with_0:close() -- shunt/compat.yue:216
          error("expected test file '" .. tostring(TEST_FILE) .. "' to have been removed after calling os.remove") -- shunt/compat.yue:217
        end -- shunt/compat.yue:215
        return _with_0 -- shunt/compat.yue:215
      end -- shunt/compat.yue:205
    }, -- shunt/compat.yue:204
    { -- shunt/compat.yue:218
      name = 'HOST is unchanged', -- shunt/compat.yue:218
      check = function() -- shunt/compat.yue:219
        local host = detect_host() -- shunt/compat.yue:220
        if HOST ~= host then -- shunt/compat.yue:221
          return error("host detection heuristic changed") -- shunt/compat.yue:222
        end -- shunt/compat.yue:221
      end -- shunt/compat.yue:219
    }, -- shunt/compat.yue:218
    { -- shunt/compat.yue:223
      name = 'json roundtrip', -- shunt/compat.yue:223
      check = function() -- shunt/compat.yue:224
        local case -- shunt/compat.yue:225
        case = function(value, check) -- shunt/compat.yue:225
          if check == nil then -- shunt/compat.yue:226
            check = function(v) -- shunt/compat.yue:226
              return assert(v == value, "expected " .. tostring(value) .. " but got " .. tostring(v)) -- shunt/compat.yue:227
            end -- shunt/compat.yue:226
          end -- shunt/compat.yue:227
          return check(textutils.deserialise(textutils.serialise(value, { -- shunt/compat.yue:228
            compact = true -- shunt/compat.yue:228
          }))) -- shunt/compat.yue:228
        end -- shunt/compat.yue:225
        case(nil) -- shunt/compat.yue:229
        case({ -- shunt/compat.yue:230
          '123', -- shunt/compat.yue:230
          '321' -- shunt/compat.yue:230
        }, function(v) -- shunt/compat.yue:230
          assert(v[1] == '123', "v[1] incorrect: " .. tostring(v[1])) -- shunt/compat.yue:231
          return assert(v[2] == '321', "v[2] incorrect: " .. tostring(v[2])) -- shunt/compat.yue:232
        end) -- shunt/compat.yue:230
        return case({ -- shunt/compat.yue:234
          world = 'how', -- shunt/compat.yue:234
          ['hell\\o'] = 123, -- shunt/compat.yue:235
          are = true, -- shunt/compat.yue:236
          you = false -- shunt/compat.yue:237
        }, function(v) -- shunt/compat.yue:238
          assert(v.world == 'how', "v.world incorrect: " .. tostring(v.world)) -- shunt/compat.yue:239
          assert(v['hell\\o'] == 123, "v.hello incorrect: " .. tostring(v['hell\\o'])) -- shunt/compat.yue:240
          assert(v.are == true, "v.are incorrect: " .. tostring(v.are)) -- shunt/compat.yue:241
          return assert(v.you == false, "v.you incorrect: " .. tostring(v.you)) -- shunt/compat.yue:242
        end) -- shunt/compat.yue:242
      end -- shunt/compat.yue:224
    } -- shunt/compat.yue:223
  } -- shunt/compat.yue:200
  local failed = false -- shunt/compat.yue:243
  for _index_0 = 1, #tests do -- shunt/compat.yue:244
    local test = tests[_index_0] -- shunt/compat.yue:244
xpcall(function() -- shunt/compat.yue:245
      return test.check() -- shunt/compat.yue:246
    end, function(err) -- shunt/compat.yue:246
      print("* test '" .. tostring(test.name) .. "' failed:\n  " .. tostring(err)) -- shunt/compat.yue:248
      failed = true -- shunt/compat.yue:249
    end) -- shunt/compat.yue:249
  end -- shunt/compat.yue:249
  if failed then -- shunt/compat.yue:250
    return error('some compatibility checks failed') -- shunt/compat.yue:251
  end -- shunt/compat.yue:250
end -- shunt/compat.yue:197
_module_0["test_compat"] = test_compat -- shunt/compat.yue:251
return _module_0 -- shunt/compat.yue:251
end
-- [yue]: libshunt.yue
local re_exports = { -- libshunt.yue:2
  ['libshunt.clap'] = function() -- libshunt.yue:2
    return require('shunt.clap') -- libshunt.yue:2
  end, -- libshunt.yue:2
  ['libshunt.logger'] = function() -- libshunt.yue:3
    return require('shunt.logger') -- libshunt.yue:3
  end, -- libshunt.yue:3
  ['libshunt.quicktype'] = function() -- libshunt.yue:4
    return require('shunt.quicktype') -- libshunt.yue:4
  end, -- libshunt.yue:4
  ['libshunt.spec'] = function() -- libshunt.yue:5
    return require('shunt.spec') -- libshunt.yue:5
  end, -- libshunt.yue:5
  ['libshunt.state'] = function() -- libshunt.yue:6
    return require('shunt.state') -- libshunt.yue:6
  end, -- libshunt.yue:6
  ['libshunt.writelite'] = function() -- libshunt.yue:7
    return require('shunt.writelite') -- libshunt.yue:7
  end -- libshunt.yue:7
} -- libshunt.yue:1
for lib, src_fn in pairs(re_exports) do -- libshunt.yue:8
  package.preload[lib] = src_fn -- libshunt.yue:9
end -- libshunt.yue:9
return setmetatable({ }, { -- libshunt.yue:11
  __index = function(self) -- libshunt.yue:11
    local lib_names -- libshunt.yue:12
    do -- libshunt.yue:12
      local _accum_0 = { } -- libshunt.yue:12
      local _len_0 = 1 -- libshunt.yue:12
      for lib_name, _ in pairs(re_exports) do -- libshunt.yue:12
        _accum_0[_len_0] = lib_name -- libshunt.yue:12
        _len_0 = _len_0 + 1 -- libshunt.yue:12
      end -- libshunt.yue:12
      lib_names = _accum_0 -- libshunt.yue:12
    end -- libshunt.yue:12
    table.sort(lib_names) -- libshunt.yue:13
    return error("libshunt modules are accessed by calling `require'\navailable modules:\n  " .. tostring(table.concat(lib_names, '\n  '))) -- libshunt.yue:14
  end -- libshunt.yue:11
}) -- libshunt.yue:14
