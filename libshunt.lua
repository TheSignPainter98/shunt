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
local T, t_impl, is, COLLECT_STATS, type_checkers, type_checker, F, function_types, function_type, is_valid_type_spec, parse, contains, TypeSpecParser, T_PAREN_OPEN, T_PAREN_CLOSE, T_BRACE_OPEN, T_BRACE_CLOSE, T_BRACKET_OPEN, T_BRACKET_CLOSE, T_ANGLE_OPEN, T_ANGLE_CLOSE, T_COMMA, T_COLON, T_BANG, T_THIN_ARROW, T_FAT_ARROW, T_DOTDOTDOT, T_QUESTION, T_PLUS, T_PIPE, T_NAME, T_PREFIXED_NAME, T_BOOLEAN, T_NUMBER, T_STRING, Lexer, Checkpoint, known_primitives, named_type, prefixed_named_type, Is, Primitive, Any, Some, Never, UserType, SingletonType, BooleanType, NumberType, StringType, Optional, Array, Tuple, Struct, Field, Set, Mapping, Function, Method, Remainder, Disjunction, Conjunction, CheckerBuilder, Label, C_PUSH, C_PUSH_METATABLE, C_POP, C_ASSERT_NON_NIL, C_ASSERT_PRIMITIVE, C_ASSERT_TRUTHY, C_ASSERT_LEN, C_ASSERT_EQ, C_ASSERT_NEVER, C_GET_FIELD, C_INCR, C_DECR, C_NEXT, C_JMP, C_JMP_IF_NIL, C_PUSH_CHECKER, C_PUSH_UNION_CTX, C_CLEAR_BAILING, C_SET_UNION_BAIL_TARGET, C_POP_UNION_CTX, V_NIL, checker_program_repr, LABEL_PLACEHOLDER, MAX_CHECKER_DEPTH, stack_size, stack, keys_used, num_unions, union_depths, union_bail_jumps, root_union, num_running_checkers, instruction_counts, check, user_types, declare_type, declare_singleton_type, skip_typechecking, deactivate_typechecks, stats -- shunt/quicktype.yue:1
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
          token = T_BRACE_OPEN, -- shunt/quicktype.yue:266
          action = (function() -- shunt/quicktype.yue:267
            local _base_1 = self -- shunt/quicktype.yue:267
            local _fn_0 = _base_1.parse_table -- shunt/quicktype.yue:267
            return _fn_0 and function(...) -- shunt/quicktype.yue:267
              return _fn_0(_base_1, ...) -- shunt/quicktype.yue:267
            end -- shunt/quicktype.yue:267
          end)() -- shunt/quicktype.yue:267
        } -- shunt/quicktype.yue:266
      }) -- shunt/quicktype.yue:267
    end, -- shunt/quicktype.yue:269
    parse_named_type = function(self) -- shunt/quicktype.yue:269
      return named_type(self:expect(T_NAME)) -- shunt/quicktype.yue:270
    end, -- shunt/quicktype.yue:272
    parse_prefixed_named_type = function(self) -- shunt/quicktype.yue:272
      return prefixed_named_type(self:expect(T_PREFIXED_NAME)) -- shunt/quicktype.yue:273
    end, -- shunt/quicktype.yue:275
    parse_boolean_type = function(self) -- shunt/quicktype.yue:275
      return BooleanType(self:expect(T_BOOLEAN)) -- shunt/quicktype.yue:276
    end, -- shunt/quicktype.yue:278
    parse_number_type = function(self) -- shunt/quicktype.yue:278
      return NumberType(self:expect(T_NUMBER)) -- shunt/quicktype.yue:279
    end, -- shunt/quicktype.yue:281
    parse_string_type = function(self) -- shunt/quicktype.yue:281
      return StringType(self:expect(T_STRING)) -- shunt/quicktype.yue:282
    end, -- shunt/quicktype.yue:284
    parse_array = function(self) -- shunt/quicktype.yue:284
      local elem_type = self:sequence({ -- shunt/quicktype.yue:286
        { -- shunt/quicktype.yue:286
          token = T_BRACKET_OPEN -- shunt/quicktype.yue:286
        }, -- shunt/quicktype.yue:286
        { -- shunt/quicktype.yue:287
          action = (function() -- shunt/quicktype.yue:287
            local _base_1 = self -- shunt/quicktype.yue:287
            local _fn_0 = _base_1.parse_type -- shunt/quicktype.yue:287
            return _fn_0 and function(...) -- shunt/quicktype.yue:287
              return _fn_0(_base_1, ...) -- shunt/quicktype.yue:287
            end -- shunt/quicktype.yue:287
          end)() -- shunt/quicktype.yue:287
        }, -- shunt/quicktype.yue:287
        { -- shunt/quicktype.yue:288
          token = T_BRACKET_CLOSE -- shunt/quicktype.yue:288
        } -- shunt/quicktype.yue:288
      })[2] -- shunt/quicktype.yue:285
      return Array(elem_type) -- shunt/quicktype.yue:289
    end, -- shunt/quicktype.yue:291
    parse_tuple_or_function = function(self) -- shunt/quicktype.yue:291
      self:expect(T_PAREN_OPEN) -- shunt/quicktype.yue:292
      local types -- shunt/quicktype.yue:293
      if self:maybe(T_PAREN_CLOSE) then -- shunt/quicktype.yue:294
        types = { } -- shunt/quicktype.yue:295
      else -- shunt/quicktype.yue:297
        types = self:sequence({ -- shunt/quicktype.yue:298
          { -- shunt/quicktype.yue:298
            action = function() -- shunt/quicktype.yue:298
              return self:parse_repeat_separated((function() -- shunt/quicktype.yue:299
                local _base_1 = self -- shunt/quicktype.yue:299
                local _fn_0 = _base_1.parse_function_io_type -- shunt/quicktype.yue:299
                return _fn_0 and function(...) -- shunt/quicktype.yue:299
                  return _fn_0(_base_1, ...) -- shunt/quicktype.yue:299
                end -- shunt/quicktype.yue:299
              end)(), T_COMMA, { -- shunt/quicktype.yue:299
                separator_trails_before = T_PAREN_CLOSE -- shunt/quicktype.yue:299
              }) -- shunt/quicktype.yue:299
            end -- shunt/quicktype.yue:298
          }, -- shunt/quicktype.yue:298
          { -- shunt/quicktype.yue:300
            token = T_PAREN_CLOSE -- shunt/quicktype.yue:300
          } -- shunt/quicktype.yue:300
        })[1] -- shunt/quicktype.yue:297
      end -- shunt/quicktype.yue:294
      local function_arrow -- shunt/quicktype.yue:301
      do -- shunt/quicktype.yue:301
        local _exp_0 = (self:maybe(T_THIN_ARROW)) -- shunt/quicktype.yue:301
        if _exp_0 ~= nil then -- shunt/quicktype.yue:301
          function_arrow = _exp_0 -- shunt/quicktype.yue:301
        else -- shunt/quicktype.yue:301
          function_arrow = self:maybe(T_FAT_ARROW) -- shunt/quicktype.yue:301
        end -- shunt/quicktype.yue:301
      end -- shunt/quicktype.yue:301
      if not (function_arrow ~= nil) then -- shunt/quicktype.yue:302
        for _index_0 = 1, #types do -- shunt/quicktype.yue:303
          local ty = types[_index_0] -- shunt/quicktype.yue:303
          if ty:is(Remainder) then -- shunt/quicktype.yue:304
            error('tuple type cannot contain varargs') -- shunt/quicktype.yue:305
          end -- shunt/quicktype.yue:304
        end -- shunt/quicktype.yue:305
        return Tuple(types) -- shunt/quicktype.yue:306
      end -- shunt/quicktype.yue:302
      do -- shunt/quicktype.yue:308
        local _max_0 = -1 -- shunt/quicktype.yue:308
        for _index_0 = 1, _max_0 < 0 and #types + _max_0 or _max_0 do -- shunt/quicktype.yue:308
          local ty = types[_index_0] -- shunt/quicktype.yue:308
          if ty:is(Remainder) then -- shunt/quicktype.yue:309
            error('varargs can only be declared at end of a param type list') -- shunt/quicktype.yue:310
          end -- shunt/quicktype.yue:309
        end -- shunt/quicktype.yue:310
      end -- shunt/quicktype.yue:310
      local last_ty = types[#types] -- shunt/quicktype.yue:312
      if (last_ty ~= nil) and last_ty:is(Remainder) then -- shunt/quicktype.yue:313
        setmetatable(types, { -- shunt/quicktype.yue:314
          __index = function(self) -- shunt/quicktype.yue:314
            return last_ty.type -- shunt/quicktype.yue:314
          end -- shunt/quicktype.yue:314
        }) -- shunt/quicktype.yue:314
        types[#types] = nil -- shunt/quicktype.yue:315
      end -- shunt/quicktype.yue:313
      if T_THIN_ARROW == function_arrow then -- shunt/quicktype.yue:318
        return Function(types, self:parse_return_type()) -- shunt/quicktype.yue:319
      elseif T_FAT_ARROW == function_arrow then -- shunt/quicktype.yue:320
        return Method(types, self:parse_return_type()) -- shunt/quicktype.yue:321
      else -- shunt/quicktype.yue:323
        return error("internal error: unknown function arrow type: " .. tostring(function_arrow)) -- shunt/quicktype.yue:323
      end -- shunt/quicktype.yue:323
    end, -- shunt/quicktype.yue:325
    parse_return_type = function(self) -- shunt/quicktype.yue:325
      return self:select({ -- shunt/quicktype.yue:327
        { -- shunt/quicktype.yue:327
          token = T_ANGLE_OPEN, -- shunt/quicktype.yue:327
          action = function() -- shunt/quicktype.yue:328
            self:expect(T_ANGLE_OPEN) -- shunt/quicktype.yue:329
            if self:maybe(T_ANGLE_CLOSE) then -- shunt/quicktype.yue:330
              return { } -- shunt/quicktype.yue:331
            end -- shunt/quicktype.yue:330
            local types = self:parse_repeat_separated((function() -- shunt/quicktype.yue:332
              local _base_1 = self -- shunt/quicktype.yue:332
              local _fn_0 = _base_1.parse_function_io_type -- shunt/quicktype.yue:332
              return _fn_0 and function(...) -- shunt/quicktype.yue:332
                return _fn_0(_base_1, ...) -- shunt/quicktype.yue:332
              end -- shunt/quicktype.yue:332
            end)(), T_COMMA, { -- shunt/quicktype.yue:332
              separator_trails_before = T_ANGLE_CLOSE -- shunt/quicktype.yue:332
            }) -- shunt/quicktype.yue:332
            self:expect(T_ANGLE_CLOSE) -- shunt/quicktype.yue:333
            do -- shunt/quicktype.yue:335
              local _max_0 = -1 -- shunt/quicktype.yue:335
              for _index_0 = 1, _max_0 < 0 and #types + _max_0 or _max_0 do -- shunt/quicktype.yue:335
                local ty = types[_index_0] -- shunt/quicktype.yue:335
                if ty:is(Remainder) then -- shunt/quicktype.yue:336
                  error('variable returns can only be declared at end of a return type list') -- shunt/quicktype.yue:337
                end -- shunt/quicktype.yue:336
              end -- shunt/quicktype.yue:337
            end -- shunt/quicktype.yue:337
            local last_ty = types[#types] -- shunt/quicktype.yue:339
            if (last_ty ~= nil) and last_ty:is(Remainder) then -- shunt/quicktype.yue:340
              setmetatable(types, { -- shunt/quicktype.yue:341
                __index = function(self) -- shunt/quicktype.yue:341
                  return last_ty.type -- shunt/quicktype.yue:341
                end -- shunt/quicktype.yue:341
              }) -- shunt/quicktype.yue:341
              types[#types] = nil -- shunt/quicktype.yue:342
            end -- shunt/quicktype.yue:340
            return types -- shunt/quicktype.yue:344
          end -- shunt/quicktype.yue:328
        }, -- shunt/quicktype.yue:327
        otherwise = function() -- shunt/quicktype.yue:345
          local ty = self:parse_function_io_type() -- shunt/quicktype.yue:346
          if ty:is(Remainder) then -- shunt/quicktype.yue:347
            return setmetatable({ }, { -- shunt/quicktype.yue:348
              __index = function(self) -- shunt/quicktype.yue:348
                return ty.type -- shunt/quicktype.yue:348
              end -- shunt/quicktype.yue:348
            }) -- shunt/quicktype.yue:348
          else -- shunt/quicktype.yue:350
            return { -- shunt/quicktype.yue:350
              ty -- shunt/quicktype.yue:350
            } -- shunt/quicktype.yue:350
          end -- shunt/quicktype.yue:347
        end -- shunt/quicktype.yue:345
      }) -- shunt/quicktype.yue:350
    end, -- shunt/quicktype.yue:352
    parse_function_io_type = function(self) -- shunt/quicktype.yue:352
      local ty = self:parse_type() -- shunt/quicktype.yue:353
      if ((self:maybe(T_DOTDOTDOT)) ~= nil) then -- shunt/quicktype.yue:354
        return Remainder(ty) -- shunt/quicktype.yue:355
      else -- shunt/quicktype.yue:357
        return ty -- shunt/quicktype.yue:357
      end -- shunt/quicktype.yue:354
    end, -- shunt/quicktype.yue:359
    parse_table = function(self) -- shunt/quicktype.yue:359
      local table = self:sequence({ -- shunt/quicktype.yue:361
        { -- shunt/quicktype.yue:361
          token = T_BRACE_OPEN -- shunt/quicktype.yue:361
        }, -- shunt/quicktype.yue:361
        { -- shunt/quicktype.yue:362
          action = (function() -- shunt/quicktype.yue:362
            local _base_1 = self -- shunt/quicktype.yue:362
            local _fn_0 = _base_1.parse_table_content -- shunt/quicktype.yue:362
            return _fn_0 and function(...) -- shunt/quicktype.yue:362
              return _fn_0(_base_1, ...) -- shunt/quicktype.yue:362
            end -- shunt/quicktype.yue:362
          end)() -- shunt/quicktype.yue:362
        }, -- shunt/quicktype.yue:362
        { -- shunt/quicktype.yue:363
          token = T_BRACE_CLOSE -- shunt/quicktype.yue:363
        } -- shunt/quicktype.yue:363
      })[2] -- shunt/quicktype.yue:360
      return table -- shunt/quicktype.yue:364
    end, -- shunt/quicktype.yue:366
    parse_table_content = function(self) -- shunt/quicktype.yue:366
      if ((function() -- shunt/quicktype.yue:367
        local _exp_0 = self.lexer:peek() -- shunt/quicktype.yue:367
        if _exp_0 ~= nil then -- shunt/quicktype.yue:367
          return _exp_0 -- shunt/quicktype.yue:367
        else -- shunt/quicktype.yue:367
          return { } -- shunt/quicktype.yue:367
        end -- shunt/quicktype.yue:367
      end)()).type == T_BRACE_CLOSE then -- shunt/quicktype.yue:367
        return Struct(nil, { }) -- shunt/quicktype.yue:368
      end -- shunt/quicktype.yue:367
      local metatable_type -- shunt/quicktype.yue:370
      if ((self:maybe(T_ANGLE_OPEN)) ~= nil) then -- shunt/quicktype.yue:371
        self:expect(T_ANGLE_CLOSE) -- shunt/quicktype.yue:372
        self:expect(T_COLON) -- shunt/quicktype.yue:373
        metatable_type = self:parse_type() -- shunt/quicktype.yue:374
        local checkpoint = self.lexer:checkpoint() -- shunt/quicktype.yue:375
        self:maybe(T_COMMA) -- shunt/quicktype.yue:376
        if ((function() -- shunt/quicktype.yue:377
          local _exp_0 = self.lexer:peek() -- shunt/quicktype.yue:377
          if _exp_0 ~= nil then -- shunt/quicktype.yue:377
            return _exp_0 -- shunt/quicktype.yue:377
          else -- shunt/quicktype.yue:377
            return { } -- shunt/quicktype.yue:377
          end -- shunt/quicktype.yue:377
        end)()).type == T_BRACE_CLOSE then -- shunt/quicktype.yue:377
          return Struct(metatable_type, { }) -- shunt/quicktype.yue:378
        end -- shunt/quicktype.yue:377
        self.lexer:restore(checkpoint) -- shunt/quicktype.yue:379
        self:expect(T_COMMA) -- shunt/quicktype.yue:380
      end -- shunt/quicktype.yue:371
      local checkpoint = self.lexer:checkpoint() -- shunt/quicktype.yue:382
      local is_struct = ((self:maybe(T_NAME)) ~= nil) and ((self:maybe(T_COLON)) ~= nil) -- shunt/quicktype.yue:383
      self.lexer:restore(checkpoint) -- shunt/quicktype.yue:384
      if is_struct then -- shunt/quicktype.yue:386
        return Struct(metatable_type, self:parse_repeat_separated((function() -- shunt/quicktype.yue:387
          local _base_1 = self -- shunt/quicktype.yue:387
          local _fn_0 = _base_1.parse_field -- shunt/quicktype.yue:387
          return _fn_0 and function(...) -- shunt/quicktype.yue:387
            return _fn_0(_base_1, ...) -- shunt/quicktype.yue:387
          end -- shunt/quicktype.yue:387
        end)(), T_COMMA, { -- shunt/quicktype.yue:387
          separator_trails_before = T_BRACE_CLOSE -- shunt/quicktype.yue:387
        })) -- shunt/quicktype.yue:387
      end -- shunt/quicktype.yue:386
      local first_type = self:parse_type() -- shunt/quicktype.yue:389
      local table_content_type = self:select({ -- shunt/quicktype.yue:391
        { -- shunt/quicktype.yue:391
          token = T_BRACE_CLOSE, -- shunt/quicktype.yue:391
          action = function() -- shunt/quicktype.yue:392
            return 'set' -- shunt/quicktype.yue:392
          end -- shunt/quicktype.yue:392
        }, -- shunt/quicktype.yue:391
        { -- shunt/quicktype.yue:393
          token = T_THIN_ARROW, -- shunt/quicktype.yue:393
          action = function() -- shunt/quicktype.yue:394
            return 'mapping' -- shunt/quicktype.yue:394
          end -- shunt/quicktype.yue:394
        } -- shunt/quicktype.yue:393
      }) -- shunt/quicktype.yue:390
      if 'set' == table_content_type then -- shunt/quicktype.yue:397
        return Set(metatable_type, first_type) -- shunt/quicktype.yue:398
      elseif 'mapping' == table_content_type then -- shunt/quicktype.yue:399
        local maps_to = self:sequence({ -- shunt/quicktype.yue:401
          { -- shunt/quicktype.yue:401
            token = T_THIN_ARROW -- shunt/quicktype.yue:401
          }, -- shunt/quicktype.yue:401
          { -- shunt/quicktype.yue:402
            action = (function() -- shunt/quicktype.yue:402
              local _base_1 = self -- shunt/quicktype.yue:402
              local _fn_0 = _base_1.parse_type -- shunt/quicktype.yue:402
              return _fn_0 and function(...) -- shunt/quicktype.yue:402
                return _fn_0(_base_1, ...) -- shunt/quicktype.yue:402
              end -- shunt/quicktype.yue:402
            end)() -- shunt/quicktype.yue:402
          } -- shunt/quicktype.yue:402
        })[2] -- shunt/quicktype.yue:400
        return Mapping(metatable_type, first_type, maps_to) -- shunt/quicktype.yue:403
      else -- shunt/quicktype.yue:405
        return error("internal error: illegal table contents type: " .. tostring(repr(table_content_type))) -- shunt/quicktype.yue:405
      end -- shunt/quicktype.yue:405
    end, -- shunt/quicktype.yue:407
    parse_field = function(self) -- shunt/quicktype.yue:407
      local name, type -- shunt/quicktype.yue:408
      do -- shunt/quicktype.yue:408
        local _obj_0 = self:sequence({ -- shunt/quicktype.yue:409
          { -- shunt/quicktype.yue:409
            token = T_NAME -- shunt/quicktype.yue:409
          }, -- shunt/quicktype.yue:409
          { -- shunt/quicktype.yue:410
            token = T_COLON -- shunt/quicktype.yue:410
          }, -- shunt/quicktype.yue:410
          { -- shunt/quicktype.yue:411
            action = (function() -- shunt/quicktype.yue:411
              local _base_1 = self -- shunt/quicktype.yue:411
              local _fn_0 = _base_1.parse_type -- shunt/quicktype.yue:411
              return _fn_0 and function(...) -- shunt/quicktype.yue:411
                return _fn_0(_base_1, ...) -- shunt/quicktype.yue:411
              end -- shunt/quicktype.yue:411
            end)() -- shunt/quicktype.yue:411
          } -- shunt/quicktype.yue:411
        }) -- shunt/quicktype.yue:408
        name, type = _obj_0[1], _obj_0[3] -- shunt/quicktype.yue:408
      end -- shunt/quicktype.yue:411
      return Field(name, type) -- shunt/quicktype.yue:412
    end -- shunt/quicktype.yue:214
  } -- shunt/quicktype.yue:214
  for _key_0, _val_0 in pairs(_parent_0.__base) do -- shunt/quicktype.yue:412
    if _base_0[_key_0] == nil and _key_0:match("^__") and not (_key_0 == "__index" and _val_0 == _parent_0.__base) then -- shunt/quicktype.yue:214
      _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:214
    end -- shunt/quicktype.yue:214
  end -- shunt/quicktype.yue:412
  if _base_0.__index == nil then -- shunt/quicktype.yue:214
    _base_0.__index = _base_0 -- shunt/quicktype.yue:214
  end -- shunt/quicktype.yue:412
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
end -- shunt/quicktype.yue:412
T_PAREN_OPEN = setmetatable({ }, { -- shunt/quicktype.yue:415
  __tostring = function(self) -- shunt/quicktype.yue:415
    return "'('" -- shunt/quicktype.yue:415
  end -- shunt/quicktype.yue:415
}) -- shunt/quicktype.yue:415
T_PAREN_CLOSE = setmetatable({ }, { -- shunt/quicktype.yue:416
  __tostring = function(self) -- shunt/quicktype.yue:416
    return "')'" -- shunt/quicktype.yue:416
  end -- shunt/quicktype.yue:416
}) -- shunt/quicktype.yue:416
T_BRACE_OPEN = setmetatable({ }, { -- shunt/quicktype.yue:417
  __tostring = function(self) -- shunt/quicktype.yue:417
    return "'{'" -- shunt/quicktype.yue:417
  end -- shunt/quicktype.yue:417
}) -- shunt/quicktype.yue:417
T_BRACE_CLOSE = setmetatable({ }, { -- shunt/quicktype.yue:418
  __tostring = function(self) -- shunt/quicktype.yue:418
    return "'}'" -- shunt/quicktype.yue:418
  end -- shunt/quicktype.yue:418
}) -- shunt/quicktype.yue:418
T_BRACKET_OPEN = setmetatable({ }, { -- shunt/quicktype.yue:419
  __tostring = function(self) -- shunt/quicktype.yue:419
    return "'['" -- shunt/quicktype.yue:419
  end -- shunt/quicktype.yue:419
}) -- shunt/quicktype.yue:419
T_BRACKET_CLOSE = setmetatable({ }, { -- shunt/quicktype.yue:420
  __tostring = function(self) -- shunt/quicktype.yue:420
    return "']'" -- shunt/quicktype.yue:420
  end -- shunt/quicktype.yue:420
}) -- shunt/quicktype.yue:420
T_ANGLE_OPEN = setmetatable({ }, { -- shunt/quicktype.yue:421
  __tostring = function(self) -- shunt/quicktype.yue:421
    return '"<"' -- shunt/quicktype.yue:421
  end -- shunt/quicktype.yue:421
}) -- shunt/quicktype.yue:421
T_ANGLE_CLOSE = setmetatable({ }, { -- shunt/quicktype.yue:422
  __tostring = function(self) -- shunt/quicktype.yue:422
    return '">"' -- shunt/quicktype.yue:422
  end -- shunt/quicktype.yue:422
}) -- shunt/quicktype.yue:422
T_COMMA = setmetatable({ }, { -- shunt/quicktype.yue:423
  __tostring = function(self) -- shunt/quicktype.yue:423
    return "','" -- shunt/quicktype.yue:423
  end -- shunt/quicktype.yue:423
}) -- shunt/quicktype.yue:423
T_COLON = setmetatable({ }, { -- shunt/quicktype.yue:424
  __tostring = function(self) -- shunt/quicktype.yue:424
    return "':'" -- shunt/quicktype.yue:424
  end -- shunt/quicktype.yue:424
}) -- shunt/quicktype.yue:424
T_BANG = setmetatable({ }, { -- shunt/quicktype.yue:425
  __tostring = function(self) -- shunt/quicktype.yue:425
    return "'!'" -- shunt/quicktype.yue:425
  end -- shunt/quicktype.yue:425
}) -- shunt/quicktype.yue:425
T_THIN_ARROW = setmetatable({ }, { -- shunt/quicktype.yue:426
  __tostring = function(self) -- shunt/quicktype.yue:426
    return "'->'" -- shunt/quicktype.yue:426
  end -- shunt/quicktype.yue:426
}) -- shunt/quicktype.yue:426
T_FAT_ARROW = setmetatable({ }, { -- shunt/quicktype.yue:427
  __tostring = function(self) -- shunt/quicktype.yue:427
    return "'=>'" -- shunt/quicktype.yue:427
  end -- shunt/quicktype.yue:427
}) -- shunt/quicktype.yue:427
T_DOTDOTDOT = setmetatable({ }, { -- shunt/quicktype.yue:428
  __tostring = function(self) -- shunt/quicktype.yue:428
    return "'...'" -- shunt/quicktype.yue:428
  end -- shunt/quicktype.yue:428
}) -- shunt/quicktype.yue:428
T_QUESTION = setmetatable({ }, { -- shunt/quicktype.yue:429
  __tostring = function(self) -- shunt/quicktype.yue:429
    return "'?'" -- shunt/quicktype.yue:429
  end -- shunt/quicktype.yue:429
}) -- shunt/quicktype.yue:429
T_PLUS = setmetatable({ }, { -- shunt/quicktype.yue:430
  __tostring = function(self) -- shunt/quicktype.yue:430
    return "'+'" -- shunt/quicktype.yue:430
  end -- shunt/quicktype.yue:430
}) -- shunt/quicktype.yue:430
T_PIPE = setmetatable({ }, { -- shunt/quicktype.yue:431
  __tostring = function(self) -- shunt/quicktype.yue:431
    return "'|'" -- shunt/quicktype.yue:431
  end -- shunt/quicktype.yue:431
}) -- shunt/quicktype.yue:431
T_NAME = setmetatable({ }, { -- shunt/quicktype.yue:432
  __tostring = function(self) -- shunt/quicktype.yue:432
    return "<name>" -- shunt/quicktype.yue:432
  end -- shunt/quicktype.yue:432
}) -- shunt/quicktype.yue:432
T_PREFIXED_NAME = setmetatable({ }, { -- shunt/quicktype.yue:433
  __tostring = function(self) -- shunt/quicktype.yue:433
    return "<prefixed-name>" -- shunt/quicktype.yue:433
  end -- shunt/quicktype.yue:433
}) -- shunt/quicktype.yue:433
T_BOOLEAN = setmetatable({ }, { -- shunt/quicktype.yue:434
  __tostring = function(self) -- shunt/quicktype.yue:434
    return "<boolean>" -- shunt/quicktype.yue:434
  end -- shunt/quicktype.yue:434
}) -- shunt/quicktype.yue:434
T_NUMBER = setmetatable({ }, { -- shunt/quicktype.yue:435
  __tostring = function(self) -- shunt/quicktype.yue:435
    return "<number>" -- shunt/quicktype.yue:435
  end -- shunt/quicktype.yue:435
}) -- shunt/quicktype.yue:435
T_STRING = setmetatable({ }, { -- shunt/quicktype.yue:436
  __tostring = function(self) -- shunt/quicktype.yue:436
    return "<string>" -- shunt/quicktype.yue:436
  end -- shunt/quicktype.yue:436
}) -- shunt/quicktype.yue:436
do -- shunt/quicktype.yue:438
  local _class_0 -- shunt/quicktype.yue:438
  local _base_0 = { -- shunt/quicktype.yue:438
    peek = function(self) -- shunt/quicktype.yue:505
      if self.done then -- shunt/quicktype.yue:506
        return nil -- shunt/quicktype.yue:507
      end -- shunt/quicktype.yue:506
      if (self.peeked ~= nil) then -- shunt/quicktype.yue:509
        return self.peeked -- shunt/quicktype.yue:510
      end -- shunt/quicktype.yue:509
      self.peeked = self:tokens() -- shunt/quicktype.yue:512
      if not self.peeked then -- shunt/quicktype.yue:513
        self.done = true -- shunt/quicktype.yue:514
      end -- shunt/quicktype.yue:513
      return self.peeked -- shunt/quicktype.yue:515
    end, -- shunt/quicktype.yue:517
    next = function(self) -- shunt/quicktype.yue:517
      if self.done then -- shunt/quicktype.yue:518
        return nil -- shunt/quicktype.yue:519
      end -- shunt/quicktype.yue:518
      if (self.peeked ~= nil) then -- shunt/quicktype.yue:521
        local peeked = self.peeked -- shunt/quicktype.yue:522
        self.peeked = nil -- shunt/quicktype.yue:523
        return peeked -- shunt/quicktype.yue:524
      else -- shunt/quicktype.yue:526
        local ret = self:tokens() -- shunt/quicktype.yue:526
        if not (ret ~= nil) then -- shunt/quicktype.yue:527
          self.done = true -- shunt/quicktype.yue:528
        end -- shunt/quicktype.yue:527
        return ret -- shunt/quicktype.yue:529
      end -- shunt/quicktype.yue:521
    end, -- shunt/quicktype.yue:531
    checkpoint = function(self) -- shunt/quicktype.yue:531
      return Checkpoint(self.index, self.peeked) -- shunt/quicktype.yue:532
    end, -- shunt/quicktype.yue:534
    restore = function(self, checkpoint) -- shunt/quicktype.yue:534
      local index, peeked = checkpoint.index, checkpoint.peeked -- shunt/quicktype.yue:535
      self.index = index -- shunt/quicktype.yue:536
      self.peeked = peeked -- shunt/quicktype.yue:537
    end -- shunt/quicktype.yue:438
  } -- shunt/quicktype.yue:438
  if _base_0.__index == nil then -- shunt/quicktype.yue:438
    _base_0.__index = _base_0 -- shunt/quicktype.yue:438
  end -- shunt/quicktype.yue:537
  _class_0 = setmetatable({ -- shunt/quicktype.yue:438
    __init = function(self, type_spec) -- shunt/quicktype.yue:439
      self.type_spec = type_spec -- shunt/quicktype.yue:439
      self.index = 1 -- shunt/quicktype.yue:440
      self.done = false -- shunt/quicktype.yue:441
      self.peeked = nil -- shunt/quicktype.yue:442
      self.tokens = coroutine.wrap(function() -- shunt/quicktype.yue:443
        while self.index <= #type_spec do -- shunt/quicktype.yue:444
          local _continue_0 = false -- shunt/quicktype.yue:445
          repeat -- shunt/quicktype.yue:445
            local ty, value, bytes_consumed -- shunt/quicktype.yue:445
            do -- shunt/quicktype.yue:445
              local match = type_spec:match('^%-%-[^\r\n]*', self.index) -- shunt/quicktype.yue:445
              if match then -- shunt/quicktype.yue:445
                ty, value, bytes_consumed = nil, nil, #match -- shunt/quicktype.yue:446
              else -- shunt/quicktype.yue:447
                do -- shunt/quicktype.yue:447
                  local whitespace = type_spec:match('^[ \t\r\n]+', self.index) -- shunt/quicktype.yue:447
                  if whitespace then -- shunt/quicktype.yue:447
                    ty, value, bytes_consumed = nil, nil, #whitespace -- shunt/quicktype.yue:448
                  else -- shunt/quicktype.yue:449
                    match = type_spec:match('^%(', self.index) -- shunt/quicktype.yue:449
                    if match then -- shunt/quicktype.yue:449
                      ty, value, bytes_consumed = T_PAREN_OPEN, nil, #match -- shunt/quicktype.yue:450
                    else -- shunt/quicktype.yue:451
                      match = type_spec:match('^%)', self.index) -- shunt/quicktype.yue:451
                      if match then -- shunt/quicktype.yue:451
                        ty, value, bytes_consumed = T_PAREN_CLOSE, nil, #match -- shunt/quicktype.yue:452
                      else -- shunt/quicktype.yue:453
                        match = type_spec:match('^,', self.index) -- shunt/quicktype.yue:453
                        if match then -- shunt/quicktype.yue:453
                          ty, value, bytes_consumed = T_COMMA, nil, #match -- shunt/quicktype.yue:454
                        else -- shunt/quicktype.yue:455
                          match = type_spec:match('^{', self.index) -- shunt/quicktype.yue:455
                          if match then -- shunt/quicktype.yue:455
                            ty, value, bytes_consumed = T_BRACE_OPEN, nil, #match -- shunt/quicktype.yue:456
                          else -- shunt/quicktype.yue:457
                            match = type_spec:match('^}', self.index) -- shunt/quicktype.yue:457
                            if match then -- shunt/quicktype.yue:457
                              ty, value, bytes_consumed = T_BRACE_CLOSE, nil, #match -- shunt/quicktype.yue:458
                            else -- shunt/quicktype.yue:459
                              match = type_spec:match('^%[', self.index) -- shunt/quicktype.yue:459
                              if match then -- shunt/quicktype.yue:459
                                ty, value, bytes_consumed = T_BRACKET_OPEN, nil, #match -- shunt/quicktype.yue:460
                              else -- shunt/quicktype.yue:461
                                match = type_spec:match('^]', self.index) -- shunt/quicktype.yue:461
                                if match then -- shunt/quicktype.yue:461
                                  ty, value, bytes_consumed = T_BRACKET_CLOSE, nil, #match -- shunt/quicktype.yue:462
                                else -- shunt/quicktype.yue:463
                                  match = type_spec:match('^:', self.index) -- shunt/quicktype.yue:463
                                  if match then -- shunt/quicktype.yue:463
                                    ty, value, bytes_consumed = T_COLON, nil, #match -- shunt/quicktype.yue:464
                                  else -- shunt/quicktype.yue:465
                                    match = type_spec:match('^!', self.index) -- shunt/quicktype.yue:465
                                    if match then -- shunt/quicktype.yue:465
                                      ty, value, bytes_consumed = T_BANG, nil, #match -- shunt/quicktype.yue:466
                                    else -- shunt/quicktype.yue:467
                                      match = type_spec:match('^->', self.index) -- shunt/quicktype.yue:467
                                      if match then -- shunt/quicktype.yue:467
                                        ty, value, bytes_consumed = T_THIN_ARROW, nil, #match -- shunt/quicktype.yue:468
                                      else -- shunt/quicktype.yue:469
                                        match = type_spec:match('^=>', self.index) -- shunt/quicktype.yue:469
                                        if match then -- shunt/quicktype.yue:469
                                          ty, value, bytes_consumed = T_FAT_ARROW, nil, #match -- shunt/quicktype.yue:470
                                        else -- shunt/quicktype.yue:471
                                          match = type_spec:match('^%.%.%.', self.index) -- shunt/quicktype.yue:471
                                          if match then -- shunt/quicktype.yue:471
                                            ty, value, bytes_consumed = T_DOTDOTDOT, nil, #match -- shunt/quicktype.yue:472
                                          else -- shunt/quicktype.yue:473
                                            match = type_spec:match('^<', self.index) -- shunt/quicktype.yue:473
                                            if match then -- shunt/quicktype.yue:473
                                              ty, value, bytes_consumed = T_ANGLE_OPEN, nil, #match -- shunt/quicktype.yue:474
                                            else -- shunt/quicktype.yue:475
                                              match = type_spec:match('^>', self.index) -- shunt/quicktype.yue:475
                                              if match then -- shunt/quicktype.yue:475
                                                ty, value, bytes_consumed = T_ANGLE_CLOSE, nil, #match -- shunt/quicktype.yue:476
                                              else -- shunt/quicktype.yue:477
                                                match = type_spec:match('^?', self.index) -- shunt/quicktype.yue:477
                                                if match then -- shunt/quicktype.yue:477
                                                  ty, value, bytes_consumed = T_QUESTION, nil, #match -- shunt/quicktype.yue:478
                                                else -- shunt/quicktype.yue:479
                                                  match = type_spec:match('^+', self.index) -- shunt/quicktype.yue:479
                                                  if match then -- shunt/quicktype.yue:479
                                                    ty, value, bytes_consumed = T_PLUS, nil, #match -- shunt/quicktype.yue:480
                                                  else -- shunt/quicktype.yue:481
                                                    match = type_spec:match('^|', self.index) -- shunt/quicktype.yue:481
                                                    if match then -- shunt/quicktype.yue:481
                                                      ty, value, bytes_consumed = T_PIPE, nil, #match -- shunt/quicktype.yue:482
                                                    else -- shunt/quicktype.yue:483
                                                      match = type_spec:match('^true', self.index) -- shunt/quicktype.yue:483
                                                      if match then -- shunt/quicktype.yue:483
                                                        ty, value, bytes_consumed = T_BOOLEAN, true, #match -- shunt/quicktype.yue:484
                                                      else -- shunt/quicktype.yue:485
                                                        match = type_spec:match('^false', self.index) -- shunt/quicktype.yue:485
                                                        if match then -- shunt/quicktype.yue:485
                                                          ty, value, bytes_consumed = T_BOOLEAN, false, #match -- shunt/quicktype.yue:486
                                                        else -- shunt/quicktype.yue:487
                                                          do -- shunt/quicktype.yue:487
                                                            local prefixed_name = type_spec:match('^([a-zA-Z_][a-zA-Z0-9_]*[a-zA-Z0-9_]%.[a-zA-Z_][a-zA-Z0-9_]*[a-zA-Z0-9_])', self.index) -- shunt/quicktype.yue:487
                                                            if prefixed_name then -- shunt/quicktype.yue:487
                                                              ty, value, bytes_consumed = T_PREFIXED_NAME, prefixed_name, #prefixed_name -- shunt/quicktype.yue:488
                                                            else -- shunt/quicktype.yue:489
                                                              do -- shunt/quicktype.yue:489
                                                                local name = type_spec:match('^([a-zA-Z_][a-zA-Z0-9_-]*[a-zA-Z0-9_])', self.index) -- shunt/quicktype.yue:489
                                                                if name then -- shunt/quicktype.yue:489
                                                                  ty, value, bytes_consumed = T_NAME, name, #name -- shunt/quicktype.yue:490
                                                                else -- shunt/quicktype.yue:491
                                                                  do -- shunt/quicktype.yue:491
                                                                    local number = type_spec:match('^%-?[0-9]*%.[0-9]+', self.index) -- shunt/quicktype.yue:491
                                                                    if number then -- shunt/quicktype.yue:491
                                                                      ty, value, bytes_consumed = T_NUMBER, (assert(tonumber(number))), #number -- shunt/quicktype.yue:492
                                                                    else -- shunt/quicktype.yue:493
                                                                      number = type_spec:match('^%-?[0-9]+', self.index) -- shunt/quicktype.yue:493
                                                                      if number then -- shunt/quicktype.yue:493
                                                                        ty, value, bytes_consumed = T_NUMBER, (assert(tonumber(number))), #number -- shunt/quicktype.yue:494
                                                                      else -- shunt/quicktype.yue:495
                                                                        do -- shunt/quicktype.yue:495
                                                                          local string = type_spec:match([[^"([^"]*)"]], self.index) -- shunt/quicktype.yue:495
                                                                          if string then -- shunt/quicktype.yue:495
                                                                            ty, value, bytes_consumed = T_STRING, string, #string + 2 -- shunt/quicktype.yue:496
                                                                          else -- shunt/quicktype.yue:498
                                                                            ty, value, bytes_consumed = error("unexpected character '" .. tostring(type_spec:sub(self.index, self.index)) .. "' in type spec '" .. tostring(type_spec) .. "'") -- shunt/quicktype.yue:498
                                                                          end -- shunt/quicktype.yue:495
                                                                        end -- shunt/quicktype.yue:495
                                                                      end -- shunt/quicktype.yue:493
                                                                    end -- shunt/quicktype.yue:491
                                                                  end -- shunt/quicktype.yue:491
                                                                end -- shunt/quicktype.yue:489
                                                              end -- shunt/quicktype.yue:489
                                                            end -- shunt/quicktype.yue:487
                                                          end -- shunt/quicktype.yue:487
                                                        end -- shunt/quicktype.yue:485
                                                      end -- shunt/quicktype.yue:483
                                                    end -- shunt/quicktype.yue:481
                                                  end -- shunt/quicktype.yue:479
                                                end -- shunt/quicktype.yue:477
                                              end -- shunt/quicktype.yue:475
                                            end -- shunt/quicktype.yue:473
                                          end -- shunt/quicktype.yue:471
                                        end -- shunt/quicktype.yue:469
                                      end -- shunt/quicktype.yue:467
                                    end -- shunt/quicktype.yue:465
                                  end -- shunt/quicktype.yue:463
                                end -- shunt/quicktype.yue:461
                              end -- shunt/quicktype.yue:459
                            end -- shunt/quicktype.yue:457
                          end -- shunt/quicktype.yue:455
                        end -- shunt/quicktype.yue:453
                      end -- shunt/quicktype.yue:451
                    end -- shunt/quicktype.yue:449
                  end -- shunt/quicktype.yue:447
                end -- shunt/quicktype.yue:447
              end -- shunt/quicktype.yue:445
            end -- shunt/quicktype.yue:445
            self.index = self.index + bytes_consumed -- shunt/quicktype.yue:500
            if not (ty ~= nil) then -- shunt/quicktype.yue:501
              _continue_0 = true -- shunt/quicktype.yue:502
              break -- shunt/quicktype.yue:502
            end -- shunt/quicktype.yue:501
            coroutine.yield(Symbol(ty, value)) -- shunt/quicktype.yue:503
            _continue_0 = true -- shunt/quicktype.yue:445
          until true -- shunt/quicktype.yue:503
          if not _continue_0 then -- shunt/quicktype.yue:503
            break -- shunt/quicktype.yue:503
          end -- shunt/quicktype.yue:503
        end -- shunt/quicktype.yue:503
      end) -- shunt/quicktype.yue:443
    end, -- shunt/quicktype.yue:438
    __base = _base_0, -- shunt/quicktype.yue:438
    __name = "Lexer" -- shunt/quicktype.yue:438
  }, { -- shunt/quicktype.yue:438
    __index = _base_0, -- shunt/quicktype.yue:438
    __call = function(cls, ...) -- shunt/quicktype.yue:438
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:438
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:438
      return _self_0 -- shunt/quicktype.yue:438
    end -- shunt/quicktype.yue:438
  }) -- shunt/quicktype.yue:438
  _base_0.__class = _class_0 -- shunt/quicktype.yue:438
  Lexer = _class_0 -- shunt/quicktype.yue:438
end -- shunt/quicktype.yue:537
do -- shunt/quicktype.yue:539
  local _class_0 -- shunt/quicktype.yue:539
  local _base_0 = { } -- shunt/quicktype.yue:539
  if _base_0.__index == nil then -- shunt/quicktype.yue:539
    _base_0.__index = _base_0 -- shunt/quicktype.yue:539
  end -- shunt/quicktype.yue:540
  _class_0 = setmetatable({ -- shunt/quicktype.yue:539
    __init = function(self, index, peeked) -- shunt/quicktype.yue:540
      self.index = index -- shunt/quicktype.yue:540
      self.peeked = peeked -- shunt/quicktype.yue:540
    end, -- shunt/quicktype.yue:539
    __base = _base_0, -- shunt/quicktype.yue:539
    __name = "Checkpoint" -- shunt/quicktype.yue:539
  }, { -- shunt/quicktype.yue:539
    __index = _base_0, -- shunt/quicktype.yue:539
    __call = function(cls, ...) -- shunt/quicktype.yue:539
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:539
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:539
      return _self_0 -- shunt/quicktype.yue:539
    end -- shunt/quicktype.yue:539
  }) -- shunt/quicktype.yue:539
  _base_0.__class = _class_0 -- shunt/quicktype.yue:539
  Checkpoint = _class_0 -- shunt/quicktype.yue:539
end -- shunt/quicktype.yue:540
do -- shunt/quicktype.yue:542
  local _class_0 -- shunt/quicktype.yue:542
  local _base_0 = { -- shunt/quicktype.yue:542
    __tostring = function(self) -- shunt/quicktype.yue:545
      if (self.value ~= nil) then -- shunt/quicktype.yue:546
        return tostring(self.type) .. "(" .. tostring(self.value) .. ")" -- shunt/quicktype.yue:547
      else -- shunt/quicktype.yue:549
        return tostring(self.type) -- shunt/quicktype.yue:549
      end -- shunt/quicktype.yue:546
    end -- shunt/quicktype.yue:542
  } -- shunt/quicktype.yue:542
  if _base_0.__index == nil then -- shunt/quicktype.yue:542
    _base_0.__index = _base_0 -- shunt/quicktype.yue:542
  end -- shunt/quicktype.yue:549
  _class_0 = setmetatable({ -- shunt/quicktype.yue:542
    __init = function(self, type, value) -- shunt/quicktype.yue:543
      if value == nil then -- shunt/quicktype.yue:543
        value = nil -- shunt/quicktype.yue:543
      end -- shunt/quicktype.yue:543
      self.type = type -- shunt/quicktype.yue:543
      self.value = value -- shunt/quicktype.yue:543
    end, -- shunt/quicktype.yue:542
    __base = _base_0, -- shunt/quicktype.yue:542
    __name = "Symbol" -- shunt/quicktype.yue:542
  }, { -- shunt/quicktype.yue:542
    __index = _base_0, -- shunt/quicktype.yue:542
    __call = function(cls, ...) -- shunt/quicktype.yue:542
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:542
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:542
      return _self_0 -- shunt/quicktype.yue:542
    end -- shunt/quicktype.yue:542
  }) -- shunt/quicktype.yue:542
  _base_0.__class = _class_0 -- shunt/quicktype.yue:542
  Symbol = _class_0 -- shunt/quicktype.yue:542
end -- shunt/quicktype.yue:549
_module_0["Symbol"] = Symbol -- shunt/quicktype.yue:542
known_primitives = { -- shunt/quicktype.yue:552
  ["nil"] = true, -- shunt/quicktype.yue:552
  boolean = true, -- shunt/quicktype.yue:553
  number = true, -- shunt/quicktype.yue:554
  string = true, -- shunt/quicktype.yue:555
  ["function"] = true, -- shunt/quicktype.yue:556
  table = true, -- shunt/quicktype.yue:557
  thread = true, -- shunt/quicktype.yue:558
  userdata = true -- shunt/quicktype.yue:559
} -- shunt/quicktype.yue:551
named_type = function(name) -- shunt/quicktype.yue:561
  if (known_primitives[name] ~= nil) then -- shunt/quicktype.yue:562
    return Primitive(name) -- shunt/quicktype.yue:563
  else -- shunt/quicktype.yue:564
    if name == 'any' then -- shunt/quicktype.yue:564
      return Any() -- shunt/quicktype.yue:565
    else -- shunt/quicktype.yue:566
      if name == 'some' then -- shunt/quicktype.yue:566
        return Some() -- shunt/quicktype.yue:567
      else -- shunt/quicktype.yue:568
        if not name:match('^[A-Z]') then -- shunt/quicktype.yue:568
          return error("cannot use '" .. tostring(name) .. "' as user type name: name must start with an uppercase letter") -- shunt/quicktype.yue:569
        else -- shunt/quicktype.yue:571
          return UserType(name) -- shunt/quicktype.yue:571
        end -- shunt/quicktype.yue:568
      end -- shunt/quicktype.yue:566
    end -- shunt/quicktype.yue:564
  end -- shunt/quicktype.yue:562
end -- shunt/quicktype.yue:561
prefixed_named_type = function(prefixed_name) -- shunt/quicktype.yue:573
  local prefix, name = prefixed_name:match('^([^.]+)%.([^.]*)$') -- shunt/quicktype.yue:574
  if not (prefix ~= nil) or not (name ~= nil) then -- shunt/quicktype.yue:575
    error("internal error: cannot parse prefixed name '" .. tostring(prefixed_name) .. "'") -- shunt/quicktype.yue:576
  end -- shunt/quicktype.yue:575
  if (known_primitives[prefix] ~= nil) then -- shunt/quicktype.yue:577
    error("cannot use '" .. tostring(prefix) .. "' as type-prefix: must not be a primitive") -- shunt/quicktype.yue:578
  end -- shunt/quicktype.yue:577
  if not prefix:match('^[a-z]') then -- shunt/quicktype.yue:579
    error("cannot use '" .. tostring(prefix) .. "' as type-prefix: must start with a lowercase letter") -- shunt/quicktype.yue:580
  end -- shunt/quicktype.yue:579
  if not name:match('^[A-Z]') then -- shunt/quicktype.yue:581
    error("cannot use '" .. tostring(name) .. "' as disambiguated type name: must start with an uppercase letter") -- shunt/quicktype.yue:582
  end -- shunt/quicktype.yue:581
  return UserType(prefixed_name) -- shunt/quicktype.yue:583
end -- shunt/quicktype.yue:573
do -- shunt/quicktype.yue:585
  local _class_0 -- shunt/quicktype.yue:585
  local _base_0 = { -- shunt/quicktype.yue:585
    is = function(self, ty) -- shunt/quicktype.yue:586
      return getmetatable(self).__class.__name == ty.__base.__class.__name -- shunt/quicktype.yue:587
    end -- shunt/quicktype.yue:585
  } -- shunt/quicktype.yue:585
  if _base_0.__index == nil then -- shunt/quicktype.yue:585
    _base_0.__index = _base_0 -- shunt/quicktype.yue:585
  end -- shunt/quicktype.yue:587
  _class_0 = setmetatable({ -- shunt/quicktype.yue:585
    __init = function() end, -- shunt/quicktype.yue:585
    __base = _base_0, -- shunt/quicktype.yue:585
    __name = "Is" -- shunt/quicktype.yue:585
  }, { -- shunt/quicktype.yue:585
    __index = _base_0, -- shunt/quicktype.yue:585
    __call = function(cls, ...) -- shunt/quicktype.yue:585
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:585
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:585
      return _self_0 -- shunt/quicktype.yue:585
    end -- shunt/quicktype.yue:585
  }) -- shunt/quicktype.yue:585
  _base_0.__class = _class_0 -- shunt/quicktype.yue:585
  Is = _class_0 -- shunt/quicktype.yue:585
end -- shunt/quicktype.yue:587
do -- shunt/quicktype.yue:589
  local _class_0 -- shunt/quicktype.yue:589
  local _base_0 = { -- shunt/quicktype.yue:589
    __tostring = function(self) -- shunt/quicktype.yue:592
      return self.name -- shunt/quicktype.yue:592
    end, -- shunt/quicktype.yue:594
    checker = function(self, checker_builder) -- shunt/quicktype.yue:594
      if checker_builder == nil then -- shunt/quicktype.yue:594
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:594
      end -- shunt/quicktype.yue:594
      checker_builder:add(C_ASSERT_PRIMITIVE, self.name) -- shunt/quicktype.yue:596
      return checker_builder -- shunt/quicktype.yue:595
    end -- shunt/quicktype.yue:589
  } -- shunt/quicktype.yue:589
  local _list_0 = { -- shunt/quicktype.yue:589
    Is -- shunt/quicktype.yue:589
  } -- shunt/quicktype.yue:589
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:596
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:589
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:589
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:596
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:589
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:589
      end -- shunt/quicktype.yue:589
    end -- shunt/quicktype.yue:596
  end -- shunt/quicktype.yue:596
  if _base_0.__index == nil then -- shunt/quicktype.yue:589
    _base_0.__index = _base_0 -- shunt/quicktype.yue:589
  end -- shunt/quicktype.yue:596
  _class_0 = setmetatable({ -- shunt/quicktype.yue:589
    __init = function(self, name) -- shunt/quicktype.yue:590
      self.name = name -- shunt/quicktype.yue:590
    end, -- shunt/quicktype.yue:589
    __base = _base_0, -- shunt/quicktype.yue:589
    __name = "Primitive" -- shunt/quicktype.yue:589
  }, { -- shunt/quicktype.yue:589
    __index = _base_0, -- shunt/quicktype.yue:589
    __call = function(cls, ...) -- shunt/quicktype.yue:589
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:589
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:589
      return _self_0 -- shunt/quicktype.yue:589
    end -- shunt/quicktype.yue:589
  }) -- shunt/quicktype.yue:589
  _base_0.__class = _class_0 -- shunt/quicktype.yue:589
  Primitive = _class_0 -- shunt/quicktype.yue:589
end -- shunt/quicktype.yue:596
do -- shunt/quicktype.yue:598
  local _class_0 -- shunt/quicktype.yue:598
  local _base_0 = { -- shunt/quicktype.yue:598
    __tostring = function(self) -- shunt/quicktype.yue:599
      return 'any' -- shunt/quicktype.yue:600
    end, -- shunt/quicktype.yue:602
    checker = function(self, checker_builder) -- shunt/quicktype.yue:602
      if checker_builder == nil then -- shunt/quicktype.yue:602
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:602
      end -- shunt/quicktype.yue:602
      return checker_builder -- shunt/quicktype.yue:603
    end -- shunt/quicktype.yue:598
  } -- shunt/quicktype.yue:598
  local _list_0 = { -- shunt/quicktype.yue:598
    Is -- shunt/quicktype.yue:598
  } -- shunt/quicktype.yue:598
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:603
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:598
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:598
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:603
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:598
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:598
      end -- shunt/quicktype.yue:598
    end -- shunt/quicktype.yue:603
  end -- shunt/quicktype.yue:603
  if _base_0.__index == nil then -- shunt/quicktype.yue:598
    _base_0.__index = _base_0 -- shunt/quicktype.yue:598
  end -- shunt/quicktype.yue:603
  _class_0 = setmetatable({ -- shunt/quicktype.yue:598
    __init = function() end, -- shunt/quicktype.yue:598
    __base = _base_0, -- shunt/quicktype.yue:598
    __name = "Any" -- shunt/quicktype.yue:598
  }, { -- shunt/quicktype.yue:598
    __index = _base_0, -- shunt/quicktype.yue:598
    __call = function(cls, ...) -- shunt/quicktype.yue:598
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:598
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:598
      return _self_0 -- shunt/quicktype.yue:598
    end -- shunt/quicktype.yue:598
  }) -- shunt/quicktype.yue:598
  _base_0.__class = _class_0 -- shunt/quicktype.yue:598
  Any = _class_0 -- shunt/quicktype.yue:598
end -- shunt/quicktype.yue:603
do -- shunt/quicktype.yue:605
  local _class_0 -- shunt/quicktype.yue:605
  local _base_0 = { -- shunt/quicktype.yue:605
    __tostring = function(self) -- shunt/quicktype.yue:606
      return 'some' -- shunt/quicktype.yue:607
    end, -- shunt/quicktype.yue:609
    checker = function(self, checker_builder) -- shunt/quicktype.yue:609
      if checker_builder == nil then -- shunt/quicktype.yue:609
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:609
      end -- shunt/quicktype.yue:609
      checker_builder:add(C_ASSERT_NON_NIL) -- shunt/quicktype.yue:611
      return checker_builder -- shunt/quicktype.yue:610
    end -- shunt/quicktype.yue:605
  } -- shunt/quicktype.yue:605
  local _list_0 = { -- shunt/quicktype.yue:605
    Is -- shunt/quicktype.yue:605
  } -- shunt/quicktype.yue:605
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:611
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:605
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:605
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:611
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:605
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:605
      end -- shunt/quicktype.yue:605
    end -- shunt/quicktype.yue:611
  end -- shunt/quicktype.yue:611
  if _base_0.__index == nil then -- shunt/quicktype.yue:605
    _base_0.__index = _base_0 -- shunt/quicktype.yue:605
  end -- shunt/quicktype.yue:611
  _class_0 = setmetatable({ -- shunt/quicktype.yue:605
    __init = function() end, -- shunt/quicktype.yue:605
    __base = _base_0, -- shunt/quicktype.yue:605
    __name = "Some" -- shunt/quicktype.yue:605
  }, { -- shunt/quicktype.yue:605
    __index = _base_0, -- shunt/quicktype.yue:605
    __call = function(cls, ...) -- shunt/quicktype.yue:605
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:605
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:605
      return _self_0 -- shunt/quicktype.yue:605
    end -- shunt/quicktype.yue:605
  }) -- shunt/quicktype.yue:605
  _base_0.__class = _class_0 -- shunt/quicktype.yue:605
  Some = _class_0 -- shunt/quicktype.yue:605
end -- shunt/quicktype.yue:611
do -- shunt/quicktype.yue:613
  local _class_0 -- shunt/quicktype.yue:613
  local _base_0 = { -- shunt/quicktype.yue:613
    __tostring = function(self) -- shunt/quicktype.yue:614
      return '!' -- shunt/quicktype.yue:615
    end, -- shunt/quicktype.yue:617
    checker = function(self, checker_builder) -- shunt/quicktype.yue:617
      if checker_builder == nil then -- shunt/quicktype.yue:617
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:617
      end -- shunt/quicktype.yue:617
      checker_builder:add(C_ASSERT_NEVER) -- shunt/quicktype.yue:619
      return checker_builder -- shunt/quicktype.yue:618
    end -- shunt/quicktype.yue:613
  } -- shunt/quicktype.yue:613
  local _list_0 = { -- shunt/quicktype.yue:613
    Is -- shunt/quicktype.yue:613
  } -- shunt/quicktype.yue:613
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:619
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:613
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:613
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:619
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:613
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:613
      end -- shunt/quicktype.yue:613
    end -- shunt/quicktype.yue:619
  end -- shunt/quicktype.yue:619
  if _base_0.__index == nil then -- shunt/quicktype.yue:613
    _base_0.__index = _base_0 -- shunt/quicktype.yue:613
  end -- shunt/quicktype.yue:619
  _class_0 = setmetatable({ -- shunt/quicktype.yue:613
    __init = function() end, -- shunt/quicktype.yue:613
    __base = _base_0, -- shunt/quicktype.yue:613
    __name = "Never" -- shunt/quicktype.yue:613
  }, { -- shunt/quicktype.yue:613
    __index = _base_0, -- shunt/quicktype.yue:613
    __call = function(cls, ...) -- shunt/quicktype.yue:613
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:613
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:613
      return _self_0 -- shunt/quicktype.yue:613
    end -- shunt/quicktype.yue:613
  }) -- shunt/quicktype.yue:613
  _base_0.__class = _class_0 -- shunt/quicktype.yue:613
  Never = _class_0 -- shunt/quicktype.yue:613
end -- shunt/quicktype.yue:619
do -- shunt/quicktype.yue:621
  local _class_0 -- shunt/quicktype.yue:621
  local _base_0 = { -- shunt/quicktype.yue:621
    __tostring = function(self) -- shunt/quicktype.yue:624
      return self.name -- shunt/quicktype.yue:624
    end, -- shunt/quicktype.yue:626
    checker = function(self, checker_builder) -- shunt/quicktype.yue:626
      if checker_builder == nil then -- shunt/quicktype.yue:626
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:626
      end -- shunt/quicktype.yue:626
      local parsed_user_type = user_types[self.name] -- shunt/quicktype.yue:628
      if not (parsed_user_type ~= nil) or checker_builder:already_building(self) then -- shunt/quicktype.yue:629
        checker_builder:add(C_PUSH_CHECKER, self.name) -- shunt/quicktype.yue:630
      else -- shunt/quicktype.yue:632
        checker_builder:push_building(self) -- shunt/quicktype.yue:632
        parsed_user_type:checker(checker_builder) -- shunt/quicktype.yue:633
        checker_builder:pop_building(self) -- shunt/quicktype.yue:634
      end -- shunt/quicktype.yue:629
      return checker_builder -- shunt/quicktype.yue:627
    end -- shunt/quicktype.yue:621
  } -- shunt/quicktype.yue:621
  local _list_0 = { -- shunt/quicktype.yue:621
    Is -- shunt/quicktype.yue:621
  } -- shunt/quicktype.yue:621
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:634
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:621
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:621
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:634
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:621
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:621
      end -- shunt/quicktype.yue:621
    end -- shunt/quicktype.yue:634
  end -- shunt/quicktype.yue:634
  if _base_0.__index == nil then -- shunt/quicktype.yue:621
    _base_0.__index = _base_0 -- shunt/quicktype.yue:621
  end -- shunt/quicktype.yue:634
  _class_0 = setmetatable({ -- shunt/quicktype.yue:621
    __init = function(self, name) -- shunt/quicktype.yue:622
      self.name = name -- shunt/quicktype.yue:622
    end, -- shunt/quicktype.yue:621
    __base = _base_0, -- shunt/quicktype.yue:621
    __name = "UserType" -- shunt/quicktype.yue:621
  }, { -- shunt/quicktype.yue:621
    __index = _base_0, -- shunt/quicktype.yue:621
    __call = function(cls, ...) -- shunt/quicktype.yue:621
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:621
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:621
      return _self_0 -- shunt/quicktype.yue:621
    end -- shunt/quicktype.yue:621
  }) -- shunt/quicktype.yue:621
  _base_0.__class = _class_0 -- shunt/quicktype.yue:621
  UserType = _class_0 -- shunt/quicktype.yue:621
end -- shunt/quicktype.yue:634
do -- shunt/quicktype.yue:636
  local _class_0 -- shunt/quicktype.yue:636
  local _base_0 = { -- shunt/quicktype.yue:636
    __tostring = function(self) -- shunt/quicktype.yue:639
      return self.name -- shunt/quicktype.yue:639
    end, -- shunt/quicktype.yue:641
    checker = function(self, checker_builder) -- shunt/quicktype.yue:641
      if checker_builder == nil then -- shunt/quicktype.yue:641
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:641
      end -- shunt/quicktype.yue:641
      checker_builder:add(C_ASSERT_EQ, self.value) -- shunt/quicktype.yue:643
      return checker_builder -- shunt/quicktype.yue:642
    end -- shunt/quicktype.yue:636
  } -- shunt/quicktype.yue:636
  local _list_0 = { -- shunt/quicktype.yue:636
    Is -- shunt/quicktype.yue:636
  } -- shunt/quicktype.yue:636
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:643
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:636
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:636
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:643
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:636
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:636
      end -- shunt/quicktype.yue:636
    end -- shunt/quicktype.yue:643
  end -- shunt/quicktype.yue:643
  if _base_0.__index == nil then -- shunt/quicktype.yue:636
    _base_0.__index = _base_0 -- shunt/quicktype.yue:636
  end -- shunt/quicktype.yue:643
  _class_0 = setmetatable({ -- shunt/quicktype.yue:636
    __init = function(self, name, value) -- shunt/quicktype.yue:637
      self.name = name -- shunt/quicktype.yue:637
      self.value = value -- shunt/quicktype.yue:637
    end, -- shunt/quicktype.yue:636
    __base = _base_0, -- shunt/quicktype.yue:636
    __name = "SingletonType" -- shunt/quicktype.yue:636
  }, { -- shunt/quicktype.yue:636
    __index = _base_0, -- shunt/quicktype.yue:636
    __call = function(cls, ...) -- shunt/quicktype.yue:636
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:636
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:636
      return _self_0 -- shunt/quicktype.yue:636
    end -- shunt/quicktype.yue:636
  }) -- shunt/quicktype.yue:636
  _base_0.__class = _class_0 -- shunt/quicktype.yue:636
  SingletonType = _class_0 -- shunt/quicktype.yue:636
end -- shunt/quicktype.yue:643
do -- shunt/quicktype.yue:645
  local _class_0 -- shunt/quicktype.yue:645
  local _base_0 = { -- shunt/quicktype.yue:645
    __tostring = function(self) -- shunt/quicktype.yue:648
      return tostring(self.value) -- shunt/quicktype.yue:649
    end, -- shunt/quicktype.yue:651
    checker = function(self, checker_builder) -- shunt/quicktype.yue:651
      if checker_builder == nil then -- shunt/quicktype.yue:651
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:651
      end -- shunt/quicktype.yue:651
      checker_builder:add(C_ASSERT_PRIMITIVE, 'boolean') -- shunt/quicktype.yue:653
      checker_builder:add(C_ASSERT_EQ, self.value) -- shunt/quicktype.yue:654
      return checker_builder -- shunt/quicktype.yue:652
    end -- shunt/quicktype.yue:645
  } -- shunt/quicktype.yue:645
  local _list_0 = { -- shunt/quicktype.yue:645
    Is -- shunt/quicktype.yue:645
  } -- shunt/quicktype.yue:645
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:654
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:645
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:645
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:654
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:645
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:645
      end -- shunt/quicktype.yue:645
    end -- shunt/quicktype.yue:654
  end -- shunt/quicktype.yue:654
  if _base_0.__index == nil then -- shunt/quicktype.yue:645
    _base_0.__index = _base_0 -- shunt/quicktype.yue:645
  end -- shunt/quicktype.yue:654
  _class_0 = setmetatable({ -- shunt/quicktype.yue:645
    __init = function(self, value) -- shunt/quicktype.yue:646
      self.value = value -- shunt/quicktype.yue:646
    end, -- shunt/quicktype.yue:645
    __base = _base_0, -- shunt/quicktype.yue:645
    __name = "BooleanType" -- shunt/quicktype.yue:645
  }, { -- shunt/quicktype.yue:645
    __index = _base_0, -- shunt/quicktype.yue:645
    __call = function(cls, ...) -- shunt/quicktype.yue:645
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:645
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:645
      return _self_0 -- shunt/quicktype.yue:645
    end -- shunt/quicktype.yue:645
  }) -- shunt/quicktype.yue:645
  _base_0.__class = _class_0 -- shunt/quicktype.yue:645
  BooleanType = _class_0 -- shunt/quicktype.yue:645
end -- shunt/quicktype.yue:654
do -- shunt/quicktype.yue:656
  local _class_0 -- shunt/quicktype.yue:656
  local _base_0 = { -- shunt/quicktype.yue:656
    __tostring = function(self) -- shunt/quicktype.yue:659
      return tostring(self.value) -- shunt/quicktype.yue:660
    end, -- shunt/quicktype.yue:662
    checker = function(self, checker_builder) -- shunt/quicktype.yue:662
      if checker_builder == nil then -- shunt/quicktype.yue:662
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:662
      end -- shunt/quicktype.yue:662
      checker_builder:add(C_ASSERT_PRIMITIVE, 'number') -- shunt/quicktype.yue:664
      checker_builder:add(C_ASSERT_EQ, self.value) -- shunt/quicktype.yue:665
      return checker_builder -- shunt/quicktype.yue:663
    end -- shunt/quicktype.yue:656
  } -- shunt/quicktype.yue:656
  local _list_0 = { -- shunt/quicktype.yue:656
    Is -- shunt/quicktype.yue:656
  } -- shunt/quicktype.yue:656
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:665
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:656
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:656
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:665
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:656
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:656
      end -- shunt/quicktype.yue:656
    end -- shunt/quicktype.yue:665
  end -- shunt/quicktype.yue:665
  if _base_0.__index == nil then -- shunt/quicktype.yue:656
    _base_0.__index = _base_0 -- shunt/quicktype.yue:656
  end -- shunt/quicktype.yue:665
  _class_0 = setmetatable({ -- shunt/quicktype.yue:656
    __init = function(self, value) -- shunt/quicktype.yue:657
      self.value = value -- shunt/quicktype.yue:657
    end, -- shunt/quicktype.yue:656
    __base = _base_0, -- shunt/quicktype.yue:656
    __name = "NumberType" -- shunt/quicktype.yue:656
  }, { -- shunt/quicktype.yue:656
    __index = _base_0, -- shunt/quicktype.yue:656
    __call = function(cls, ...) -- shunt/quicktype.yue:656
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:656
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:656
      return _self_0 -- shunt/quicktype.yue:656
    end -- shunt/quicktype.yue:656
  }) -- shunt/quicktype.yue:656
  _base_0.__class = _class_0 -- shunt/quicktype.yue:656
  NumberType = _class_0 -- shunt/quicktype.yue:656
end -- shunt/quicktype.yue:665
do -- shunt/quicktype.yue:667
  local _class_0 -- shunt/quicktype.yue:667
  local _base_0 = { -- shunt/quicktype.yue:667
    __tostring = function(self) -- shunt/quicktype.yue:670
      return "\"" .. tostring(self.content) .. "\"" -- shunt/quicktype.yue:671
    end, -- shunt/quicktype.yue:673
    checker = function(self, checker_builder) -- shunt/quicktype.yue:673
      if checker_builder == nil then -- shunt/quicktype.yue:673
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:673
      end -- shunt/quicktype.yue:673
      checker_builder:add(C_ASSERT_PRIMITIVE, 'string') -- shunt/quicktype.yue:675
      checker_builder:add(C_ASSERT_EQ, self.content) -- shunt/quicktype.yue:676
      return checker_builder -- shunt/quicktype.yue:674
    end -- shunt/quicktype.yue:667
  } -- shunt/quicktype.yue:667
  local _list_0 = { -- shunt/quicktype.yue:667
    Is -- shunt/quicktype.yue:667
  } -- shunt/quicktype.yue:667
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:676
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:667
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:667
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:676
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:667
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:667
      end -- shunt/quicktype.yue:667
    end -- shunt/quicktype.yue:676
  end -- shunt/quicktype.yue:676
  if _base_0.__index == nil then -- shunt/quicktype.yue:667
    _base_0.__index = _base_0 -- shunt/quicktype.yue:667
  end -- shunt/quicktype.yue:676
  _class_0 = setmetatable({ -- shunt/quicktype.yue:667
    __init = function(self, content) -- shunt/quicktype.yue:668
      self.content = content -- shunt/quicktype.yue:668
    end, -- shunt/quicktype.yue:667
    __base = _base_0, -- shunt/quicktype.yue:667
    __name = "StringType" -- shunt/quicktype.yue:667
  }, { -- shunt/quicktype.yue:667
    __index = _base_0, -- shunt/quicktype.yue:667
    __call = function(cls, ...) -- shunt/quicktype.yue:667
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:667
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:667
      return _self_0 -- shunt/quicktype.yue:667
    end -- shunt/quicktype.yue:667
  }) -- shunt/quicktype.yue:667
  _base_0.__class = _class_0 -- shunt/quicktype.yue:667
  StringType = _class_0 -- shunt/quicktype.yue:667
end -- shunt/quicktype.yue:676
do -- shunt/quicktype.yue:678
  local _class_0 -- shunt/quicktype.yue:678
  local _base_0 = { -- shunt/quicktype.yue:678
    __tostring = function(self) -- shunt/quicktype.yue:681
      return "?" .. tostring(self.inner_type) -- shunt/quicktype.yue:682
    end, -- shunt/quicktype.yue:684
    checker = function(self, checker_builder) -- shunt/quicktype.yue:684
      if checker_builder == nil then -- shunt/quicktype.yue:684
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:684
      end -- shunt/quicktype.yue:684
      local inner_skip_target = checker_builder:add_with_unresolved_target(C_JMP_IF_NIL) -- shunt/quicktype.yue:686
      self.inner_type:checker(checker_builder) -- shunt/quicktype.yue:687
      inner_skip_target:resolve_here() -- shunt/quicktype.yue:688
      return checker_builder -- shunt/quicktype.yue:685
    end -- shunt/quicktype.yue:678
  } -- shunt/quicktype.yue:678
  local _list_0 = { -- shunt/quicktype.yue:678
    Is -- shunt/quicktype.yue:678
  } -- shunt/quicktype.yue:678
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:688
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:678
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:678
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:688
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:678
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:678
      end -- shunt/quicktype.yue:678
    end -- shunt/quicktype.yue:688
  end -- shunt/quicktype.yue:688
  if _base_0.__index == nil then -- shunt/quicktype.yue:678
    _base_0.__index = _base_0 -- shunt/quicktype.yue:678
  end -- shunt/quicktype.yue:688
  _class_0 = setmetatable({ -- shunt/quicktype.yue:678
    __init = function(self, inner_type) -- shunt/quicktype.yue:679
      self.inner_type = inner_type -- shunt/quicktype.yue:679
    end, -- shunt/quicktype.yue:678
    __base = _base_0, -- shunt/quicktype.yue:678
    __name = "Optional" -- shunt/quicktype.yue:678
  }, { -- shunt/quicktype.yue:678
    __index = _base_0, -- shunt/quicktype.yue:678
    __call = function(cls, ...) -- shunt/quicktype.yue:678
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:678
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:678
      return _self_0 -- shunt/quicktype.yue:678
    end -- shunt/quicktype.yue:678
  }) -- shunt/quicktype.yue:678
  _base_0.__class = _class_0 -- shunt/quicktype.yue:678
  Optional = _class_0 -- shunt/quicktype.yue:678
end -- shunt/quicktype.yue:688
do -- shunt/quicktype.yue:690
  local _class_0 -- shunt/quicktype.yue:690
  local _base_0 = { -- shunt/quicktype.yue:690
    __tostring = function(self) -- shunt/quicktype.yue:693
      return "[" .. tostring(self.elem_type) .. "]" -- shunt/quicktype.yue:694
    end, -- shunt/quicktype.yue:696
    checker = function(self, checker_builder) -- shunt/quicktype.yue:696
      if checker_builder == nil then -- shunt/quicktype.yue:696
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:696
      end -- shunt/quicktype.yue:696
      checker_builder:add(C_ASSERT_PRIMITIVE, 'table') -- shunt/quicktype.yue:698
      checker_builder:add(C_PUSH, 1) -- shunt/quicktype.yue:699
      local loop_start = checker_builder:add_labelled(C_GET_FIELD) -- shunt/quicktype.yue:701
      local loop_exit_target = checker_builder:add_with_unresolved_target(C_JMP_IF_NIL) -- shunt/quicktype.yue:703
      self.elem_type:checker(checker_builder) -- shunt/quicktype.yue:704
      checker_builder:add(C_POP) -- shunt/quicktype.yue:705
      checker_builder:add(C_INCR) -- shunt/quicktype.yue:706
      checker_builder:add(C_JMP, loop_start.index) -- shunt/quicktype.yue:707
      loop_exit_target:resolve_here() -- shunt/quicktype.yue:709
      checker_builder:add(C_POP) -- shunt/quicktype.yue:710
      checker_builder:add(C_DECR) -- shunt/quicktype.yue:711
      checker_builder:add(C_ASSERT_LEN) -- shunt/quicktype.yue:712
      checker_builder:add(C_POP) -- shunt/quicktype.yue:713
      return checker_builder -- shunt/quicktype.yue:697
    end -- shunt/quicktype.yue:690
  } -- shunt/quicktype.yue:690
  local _list_0 = { -- shunt/quicktype.yue:690
    Is -- shunt/quicktype.yue:690
  } -- shunt/quicktype.yue:690
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:713
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:690
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:690
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:713
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:690
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:690
      end -- shunt/quicktype.yue:690
    end -- shunt/quicktype.yue:713
  end -- shunt/quicktype.yue:713
  if _base_0.__index == nil then -- shunt/quicktype.yue:690
    _base_0.__index = _base_0 -- shunt/quicktype.yue:690
  end -- shunt/quicktype.yue:713
  _class_0 = setmetatable({ -- shunt/quicktype.yue:690
    __init = function(self, elem_type) -- shunt/quicktype.yue:691
      self.elem_type = elem_type -- shunt/quicktype.yue:691
    end, -- shunt/quicktype.yue:690
    __base = _base_0, -- shunt/quicktype.yue:690
    __name = "Array" -- shunt/quicktype.yue:690
  }, { -- shunt/quicktype.yue:690
    __index = _base_0, -- shunt/quicktype.yue:690
    __call = function(cls, ...) -- shunt/quicktype.yue:690
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:690
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:690
      return _self_0 -- shunt/quicktype.yue:690
    end -- shunt/quicktype.yue:690
  }) -- shunt/quicktype.yue:690
  _base_0.__class = _class_0 -- shunt/quicktype.yue:690
  Array = _class_0 -- shunt/quicktype.yue:690
end -- shunt/quicktype.yue:713
do -- shunt/quicktype.yue:715
  local _class_0 -- shunt/quicktype.yue:715
  local _base_0 = { -- shunt/quicktype.yue:715
    __tostring = function(self) -- shunt/quicktype.yue:718
      local elem_type_reprs -- shunt/quicktype.yue:719
      do -- shunt/quicktype.yue:719
        local _accum_0 = { } -- shunt/quicktype.yue:719
        local _len_0 = 1 -- shunt/quicktype.yue:719
        local _list_0 = self.elem_types -- shunt/quicktype.yue:719
        for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:719
          local elem_type = _list_0[_index_0] -- shunt/quicktype.yue:719
          _accum_0[_len_0] = tostring(elem_type) -- shunt/quicktype.yue:719
          _len_0 = _len_0 + 1 -- shunt/quicktype.yue:719
        end -- shunt/quicktype.yue:719
        elem_type_reprs = _accum_0 -- shunt/quicktype.yue:719
      end -- shunt/quicktype.yue:719
      return "(" .. tostring(table.concat(elem_type_reprs, ', ')) .. ")" -- shunt/quicktype.yue:720
    end, -- shunt/quicktype.yue:722
    checker = function(self, checker_builder) -- shunt/quicktype.yue:722
      if checker_builder == nil then -- shunt/quicktype.yue:722
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:722
      end -- shunt/quicktype.yue:722
      checker_builder:add(C_ASSERT_PRIMITIVE, 'table') -- shunt/quicktype.yue:724
      for i = 1, #self.elem_types do -- shunt/quicktype.yue:725
        checker_builder:add(C_PUSH, i) -- shunt/quicktype.yue:726
        checker_builder:add(C_GET_FIELD) -- shunt/quicktype.yue:727
        self.elem_types[i]:checker(checker_builder) -- shunt/quicktype.yue:728
        checker_builder:add(C_POP) -- shunt/quicktype.yue:729
        checker_builder:add(C_POP) -- shunt/quicktype.yue:730
      end -- shunt/quicktype.yue:730
      return checker_builder -- shunt/quicktype.yue:723
    end -- shunt/quicktype.yue:715
  } -- shunt/quicktype.yue:715
  local _list_0 = { -- shunt/quicktype.yue:715
    Is -- shunt/quicktype.yue:715
  } -- shunt/quicktype.yue:715
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:730
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:715
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:715
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:730
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:715
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:715
      end -- shunt/quicktype.yue:715
    end -- shunt/quicktype.yue:730
  end -- shunt/quicktype.yue:730
  if _base_0.__index == nil then -- shunt/quicktype.yue:715
    _base_0.__index = _base_0 -- shunt/quicktype.yue:715
  end -- shunt/quicktype.yue:730
  _class_0 = setmetatable({ -- shunt/quicktype.yue:715
    __init = function(self, elem_types) -- shunt/quicktype.yue:716
      self.elem_types = elem_types -- shunt/quicktype.yue:716
    end, -- shunt/quicktype.yue:715
    __base = _base_0, -- shunt/quicktype.yue:715
    __name = "Tuple" -- shunt/quicktype.yue:715
  }, { -- shunt/quicktype.yue:715
    __index = _base_0, -- shunt/quicktype.yue:715
    __call = function(cls, ...) -- shunt/quicktype.yue:715
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:715
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:715
      return _self_0 -- shunt/quicktype.yue:715
    end -- shunt/quicktype.yue:715
  }) -- shunt/quicktype.yue:715
  _base_0.__class = _class_0 -- shunt/quicktype.yue:715
  Tuple = _class_0 -- shunt/quicktype.yue:715
end -- shunt/quicktype.yue:730
do -- shunt/quicktype.yue:732
  local _class_0 -- shunt/quicktype.yue:732
  local _base_0 = { -- shunt/quicktype.yue:732
    __tostring = function(self) -- shunt/quicktype.yue:735
      local field_reprs -- shunt/quicktype.yue:736
      do -- shunt/quicktype.yue:736
        local _accum_0 = { } -- shunt/quicktype.yue:736
        local _len_0 = 1 -- shunt/quicktype.yue:736
        local _list_0 = self.fields -- shunt/quicktype.yue:736
        for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:736
          local field = _list_0[_index_0] -- shunt/quicktype.yue:736
          _accum_0[_len_0] = tostring(field) -- shunt/quicktype.yue:736
          _len_0 = _len_0 + 1 -- shunt/quicktype.yue:736
        end -- shunt/quicktype.yue:736
        field_reprs = _accum_0 -- shunt/quicktype.yue:736
      end -- shunt/quicktype.yue:736
      return "{" .. tostring(table.concat(field_reprs, ', ')) .. "}" -- shunt/quicktype.yue:737
    end, -- shunt/quicktype.yue:739
    checker = function(self, checker_builder) -- shunt/quicktype.yue:739
      if checker_builder == nil then -- shunt/quicktype.yue:739
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:739
      end -- shunt/quicktype.yue:739
      checker_builder:add(C_ASSERT_PRIMITIVE, 'table') -- shunt/quicktype.yue:741
      if (self.metatable_type ~= nil) then -- shunt/quicktype.yue:742
        checker_builder:add(C_PUSH_METATABLE) -- shunt/quicktype.yue:743
        self.metatable_type:checker(checker_builder) -- shunt/quicktype.yue:744
        checker_builder:add(C_POP) -- shunt/quicktype.yue:745
      end -- shunt/quicktype.yue:742
      local _list_0 = self.fields -- shunt/quicktype.yue:746
      for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:746
        local field = _list_0[_index_0] -- shunt/quicktype.yue:746
        checker_builder:add(C_PUSH, field.name) -- shunt/quicktype.yue:747
        checker_builder:add(C_GET_FIELD) -- shunt/quicktype.yue:748
        field:checker(checker_builder) -- shunt/quicktype.yue:749
        checker_builder:add(C_POP) -- shunt/quicktype.yue:750
        checker_builder:add(C_POP) -- shunt/quicktype.yue:751
      end -- shunt/quicktype.yue:751
      return checker_builder -- shunt/quicktype.yue:740
    end -- shunt/quicktype.yue:732
  } -- shunt/quicktype.yue:732
  local _list_0 = { -- shunt/quicktype.yue:732
    Is -- shunt/quicktype.yue:732
  } -- shunt/quicktype.yue:732
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:751
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:732
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:732
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:751
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:732
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:732
      end -- shunt/quicktype.yue:732
    end -- shunt/quicktype.yue:751
  end -- shunt/quicktype.yue:751
  if _base_0.__index == nil then -- shunt/quicktype.yue:732
    _base_0.__index = _base_0 -- shunt/quicktype.yue:732
  end -- shunt/quicktype.yue:751
  _class_0 = setmetatable({ -- shunt/quicktype.yue:732
    __init = function(self, metatable_type, fields) -- shunt/quicktype.yue:733
      self.metatable_type = metatable_type -- shunt/quicktype.yue:733
      self.fields = fields -- shunt/quicktype.yue:733
    end, -- shunt/quicktype.yue:732
    __base = _base_0, -- shunt/quicktype.yue:732
    __name = "Struct" -- shunt/quicktype.yue:732
  }, { -- shunt/quicktype.yue:732
    __index = _base_0, -- shunt/quicktype.yue:732
    __call = function(cls, ...) -- shunt/quicktype.yue:732
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:732
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:732
      return _self_0 -- shunt/quicktype.yue:732
    end -- shunt/quicktype.yue:732
  }) -- shunt/quicktype.yue:732
  _base_0.__class = _class_0 -- shunt/quicktype.yue:732
  Struct = _class_0 -- shunt/quicktype.yue:732
end -- shunt/quicktype.yue:751
do -- shunt/quicktype.yue:753
  local _class_0 -- shunt/quicktype.yue:753
  local _base_0 = { -- shunt/quicktype.yue:753
    __tostring = function(self) -- shunt/quicktype.yue:756
      return tostring(self.name) .. ": " .. tostring(self.type) -- shunt/quicktype.yue:757
    end, -- shunt/quicktype.yue:759
    checker = function(self, checker_builder) -- shunt/quicktype.yue:759
      if checker_builder == nil then -- shunt/quicktype.yue:759
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:759
      end -- shunt/quicktype.yue:759
      return self.type:checker(checker_builder) -- shunt/quicktype.yue:760
    end -- shunt/quicktype.yue:753
  } -- shunt/quicktype.yue:753
  local _list_0 = { -- shunt/quicktype.yue:753
    Is -- shunt/quicktype.yue:753
  } -- shunt/quicktype.yue:753
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:760
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:753
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:753
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:760
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:753
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:753
      end -- shunt/quicktype.yue:753
    end -- shunt/quicktype.yue:760
  end -- shunt/quicktype.yue:760
  if _base_0.__index == nil then -- shunt/quicktype.yue:753
    _base_0.__index = _base_0 -- shunt/quicktype.yue:753
  end -- shunt/quicktype.yue:760
  _class_0 = setmetatable({ -- shunt/quicktype.yue:753
    __init = function(self, name, type) -- shunt/quicktype.yue:754
      self.name = name -- shunt/quicktype.yue:754
      self.type = type -- shunt/quicktype.yue:754
    end, -- shunt/quicktype.yue:753
    __base = _base_0, -- shunt/quicktype.yue:753
    __name = "Field" -- shunt/quicktype.yue:753
  }, { -- shunt/quicktype.yue:753
    __index = _base_0, -- shunt/quicktype.yue:753
    __call = function(cls, ...) -- shunt/quicktype.yue:753
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:753
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:753
      return _self_0 -- shunt/quicktype.yue:753
    end -- shunt/quicktype.yue:753
  }) -- shunt/quicktype.yue:753
  _base_0.__class = _class_0 -- shunt/quicktype.yue:753
  Field = _class_0 -- shunt/quicktype.yue:753
end -- shunt/quicktype.yue:760
do -- shunt/quicktype.yue:762
  local _class_0 -- shunt/quicktype.yue:762
  local _base_0 = { -- shunt/quicktype.yue:762
    __tostring = function(self) -- shunt/quicktype.yue:765
      return "{" .. tostring(self.elem_type) .. "}" -- shunt/quicktype.yue:766
    end, -- shunt/quicktype.yue:768
    checker = function(self, checker_builder) -- shunt/quicktype.yue:768
      if checker_builder == nil then -- shunt/quicktype.yue:768
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:768
      end -- shunt/quicktype.yue:768
      checker_builder:add(C_ASSERT_PRIMITIVE, 'table') -- shunt/quicktype.yue:770
      if (self.metatable_type ~= nil) then -- shunt/quicktype.yue:772
        checker_builder:add(C_PUSH_METATABLE) -- shunt/quicktype.yue:773
        self.metatable_type:checker(checker_builder) -- shunt/quicktype.yue:774
        checker_builder:add(C_POP) -- shunt/quicktype.yue:775
      end -- shunt/quicktype.yue:772
      checker_builder:add(C_PUSH, V_NIL) -- shunt/quicktype.yue:777
      checker_builder:add(C_NEXT) -- shunt/quicktype.yue:778
      local loop_start_label = checker_builder:add_with_unresolved_target(C_JMP_IF_NIL) -- shunt/quicktype.yue:780
      checker_builder:add(C_ASSERT_TRUTHY) -- shunt/quicktype.yue:781
      checker_builder:add(C_POP) -- shunt/quicktype.yue:782
      self.elem_type:checker(checker_builder) -- shunt/quicktype.yue:783
      checker_builder:add(C_NEXT) -- shunt/quicktype.yue:785
      checker_builder:add(C_JMP, loop_start_label.index) -- shunt/quicktype.yue:786
      loop_start_label:resolve_here() -- shunt/quicktype.yue:788
      checker_builder:add(C_POP) -- shunt/quicktype.yue:789
      checker_builder:add(C_POP) -- shunt/quicktype.yue:790
      return checker_builder -- shunt/quicktype.yue:769
    end -- shunt/quicktype.yue:762
  } -- shunt/quicktype.yue:762
  local _list_0 = { -- shunt/quicktype.yue:762
    Is -- shunt/quicktype.yue:762
  } -- shunt/quicktype.yue:762
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:790
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:762
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:762
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:790
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:762
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:762
      end -- shunt/quicktype.yue:762
    end -- shunt/quicktype.yue:790
  end -- shunt/quicktype.yue:790
  if _base_0.__index == nil then -- shunt/quicktype.yue:762
    _base_0.__index = _base_0 -- shunt/quicktype.yue:762
  end -- shunt/quicktype.yue:790
  _class_0 = setmetatable({ -- shunt/quicktype.yue:762
    __init = function(self, metatable_type, elem_type) -- shunt/quicktype.yue:763
      self.metatable_type = metatable_type -- shunt/quicktype.yue:763
      self.elem_type = elem_type -- shunt/quicktype.yue:763
    end, -- shunt/quicktype.yue:762
    __base = _base_0, -- shunt/quicktype.yue:762
    __name = "Set" -- shunt/quicktype.yue:762
  }, { -- shunt/quicktype.yue:762
    __index = _base_0, -- shunt/quicktype.yue:762
    __call = function(cls, ...) -- shunt/quicktype.yue:762
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:762
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:762
      return _self_0 -- shunt/quicktype.yue:762
    end -- shunt/quicktype.yue:762
  }) -- shunt/quicktype.yue:762
  _base_0.__class = _class_0 -- shunt/quicktype.yue:762
  Set = _class_0 -- shunt/quicktype.yue:762
end -- shunt/quicktype.yue:790
do -- shunt/quicktype.yue:792
  local _class_0 -- shunt/quicktype.yue:792
  local _base_0 = { -- shunt/quicktype.yue:792
    __tostring = function(self) -- shunt/quicktype.yue:795
      return "{" .. tostring(self.in_type) .. " -> " .. tostring(self.out_type) .. "}" -- shunt/quicktype.yue:796
    end, -- shunt/quicktype.yue:798
    checker = function(self, checker_builder) -- shunt/quicktype.yue:798
      if checker_builder == nil then -- shunt/quicktype.yue:798
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:798
      end -- shunt/quicktype.yue:798
      checker_builder:add(C_ASSERT_PRIMITIVE, 'table') -- shunt/quicktype.yue:800
      if (self.metatable_type ~= nil) then -- shunt/quicktype.yue:802
        checker_builder:add(C_PUSH_METATABLE) -- shunt/quicktype.yue:803
        self.metatable_type:checker(checker_builder) -- shunt/quicktype.yue:804
        checker_builder:add(C_POP) -- shunt/quicktype.yue:805
      end -- shunt/quicktype.yue:802
      checker_builder:add(C_PUSH, V_NIL) -- shunt/quicktype.yue:807
      checker_builder:add(C_NEXT) -- shunt/quicktype.yue:808
      local loop_start_label = checker_builder:add_with_unresolved_target(C_JMP_IF_NIL) -- shunt/quicktype.yue:810
      self.out_type:checker(checker_builder) -- shunt/quicktype.yue:812
      checker_builder:add(C_POP) -- shunt/quicktype.yue:813
      self.in_type:checker(checker_builder) -- shunt/quicktype.yue:814
      checker_builder:add(C_NEXT) -- shunt/quicktype.yue:816
      checker_builder:add(C_JMP, loop_start_label.index) -- shunt/quicktype.yue:817
      loop_start_label:resolve_here() -- shunt/quicktype.yue:819
      checker_builder:add(C_POP) -- shunt/quicktype.yue:820
      checker_builder:add(C_POP) -- shunt/quicktype.yue:821
      return checker_builder -- shunt/quicktype.yue:799
    end -- shunt/quicktype.yue:792
  } -- shunt/quicktype.yue:792
  local _list_0 = { -- shunt/quicktype.yue:792
    Is -- shunt/quicktype.yue:792
  } -- shunt/quicktype.yue:792
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:821
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:792
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:792
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:821
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:792
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:792
      end -- shunt/quicktype.yue:792
    end -- shunt/quicktype.yue:821
  end -- shunt/quicktype.yue:821
  if _base_0.__index == nil then -- shunt/quicktype.yue:792
    _base_0.__index = _base_0 -- shunt/quicktype.yue:792
  end -- shunt/quicktype.yue:821
  _class_0 = setmetatable({ -- shunt/quicktype.yue:792
    __init = function(self, metatable_type, in_type, out_type) -- shunt/quicktype.yue:793
      self.metatable_type = metatable_type -- shunt/quicktype.yue:793
      self.in_type = in_type -- shunt/quicktype.yue:793
      self.out_type = out_type -- shunt/quicktype.yue:793
    end, -- shunt/quicktype.yue:792
    __base = _base_0, -- shunt/quicktype.yue:792
    __name = "Mapping" -- shunt/quicktype.yue:792
  }, { -- shunt/quicktype.yue:792
    __index = _base_0, -- shunt/quicktype.yue:792
    __call = function(cls, ...) -- shunt/quicktype.yue:792
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:792
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:792
      return _self_0 -- shunt/quicktype.yue:792
    end -- shunt/quicktype.yue:792
  }) -- shunt/quicktype.yue:792
  _base_0.__class = _class_0 -- shunt/quicktype.yue:792
  Mapping = _class_0 -- shunt/quicktype.yue:792
end -- shunt/quicktype.yue:821
do -- shunt/quicktype.yue:823
  local _class_0 -- shunt/quicktype.yue:823
  local _base_0 = { -- shunt/quicktype.yue:823
    param_checkers = function(self) -- shunt/quicktype.yue:830
      do -- shunt/quicktype.yue:831
        local param_checkers = self._param_checkers -- shunt/quicktype.yue:831
        if param_checkers then -- shunt/quicktype.yue:831
          return param_checkers -- shunt/quicktype.yue:832
        end -- shunt/quicktype.yue:831
      end -- shunt/quicktype.yue:831
      local param_checkers -- shunt/quicktype.yue:833
      do -- shunt/quicktype.yue:833
        local _with_0 = setmetatable({ }, { }) -- shunt/quicktype.yue:833
        local _list_0 = self.param_types -- shunt/quicktype.yue:834
        for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:834
          local param_type = _list_0[_index_0] -- shunt/quicktype.yue:834
          _with_0[#_with_0 + 1] = param_type:checker():build() -- shunt/quicktype.yue:835
        end -- shunt/quicktype.yue:835
        if (getmetatable(self.param_types) ~= nil) then -- shunt/quicktype.yue:836
          do -- shunt/quicktype.yue:837
            local remainder_type = self.remainder_param_type -- shunt/quicktype.yue:837
            if remainder_type then -- shunt/quicktype.yue:837
              local remainder_type_checker = remainder_type:checker():build() -- shunt/quicktype.yue:838
              getmetatable(_with_0).__index = function(self) -- shunt/quicktype.yue:839
                return remainder_type_checker -- shunt/quicktype.yue:839
              end -- shunt/quicktype.yue:839
            end -- shunt/quicktype.yue:837
          end -- shunt/quicktype.yue:837
        end -- shunt/quicktype.yue:836
        param_checkers = _with_0 -- shunt/quicktype.yue:833
      end -- shunt/quicktype.yue:833
      self._param_checkers = param_checkers -- shunt/quicktype.yue:840
      return param_checkers -- shunt/quicktype.yue:841
    end, -- shunt/quicktype.yue:843
    return_checkers = function(self) -- shunt/quicktype.yue:843
      do -- shunt/quicktype.yue:844
        local return_checkers = self._return_checkers -- shunt/quicktype.yue:844
        if return_checkers then -- shunt/quicktype.yue:844
          return return_checkers -- shunt/quicktype.yue:845
        end -- shunt/quicktype.yue:844
      end -- shunt/quicktype.yue:844
      local return_checkers -- shunt/quicktype.yue:846
      do -- shunt/quicktype.yue:846
        local _with_0 = setmetatable({ }, { }) -- shunt/quicktype.yue:846
        local _list_0 = self.return_types -- shunt/quicktype.yue:847
        for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:847
          local return_type = _list_0[_index_0] -- shunt/quicktype.yue:847
          _with_0[#_with_0 + 1] = return_type:checker():build() -- shunt/quicktype.yue:848
        end -- shunt/quicktype.yue:848
        if (getmetatable(self.return_types) ~= nil) then -- shunt/quicktype.yue:849
          do -- shunt/quicktype.yue:850
            local remainder_type = self.remainder_return_type -- shunt/quicktype.yue:850
            if remainder_type then -- shunt/quicktype.yue:850
              local remainder_type_checker = remainder_type:checker():build() -- shunt/quicktype.yue:851
              getmetatable(_with_0).__index = function(self) -- shunt/quicktype.yue:852
                return remainder_type_checker -- shunt/quicktype.yue:852
              end -- shunt/quicktype.yue:852
            end -- shunt/quicktype.yue:850
          end -- shunt/quicktype.yue:850
        end -- shunt/quicktype.yue:849
        return_checkers = _with_0 -- shunt/quicktype.yue:846
      end -- shunt/quicktype.yue:846
      self._return_checkers = return_checkers -- shunt/quicktype.yue:853
      return return_checkers -- shunt/quicktype.yue:854
    end, -- shunt/quicktype.yue:856
    __tostring = function(self) -- shunt/quicktype.yue:856
      return table.concat((function() -- shunt/quicktype.yue:857
        local _with_0 = { } -- shunt/quicktype.yue:857
        _with_0[#_with_0 + 1] = '(' -- shunt/quicktype.yue:858
        local first_param = true -- shunt/quicktype.yue:859
        local _list_0 = self.param_types -- shunt/quicktype.yue:860
        for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:860
          local param_type = _list_0[_index_0] -- shunt/quicktype.yue:860
          if not first_param then -- shunt/quicktype.yue:861
            _with_0[#_with_0 + 1] = ", " -- shunt/quicktype.yue:862
          end -- shunt/quicktype.yue:861
          first_param = false -- shunt/quicktype.yue:863
          _with_0[#_with_0 + 1] = tostring(param_type) -- shunt/quicktype.yue:865
        end -- shunt/quicktype.yue:865
        if (self.remainder_param_type ~= nil) then -- shunt/quicktype.yue:866
          if not first_param then -- shunt/quicktype.yue:867
            _with_0[#_with_0 + 1] = ', ' -- shunt/quicktype.yue:868
          end -- shunt/quicktype.yue:867
          _with_0[#_with_0 + 1] = tostring(self.remainder_param_type) -- shunt/quicktype.yue:869
          _with_0[#_with_0 + 1] = '...' -- shunt/quicktype.yue:870
        end -- shunt/quicktype.yue:866
        _with_0[#_with_0 + 1] = ') -> ' -- shunt/quicktype.yue:871
        if #self.return_types == 1 then -- shunt/quicktype.yue:872
          if (self.remainder_return_type ~= nil) then -- shunt/quicktype.yue:873
            _with_0[#_with_0 + 1] = tostring(self.remainder_return_type) -- shunt/quicktype.yue:874
            _with_0[#_with_0 + 1] = '...' -- shunt/quicktype.yue:875
          else -- shunt/quicktype.yue:877
            _with_0[#_with_0 + 1] = tostring(self.return_types[1]) -- shunt/quicktype.yue:877
          end -- shunt/quicktype.yue:873
        else -- shunt/quicktype.yue:879
          _with_0[#_with_0 + 1] = '<' -- shunt/quicktype.yue:879
          local first_ret = true -- shunt/quicktype.yue:880
          local _list_1 = self.return_types -- shunt/quicktype.yue:881
          for _index_0 = 1, #_list_1 do -- shunt/quicktype.yue:881
            local return_type = _list_1[_index_0] -- shunt/quicktype.yue:881
            if not first_ret then -- shunt/quicktype.yue:882
              _with_0[#_with_0 + 1] = ", " -- shunt/quicktype.yue:883
            end -- shunt/quicktype.yue:882
            first_ret = false -- shunt/quicktype.yue:884
            _with_0[#_with_0 + 1] = tostring(return_type) -- shunt/quicktype.yue:885
          end -- shunt/quicktype.yue:885
          if (self.remainder_return_type ~= nil) then -- shunt/quicktype.yue:886
            if not first_ret then -- shunt/quicktype.yue:887
              _with_0[#_with_0 + 1] = ', ' -- shunt/quicktype.yue:888
            end -- shunt/quicktype.yue:887
            _with_0[#_with_0 + 1] = tostring(self.remainder_return_type) -- shunt/quicktype.yue:889
            _with_0[#_with_0 + 1] = '...' -- shunt/quicktype.yue:890
          end -- shunt/quicktype.yue:886
          _with_0[#_with_0 + 1] = '>' -- shunt/quicktype.yue:891
        end -- shunt/quicktype.yue:872
        return _with_0 -- shunt/quicktype.yue:857
      end)()) -- shunt/quicktype.yue:891
    end, -- shunt/quicktype.yue:893
    checker = function(self, checker_builder) -- shunt/quicktype.yue:893
      if checker_builder == nil then -- shunt/quicktype.yue:893
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:893
      end -- shunt/quicktype.yue:893
      checker_builder:add(C_ASSERT_PRIMITIVE, 'function') -- shunt/quicktype.yue:895
      return checker_builder -- shunt/quicktype.yue:894
    end -- shunt/quicktype.yue:823
  } -- shunt/quicktype.yue:823
  local _list_0 = { -- shunt/quicktype.yue:823
    Is -- shunt/quicktype.yue:823
  } -- shunt/quicktype.yue:823
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:895
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:823
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:823
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:895
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:823
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:823
      end -- shunt/quicktype.yue:823
    end -- shunt/quicktype.yue:895
  end -- shunt/quicktype.yue:895
  if _base_0.__index == nil then -- shunt/quicktype.yue:823
    _base_0.__index = _base_0 -- shunt/quicktype.yue:823
  end -- shunt/quicktype.yue:895
  _class_0 = setmetatable({ -- shunt/quicktype.yue:823
    __init = function(self, param_types, return_types) -- shunt/quicktype.yue:824
      self.param_types = param_types -- shunt/quicktype.yue:824
      self.return_types = return_types -- shunt/quicktype.yue:824
      do -- shunt/quicktype.yue:825
        local _obj_0 = getmetatable(param_types) -- shunt/quicktype.yue:825
        if _obj_0 ~= nil then -- shunt/quicktype.yue:825
          do -- shunt/quicktype.yue:825
            local _obj_1 = _obj_0.__index -- shunt/quicktype.yue:825
            if _obj_1 ~= nil then -- shunt/quicktype.yue:825
              self.remainder_param_type = _obj_1() -- shunt/quicktype.yue:825
            end -- shunt/quicktype.yue:825
          end -- shunt/quicktype.yue:825
        end -- shunt/quicktype.yue:825
      end -- shunt/quicktype.yue:825
      do -- shunt/quicktype.yue:826
        local _obj_0 = getmetatable(return_types) -- shunt/quicktype.yue:826
        if _obj_0 ~= nil then -- shunt/quicktype.yue:826
          do -- shunt/quicktype.yue:826
            local _obj_1 = _obj_0.__index -- shunt/quicktype.yue:826
            if _obj_1 ~= nil then -- shunt/quicktype.yue:826
              self.remainder_return_type = _obj_1() -- shunt/quicktype.yue:826
            end -- shunt/quicktype.yue:826
          end -- shunt/quicktype.yue:826
        end -- shunt/quicktype.yue:826
      end -- shunt/quicktype.yue:826
      self._param_checkers = nil -- shunt/quicktype.yue:827
      self._return_checkers = nil -- shunt/quicktype.yue:828
    end, -- shunt/quicktype.yue:823
    __base = _base_0, -- shunt/quicktype.yue:823
    __name = "Function" -- shunt/quicktype.yue:823
  }, { -- shunt/quicktype.yue:823
    __index = _base_0, -- shunt/quicktype.yue:823
    __call = function(cls, ...) -- shunt/quicktype.yue:823
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:823
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:823
      return _self_0 -- shunt/quicktype.yue:823
    end -- shunt/quicktype.yue:823
  }) -- shunt/quicktype.yue:823
  _base_0.__class = _class_0 -- shunt/quicktype.yue:823
  Function = _class_0 -- shunt/quicktype.yue:823
end -- shunt/quicktype.yue:895
do -- shunt/quicktype.yue:897
  local _class_0 -- shunt/quicktype.yue:897
  local _parent_0 = Function -- shunt/quicktype.yue:897
  local _base_0 = { -- shunt/quicktype.yue:897
    __tostring = function(self) -- shunt/quicktype.yue:901
      return table.concat((function() -- shunt/quicktype.yue:902
        local _with_0 = { } -- shunt/quicktype.yue:902
        _with_0[#_with_0 + 1] = '(' -- shunt/quicktype.yue:903
        local first_param = true -- shunt/quicktype.yue:904
        do -- shunt/quicktype.yue:905
          local _list_0 = self.param_types -- shunt/quicktype.yue:905
          for _index_0 = 2, #_list_0 do -- shunt/quicktype.yue:905
            local param_type = _list_0[_index_0] -- shunt/quicktype.yue:905
            if not first_param then -- shunt/quicktype.yue:906
              _with_0[#_with_0 + 1] = ", " -- shunt/quicktype.yue:907
            end -- shunt/quicktype.yue:906
            first_param = false -- shunt/quicktype.yue:908
            _with_0[#_with_0 + 1] = tostring(param_type) -- shunt/quicktype.yue:910
          end -- shunt/quicktype.yue:910
        end -- shunt/quicktype.yue:910
        if (self.remainder_param_type ~= nil) then -- shunt/quicktype.yue:911
          if not first_param then -- shunt/quicktype.yue:912
            _with_0[#_with_0 + 1] = ', ' -- shunt/quicktype.yue:913
          end -- shunt/quicktype.yue:912
          _with_0[#_with_0 + 1] = tostring(self.remainder_param_type) -- shunt/quicktype.yue:914
          _with_0[#_with_0 + 1] = '...' -- shunt/quicktype.yue:915
        end -- shunt/quicktype.yue:911
        _with_0[#_with_0 + 1] = ') => ' -- shunt/quicktype.yue:916
        if #self.return_types == 1 then -- shunt/quicktype.yue:917
          if (self.remainder_return_type ~= nil) then -- shunt/quicktype.yue:918
            _with_0[#_with_0 + 1] = tostring(self.remainder_return_type) -- shunt/quicktype.yue:919
            _with_0[#_with_0 + 1] = '...' -- shunt/quicktype.yue:920
          else -- shunt/quicktype.yue:922
            _with_0[#_with_0 + 1] = tostring(self.return_types[1]) -- shunt/quicktype.yue:922
          end -- shunt/quicktype.yue:918
        else -- shunt/quicktype.yue:924
          _with_0[#_with_0 + 1] = '<' -- shunt/quicktype.yue:924
          local first_ret = true -- shunt/quicktype.yue:925
          local _list_0 = self.return_types -- shunt/quicktype.yue:926
          for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:926
            local return_type = _list_0[_index_0] -- shunt/quicktype.yue:926
            if not first_ret then -- shunt/quicktype.yue:927
              _with_0[#_with_0 + 1] = ", " -- shunt/quicktype.yue:928
            end -- shunt/quicktype.yue:927
            first_ret = false -- shunt/quicktype.yue:929
            _with_0[#_with_0 + 1] = tostring(return_type) -- shunt/quicktype.yue:930
          end -- shunt/quicktype.yue:930
          if (self.remainder_return_type ~= nil) then -- shunt/quicktype.yue:931
            if not first_ret then -- shunt/quicktype.yue:932
              _with_0[#_with_0 + 1] = ', ' -- shunt/quicktype.yue:933
            end -- shunt/quicktype.yue:932
            _with_0[#_with_0 + 1] = tostring(self.remainder_return_type) -- shunt/quicktype.yue:934
            _with_0[#_with_0 + 1] = '...' -- shunt/quicktype.yue:935
          end -- shunt/quicktype.yue:931
          _with_0[#_with_0 + 1] = '>' -- shunt/quicktype.yue:936
        end -- shunt/quicktype.yue:917
        return _with_0 -- shunt/quicktype.yue:902
      end)()) -- shunt/quicktype.yue:936
    end -- shunt/quicktype.yue:897
  } -- shunt/quicktype.yue:897
  for _key_0, _val_0 in pairs(_parent_0.__base) do -- shunt/quicktype.yue:936
    if _base_0[_key_0] == nil and _key_0:match("^__") and not (_key_0 == "__index" and _val_0 == _parent_0.__base) then -- shunt/quicktype.yue:897
      _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:897
    end -- shunt/quicktype.yue:897
  end -- shunt/quicktype.yue:936
  if _base_0.__index == nil then -- shunt/quicktype.yue:897
    _base_0.__index = _base_0 -- shunt/quicktype.yue:897
  end -- shunt/quicktype.yue:936
  setmetatable(_base_0, _parent_0.__base) -- shunt/quicktype.yue:897
  _class_0 = setmetatable({ -- shunt/quicktype.yue:897
    __init = function(self, param_types, return_types) -- shunt/quicktype.yue:898
      return _class_0.__parent.__init(self, (function() -- shunt/quicktype.yue:899
        local _tab_0 = { -- shunt/quicktype.yue:899
          Some() -- shunt/quicktype.yue:899
        } -- shunt/quicktype.yue:899
        local _idx_0 = 1 -- shunt/quicktype.yue:899
        for _key_0, _value_0 in pairs(param_types) do -- shunt/quicktype.yue:899
          if _idx_0 == _key_0 then -- shunt/quicktype.yue:899
            _tab_0[#_tab_0 + 1] = _value_0 -- shunt/quicktype.yue:899
            _idx_0 = _idx_0 + 1 -- shunt/quicktype.yue:899
          else -- shunt/quicktype.yue:899
            _tab_0[_key_0] = _value_0 -- shunt/quicktype.yue:899
          end -- shunt/quicktype.yue:899
        end -- shunt/quicktype.yue:899
        return _tab_0 -- shunt/quicktype.yue:899
      end)(), return_types) -- shunt/quicktype.yue:899
    end, -- shunt/quicktype.yue:897
    __base = _base_0, -- shunt/quicktype.yue:897
    __name = "Method", -- shunt/quicktype.yue:897
    __parent = _parent_0 -- shunt/quicktype.yue:897
  }, { -- shunt/quicktype.yue:897
    __index = function(cls, name) -- shunt/quicktype.yue:897
      local val = rawget(_base_0, name) -- shunt/quicktype.yue:897
      if val == nil then -- shunt/quicktype.yue:897
        local parent = rawget(cls, "__parent") -- shunt/quicktype.yue:897
        if parent then -- shunt/quicktype.yue:897
          return parent[name] -- shunt/quicktype.yue:897
        end -- shunt/quicktype.yue:897
      else -- shunt/quicktype.yue:897
        return val -- shunt/quicktype.yue:897
      end -- shunt/quicktype.yue:897
    end, -- shunt/quicktype.yue:897
    __call = function(cls, ...) -- shunt/quicktype.yue:897
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:897
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:897
      return _self_0 -- shunt/quicktype.yue:897
    end -- shunt/quicktype.yue:897
  }) -- shunt/quicktype.yue:897
  _base_0.__class = _class_0 -- shunt/quicktype.yue:897
  if _parent_0.__inherited then -- shunt/quicktype.yue:897
    _parent_0.__inherited(_parent_0, _class_0) -- shunt/quicktype.yue:897
  end -- shunt/quicktype.yue:897
  Method = _class_0 -- shunt/quicktype.yue:897
end -- shunt/quicktype.yue:936
do -- shunt/quicktype.yue:938
  local _class_0 -- shunt/quicktype.yue:938
  local _base_0 = { -- shunt/quicktype.yue:938
    __tostring = function(self) -- shunt/quicktype.yue:941
      return tostring(self.type) .. "..." -- shunt/quicktype.yue:942
    end, -- shunt/quicktype.yue:944
    checker = function(self, checker_builder) -- shunt/quicktype.yue:944
      if checker_builder == nil then -- shunt/quicktype.yue:944
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:944
      end -- shunt/quicktype.yue:944
      return error('internal error: Remainder unresolved in AST') -- shunt/quicktype.yue:945
    end -- shunt/quicktype.yue:938
  } -- shunt/quicktype.yue:938
  local _list_0 = { -- shunt/quicktype.yue:938
    Is -- shunt/quicktype.yue:938
  } -- shunt/quicktype.yue:938
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:945
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:938
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:938
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:945
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:938
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:938
      end -- shunt/quicktype.yue:938
    end -- shunt/quicktype.yue:945
  end -- shunt/quicktype.yue:945
  if _base_0.__index == nil then -- shunt/quicktype.yue:938
    _base_0.__index = _base_0 -- shunt/quicktype.yue:938
  end -- shunt/quicktype.yue:945
  _class_0 = setmetatable({ -- shunt/quicktype.yue:938
    __init = function(self, type) -- shunt/quicktype.yue:939
      self.type = type -- shunt/quicktype.yue:939
    end, -- shunt/quicktype.yue:938
    __base = _base_0, -- shunt/quicktype.yue:938
    __name = "Remainder" -- shunt/quicktype.yue:938
  }, { -- shunt/quicktype.yue:938
    __index = _base_0, -- shunt/quicktype.yue:938
    __call = function(cls, ...) -- shunt/quicktype.yue:938
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:938
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:938
      return _self_0 -- shunt/quicktype.yue:938
    end -- shunt/quicktype.yue:938
  }) -- shunt/quicktype.yue:938
  _base_0.__class = _class_0 -- shunt/quicktype.yue:938
  Remainder = _class_0 -- shunt/quicktype.yue:938
end -- shunt/quicktype.yue:945
do -- shunt/quicktype.yue:947
  local _class_0 -- shunt/quicktype.yue:947
  local _base_0 = { -- shunt/quicktype.yue:947
    __tostring = function(self) -- shunt/quicktype.yue:952
      return table.concat((function() -- shunt/quicktype.yue:953
        local _accum_0 = { } -- shunt/quicktype.yue:953
        local _len_0 = 1 -- shunt/quicktype.yue:953
        local _list_0 = self.types -- shunt/quicktype.yue:953
        for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:953
          local ty = _list_0[_index_0] -- shunt/quicktype.yue:953
          _accum_0[_len_0] = tostring(ty) -- shunt/quicktype.yue:953
          _len_0 = _len_0 + 1 -- shunt/quicktype.yue:953
        end -- shunt/quicktype.yue:953
        return _accum_0 -- shunt/quicktype.yue:953
      end)(), '|') -- shunt/quicktype.yue:953
    end, -- shunt/quicktype.yue:955
    checker = function(self, checker_builder) -- shunt/quicktype.yue:955
      if checker_builder == nil then -- shunt/quicktype.yue:955
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:955
      end -- shunt/quicktype.yue:955
      checker_builder:add(C_PUSH_UNION_CTX, self) -- shunt/quicktype.yue:957
      local next_variant_jump = checker_builder:add_with_unresolved_target(C_SET_UNION_BAIL_TARGET) -- shunt/quicktype.yue:958
      self.types[1]:checker(checker_builder) -- shunt/quicktype.yue:959
      local ok_jumps = { } -- shunt/quicktype.yue:961
      do -- shunt/quicktype.yue:962
        local _list_0 = self.types -- shunt/quicktype.yue:962
        for _index_0 = 2, #_list_0 do -- shunt/quicktype.yue:962
          local ty = _list_0[_index_0] -- shunt/quicktype.yue:962
          ok_jumps[#ok_jumps + 1] = checker_builder:add_with_unresolved_target(C_JMP) -- shunt/quicktype.yue:963
          next_variant_jump:resolve_here() -- shunt/quicktype.yue:965
          checker_builder:add(C_CLEAR_BAILING) -- shunt/quicktype.yue:966
          next_variant_jump = checker_builder:add_with_unresolved_target(C_SET_UNION_BAIL_TARGET) -- shunt/quicktype.yue:967
          ty:checker(checker_builder) -- shunt/quicktype.yue:968
        end -- shunt/quicktype.yue:968
      end -- shunt/quicktype.yue:968
      next_variant_jump:resolve_here() -- shunt/quicktype.yue:970
      for _index_0 = 1, #ok_jumps do -- shunt/quicktype.yue:971
        local ok_jump = ok_jumps[_index_0] -- shunt/quicktype.yue:971
        ok_jump:resolve_here() -- shunt/quicktype.yue:972
      end -- shunt/quicktype.yue:972
      checker_builder:add(C_POP_UNION_CTX) -- shunt/quicktype.yue:973
      return checker_builder -- shunt/quicktype.yue:956
    end -- shunt/quicktype.yue:947
  } -- shunt/quicktype.yue:947
  local _list_0 = { -- shunt/quicktype.yue:947
    Is -- shunt/quicktype.yue:947
  } -- shunt/quicktype.yue:947
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:973
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:947
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:947
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:973
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:947
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:947
      end -- shunt/quicktype.yue:947
    end -- shunt/quicktype.yue:973
  end -- shunt/quicktype.yue:973
  if _base_0.__index == nil then -- shunt/quicktype.yue:947
    _base_0.__index = _base_0 -- shunt/quicktype.yue:947
  end -- shunt/quicktype.yue:973
  _class_0 = setmetatable({ -- shunt/quicktype.yue:947
    __init = function(self, types) -- shunt/quicktype.yue:948
      self.types = types -- shunt/quicktype.yue:948
      if #self.types <= 1 then -- shunt/quicktype.yue:949
        return error('internal error: disjunction has too few elements') -- shunt/quicktype.yue:950
      end -- shunt/quicktype.yue:949
    end, -- shunt/quicktype.yue:947
    __base = _base_0, -- shunt/quicktype.yue:947
    __name = "Disjunction" -- shunt/quicktype.yue:947
  }, { -- shunt/quicktype.yue:947
    __index = _base_0, -- shunt/quicktype.yue:947
    __call = function(cls, ...) -- shunt/quicktype.yue:947
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:947
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:947
      return _self_0 -- shunt/quicktype.yue:947
    end -- shunt/quicktype.yue:947
  }) -- shunt/quicktype.yue:947
  _base_0.__class = _class_0 -- shunt/quicktype.yue:947
  Disjunction = _class_0 -- shunt/quicktype.yue:947
end -- shunt/quicktype.yue:973
do -- shunt/quicktype.yue:975
  local _class_0 -- shunt/quicktype.yue:975
  local _base_0 = { -- shunt/quicktype.yue:975
    __tostring = function(self) -- shunt/quicktype.yue:978
      return table.concat((function() -- shunt/quicktype.yue:979
        local _accum_0 = { } -- shunt/quicktype.yue:979
        local _len_0 = 1 -- shunt/quicktype.yue:979
        local _list_0 = self.types -- shunt/quicktype.yue:979
        for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:979
          local ty = _list_0[_index_0] -- shunt/quicktype.yue:979
          _accum_0[_len_0] = tostring(ty) -- shunt/quicktype.yue:979
          _len_0 = _len_0 + 1 -- shunt/quicktype.yue:979
        end -- shunt/quicktype.yue:979
        return _accum_0 -- shunt/quicktype.yue:979
      end)(), '+') -- shunt/quicktype.yue:979
    end, -- shunt/quicktype.yue:981
    checker = function(self, checker_builder) -- shunt/quicktype.yue:981
      if checker_builder == nil then -- shunt/quicktype.yue:981
        checker_builder = CheckerBuilder() -- shunt/quicktype.yue:981
      end -- shunt/quicktype.yue:981
      local _list_0 = self.types -- shunt/quicktype.yue:983
      for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:983
        local ty = _list_0[_index_0] -- shunt/quicktype.yue:983
        ty:checker(checker_builder) -- shunt/quicktype.yue:984
      end -- shunt/quicktype.yue:984
      return checker_builder -- shunt/quicktype.yue:982
    end -- shunt/quicktype.yue:975
  } -- shunt/quicktype.yue:975
  local _list_0 = { -- shunt/quicktype.yue:975
    Is -- shunt/quicktype.yue:975
  } -- shunt/quicktype.yue:975
  for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:984
    local _item_0 = _list_0[_index_0] -- shunt/quicktype.yue:975
    local _cls_0, _mixin_0 = (_item_0.__base ~= nil), _item_0.__base or _item_0 -- shunt/quicktype.yue:975
    for _key_0, _val_0 in pairs(_mixin_0) do -- shunt/quicktype.yue:984
      if _base_0[_key_0] == nil and (not _cls_0 or not _key_0:match("^__")) then -- shunt/quicktype.yue:975
        _base_0[_key_0] = _val_0 -- shunt/quicktype.yue:975
      end -- shunt/quicktype.yue:975
    end -- shunt/quicktype.yue:984
  end -- shunt/quicktype.yue:984
  if _base_0.__index == nil then -- shunt/quicktype.yue:975
    _base_0.__index = _base_0 -- shunt/quicktype.yue:975
  end -- shunt/quicktype.yue:984
  _class_0 = setmetatable({ -- shunt/quicktype.yue:975
    __init = function(self, types) -- shunt/quicktype.yue:976
      self.types = types -- shunt/quicktype.yue:976
    end, -- shunt/quicktype.yue:975
    __base = _base_0, -- shunt/quicktype.yue:975
    __name = "Conjunction" -- shunt/quicktype.yue:975
  }, { -- shunt/quicktype.yue:975
    __index = _base_0, -- shunt/quicktype.yue:975
    __call = function(cls, ...) -- shunt/quicktype.yue:975
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:975
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:975
      return _self_0 -- shunt/quicktype.yue:975
    end -- shunt/quicktype.yue:975
  }) -- shunt/quicktype.yue:975
  _base_0.__class = _class_0 -- shunt/quicktype.yue:975
  Conjunction = _class_0 -- shunt/quicktype.yue:975
end -- shunt/quicktype.yue:984
do -- shunt/quicktype.yue:986
  local _class_0 -- shunt/quicktype.yue:986
  local _base_0 = { -- shunt/quicktype.yue:986
    add = function(self, op, arg) -- shunt/quicktype.yue:991
      if arg == nil then -- shunt/quicktype.yue:991
        arg = '_' -- shunt/quicktype.yue:991
      end -- shunt/quicktype.yue:991
      do -- shunt/quicktype.yue:992
        local _obj_0 = self.instructions -- shunt/quicktype.yue:992
        _obj_0[#_obj_0 + 1] = op -- shunt/quicktype.yue:992
      end -- shunt/quicktype.yue:992
      do -- shunt/quicktype.yue:993
        local _obj_0 = self.instructions -- shunt/quicktype.yue:993
        _obj_0[#_obj_0 + 1] = arg -- shunt/quicktype.yue:993
      end -- shunt/quicktype.yue:993
    end, -- shunt/quicktype.yue:995
    add_labelled = function(self, op, arg) -- shunt/quicktype.yue:995
      if arg == nil then -- shunt/quicktype.yue:995
        arg = '_' -- shunt/quicktype.yue:995
      end -- shunt/quicktype.yue:995
      local label = self:make_label() -- shunt/quicktype.yue:996
      self:add(op, arg) -- shunt/quicktype.yue:997
      return label -- shunt/quicktype.yue:998
    end, -- shunt/quicktype.yue:1000
    add_with_unresolved_target = function(self, op) -- shunt/quicktype.yue:1000
      local label = self:make_label() -- shunt/quicktype.yue:1001
      self:add(op, LABEL_PLACEHOLDER) -- shunt/quicktype.yue:1002
      return label -- shunt/quicktype.yue:1003
    end, -- shunt/quicktype.yue:1005
    make_label = function(self) -- shunt/quicktype.yue:1005
      return Label(self.instructions) -- shunt/quicktype.yue:1006
    end, -- shunt/quicktype.yue:1008
    build = function(self) -- shunt/quicktype.yue:1008
      self:validate() -- shunt/quicktype.yue:1009
      return self.instructions -- shunt/quicktype.yue:1010
    end, -- shunt/quicktype.yue:1012
    validate = function(self) -- shunt/quicktype.yue:1012
      local _list_0 = self.instructions -- shunt/quicktype.yue:1013
      for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:1013
        local instruction = _list_0[_index_0] -- shunt/quicktype.yue:1013
        if instruction == LABEL_PLACEHOLDER then -- shunt/quicktype.yue:1014
          error("unresolved placeholder in check program:\n" .. tostring(repr(self.instructions))) -- shunt/quicktype.yue:1015
        end -- shunt/quicktype.yue:1014
      end -- shunt/quicktype.yue:1015
    end, -- shunt/quicktype.yue:1017
    already_building = function(self, user_type) -- shunt/quicktype.yue:1017
      local _list_0 = self.user_type_stack -- shunt/quicktype.yue:1018
      for _index_0 = 1, #_list_0 do -- shunt/quicktype.yue:1018
        local user_type_being_checked = _list_0[_index_0] -- shunt/quicktype.yue:1018
        if user_type.name == user_type_being_checked.name then -- shunt/quicktype.yue:1019
          return true -- shunt/quicktype.yue:1020
        end -- shunt/quicktype.yue:1019
      end -- shunt/quicktype.yue:1020
      return false -- shunt/quicktype.yue:1021
    end, -- shunt/quicktype.yue:1023
    push_building = function(self, user_type) -- shunt/quicktype.yue:1023
      do -- shunt/quicktype.yue:1024
        local _obj_0 = self.user_type_stack -- shunt/quicktype.yue:1024
        _obj_0[#_obj_0 + 1] = user_type -- shunt/quicktype.yue:1024
      end -- shunt/quicktype.yue:1024
    end, -- shunt/quicktype.yue:1026
    pop_building = function(self, user_type) -- shunt/quicktype.yue:1026
      if self.user_type_stack[#self.user_type_stack] ~= user_type then -- shunt/quicktype.yue:1027
        error("internal error: user type stack mismanaged, expected " .. tostring(user_type.name) .. " at the top of " .. tostring(repr(self.user_type_stack))) -- shunt/quicktype.yue:1028
      end -- shunt/quicktype.yue:1027
      self.user_type_stack[#self.user_type_stack] = nil -- shunt/quicktype.yue:1029
    end -- shunt/quicktype.yue:986
  } -- shunt/quicktype.yue:986
  if _base_0.__index == nil then -- shunt/quicktype.yue:986
    _base_0.__index = _base_0 -- shunt/quicktype.yue:986
  end -- shunt/quicktype.yue:1029
  _class_0 = setmetatable({ -- shunt/quicktype.yue:986
    __init = function(self) -- shunt/quicktype.yue:987
      self.instructions = { } -- shunt/quicktype.yue:988
      self.user_type_stack = { } -- shunt/quicktype.yue:989
    end, -- shunt/quicktype.yue:986
    __base = _base_0, -- shunt/quicktype.yue:986
    __name = "CheckerBuilder" -- shunt/quicktype.yue:986
  }, { -- shunt/quicktype.yue:986
    __index = _base_0, -- shunt/quicktype.yue:986
    __call = function(cls, ...) -- shunt/quicktype.yue:986
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:986
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:986
      return _self_0 -- shunt/quicktype.yue:986
    end -- shunt/quicktype.yue:986
  }) -- shunt/quicktype.yue:986
  _base_0.__class = _class_0 -- shunt/quicktype.yue:986
  CheckerBuilder = _class_0 -- shunt/quicktype.yue:986
end -- shunt/quicktype.yue:1029
do -- shunt/quicktype.yue:1031
  local _class_0 -- shunt/quicktype.yue:1031
  local _base_0 = { -- shunt/quicktype.yue:1031
    resolve_here = function(self) -- shunt/quicktype.yue:1035
      self.instructions[self.index + 1] = #self.instructions + 1 -- shunt/quicktype.yue:1036
    end -- shunt/quicktype.yue:1031
  } -- shunt/quicktype.yue:1031
  if _base_0.__index == nil then -- shunt/quicktype.yue:1031
    _base_0.__index = _base_0 -- shunt/quicktype.yue:1031
  end -- shunt/quicktype.yue:1036
  _class_0 = setmetatable({ -- shunt/quicktype.yue:1031
    __init = function(self, instructions) -- shunt/quicktype.yue:1032
      self.instructions = instructions -- shunt/quicktype.yue:1032
      self.index = #self.instructions + 1 -- shunt/quicktype.yue:1033
    end, -- shunt/quicktype.yue:1031
    __base = _base_0, -- shunt/quicktype.yue:1031
    __name = "Label" -- shunt/quicktype.yue:1031
  }, { -- shunt/quicktype.yue:1031
    __index = _base_0, -- shunt/quicktype.yue:1031
    __call = function(cls, ...) -- shunt/quicktype.yue:1031
      local _self_0 = setmetatable({ }, _base_0) -- shunt/quicktype.yue:1031
      cls.__init(_self_0, ...) -- shunt/quicktype.yue:1031
      return _self_0 -- shunt/quicktype.yue:1031
    end -- shunt/quicktype.yue:1031
  }) -- shunt/quicktype.yue:1031
  _base_0.__class = _class_0 -- shunt/quicktype.yue:1031
  Label = _class_0 -- shunt/quicktype.yue:1031
end -- shunt/quicktype.yue:1036
C_PUSH = setmetatable({ }, { -- shunt/quicktype.yue:1038
  __tostring = function(self) -- shunt/quicktype.yue:1038
    return '<push>' -- shunt/quicktype.yue:1038
  end -- shunt/quicktype.yue:1038
}) -- shunt/quicktype.yue:1038
C_PUSH_METATABLE = setmetatable({ }, { -- shunt/quicktype.yue:1039
  __tostring = function(self) -- shunt/quicktype.yue:1039
    return '<push-metatable>' -- shunt/quicktype.yue:1039
  end -- shunt/quicktype.yue:1039
}) -- shunt/quicktype.yue:1039
C_POP = setmetatable({ }, { -- shunt/quicktype.yue:1040
  __tostring = function(self) -- shunt/quicktype.yue:1040
    return '<pop>' -- shunt/quicktype.yue:1040
  end -- shunt/quicktype.yue:1040
}) -- shunt/quicktype.yue:1040
C_ASSERT_NON_NIL = setmetatable({ }, { -- shunt/quicktype.yue:1041
  __tostring = function(self) -- shunt/quicktype.yue:1041
    return '<assert-non-nil>' -- shunt/quicktype.yue:1041
  end -- shunt/quicktype.yue:1041
}) -- shunt/quicktype.yue:1041
C_ASSERT_PRIMITIVE = setmetatable({ }, { -- shunt/quicktype.yue:1042
  __tostring = function(self) -- shunt/quicktype.yue:1042
    return '<assert-primitive>' -- shunt/quicktype.yue:1042
  end -- shunt/quicktype.yue:1042
}) -- shunt/quicktype.yue:1042
C_ASSERT_TRUTHY = setmetatable({ }, { -- shunt/quicktype.yue:1043
  __tostring = function(self) -- shunt/quicktype.yue:1043
    return '<assert-truthy>' -- shunt/quicktype.yue:1043
  end -- shunt/quicktype.yue:1043
}) -- shunt/quicktype.yue:1043
C_ASSERT_LEN = setmetatable({ }, { -- shunt/quicktype.yue:1044
  __tostring = function(self) -- shunt/quicktype.yue:1044
    return '<assert-len>' -- shunt/quicktype.yue:1044
  end -- shunt/quicktype.yue:1044
}) -- shunt/quicktype.yue:1044
C_ASSERT_EQ = setmetatable({ }, { -- shunt/quicktype.yue:1045
  __tostring = function(self) -- shunt/quicktype.yue:1045
    return '<assert-eq>' -- shunt/quicktype.yue:1045
  end -- shunt/quicktype.yue:1045
}) -- shunt/quicktype.yue:1045
C_ASSERT_NEVER = setmetatable({ }, { -- shunt/quicktype.yue:1046
  __tostring = function(self) -- shunt/quicktype.yue:1046
    return '<assert-never>' -- shunt/quicktype.yue:1046
  end -- shunt/quicktype.yue:1046
}) -- shunt/quicktype.yue:1046
C_GET_FIELD = setmetatable({ }, { -- shunt/quicktype.yue:1047
  __tostring = function(self) -- shunt/quicktype.yue:1047
    return '<field>' -- shunt/quicktype.yue:1047
  end -- shunt/quicktype.yue:1047
}) -- shunt/quicktype.yue:1047
C_INCR = setmetatable({ }, { -- shunt/quicktype.yue:1048
  __tostring = function(self) -- shunt/quicktype.yue:1048
    return '<incr>' -- shunt/quicktype.yue:1048
  end -- shunt/quicktype.yue:1048
}) -- shunt/quicktype.yue:1048
C_DECR = setmetatable({ }, { -- shunt/quicktype.yue:1049
  __tostring = function(self) -- shunt/quicktype.yue:1049
    return '<decr>' -- shunt/quicktype.yue:1049
  end -- shunt/quicktype.yue:1049
}) -- shunt/quicktype.yue:1049
C_NEXT = setmetatable({ }, { -- shunt/quicktype.yue:1050
  __tostring = function(self) -- shunt/quicktype.yue:1050
    return '<next>' -- shunt/quicktype.yue:1050
  end -- shunt/quicktype.yue:1050
}) -- shunt/quicktype.yue:1050
C_JMP = setmetatable({ }, { -- shunt/quicktype.yue:1051
  __tostring = function(self) -- shunt/quicktype.yue:1051
    return '<jmp>' -- shunt/quicktype.yue:1051
  end -- shunt/quicktype.yue:1051
}) -- shunt/quicktype.yue:1051
C_JMP_IF_NIL = setmetatable({ }, { -- shunt/quicktype.yue:1052
  __tostring = function(self) -- shunt/quicktype.yue:1052
    return '<jnil>' -- shunt/quicktype.yue:1052
  end -- shunt/quicktype.yue:1052
}) -- shunt/quicktype.yue:1052
C_PUSH_CHECKER = setmetatable({ }, { -- shunt/quicktype.yue:1053
  __tostring = function(self) -- shunt/quicktype.yue:1053
    return '<push-checker>' -- shunt/quicktype.yue:1053
  end -- shunt/quicktype.yue:1053
}) -- shunt/quicktype.yue:1053
C_PUSH_UNION_CTX = setmetatable({ }, { -- shunt/quicktype.yue:1054
  __tostring = function(self) -- shunt/quicktype.yue:1054
    return '<push-union-ctx>' -- shunt/quicktype.yue:1054
  end -- shunt/quicktype.yue:1054
}) -- shunt/quicktype.yue:1054
C_CLEAR_BAILING = setmetatable({ }, { -- shunt/quicktype.yue:1055
  __tostring = function(self) -- shunt/quicktype.yue:1055
    return '<clear-bailing>' -- shunt/quicktype.yue:1055
  end -- shunt/quicktype.yue:1055
}) -- shunt/quicktype.yue:1055
C_SET_UNION_BAIL_TARGET = setmetatable({ }, { -- shunt/quicktype.yue:1056
  __tostring = function(self) -- shunt/quicktype.yue:1056
    return '<set-union-bail-target>' -- shunt/quicktype.yue:1056
  end -- shunt/quicktype.yue:1056
}) -- shunt/quicktype.yue:1056
C_POP_UNION_CTX = setmetatable({ }, { -- shunt/quicktype.yue:1057
  __tostring = function(self) -- shunt/quicktype.yue:1057
    return '<pop-union-ctx>' -- shunt/quicktype.yue:1057
  end -- shunt/quicktype.yue:1057
}) -- shunt/quicktype.yue:1057
V_NIL = setmetatable({ }, { -- shunt/quicktype.yue:1058
  __tostring = function(self) -- shunt/quicktype.yue:1058
    return 'nil' -- shunt/quicktype.yue:1058
  end -- shunt/quicktype.yue:1058
}) -- shunt/quicktype.yue:1058
checker_program_repr = function(checker) -- shunt/quicktype.yue:1060
  return table.concat((function() -- shunt/quicktype.yue:1061
    local _accum_0 = { } -- shunt/quicktype.yue:1061
    local _len_0 = 1 -- shunt/quicktype.yue:1061
    for i = 1, #checker, 2 do -- shunt/quicktype.yue:1061
      _accum_0[_len_0] = tostring(i) .. ":\t" .. tostring(repr(checker[i])) .. "\t" .. tostring(checker[i + 1]) -- shunt/quicktype.yue:1061
      _len_0 = _len_0 + 1 -- shunt/quicktype.yue:1061
    end -- shunt/quicktype.yue:1061
    return _accum_0 -- shunt/quicktype.yue:1061
  end)(), '\n\t') -- shunt/quicktype.yue:1061
end -- shunt/quicktype.yue:1060
LABEL_PLACEHOLDER = setmetatable({ }, { -- shunt/quicktype.yue:1063
  __tostring = function(self) -- shunt/quicktype.yue:1063
    return '<LABEL-PLACEHOLDER>' -- shunt/quicktype.yue:1063
  end -- shunt/quicktype.yue:1063
}) -- shunt/quicktype.yue:1063
MAX_CHECKER_DEPTH = 1000 -- shunt/quicktype.yue:1065
_module_0["MAX_CHECKER_DEPTH"] = MAX_CHECKER_DEPTH -- shunt/quicktype.yue:1065
stack_size = 0 -- shunt/quicktype.yue:1066
stack = { } -- shunt/quicktype.yue:1067
keys_used = { } -- shunt/quicktype.yue:1068
num_unions = 0 -- shunt/quicktype.yue:1069
union_depths = { } -- shunt/quicktype.yue:1070
union_bail_jumps = { } -- shunt/quicktype.yue:1071
root_union = nil -- shunt/quicktype.yue:1072
num_running_checkers = 0 -- shunt/quicktype.yue:1073
instruction_counts = { } -- shunt/quicktype.yue:1074
check = function(check_prog, value, root) -- shunt/quicktype.yue:1099
  if root == nil then -- shunt/quicktype.yue:1099
    root = true -- shunt/quicktype.yue:1099
  end -- shunt/quicktype.yue:1099
  if root then -- shunt/quicktype.yue:1106
    stack_size = 1 -- shunt/quicktype.yue:1108
    stack[1] = value -- shunt/quicktype.yue:1109
    num_running_checkers = 1 -- shunt/quicktype.yue:1110
    root_union = 0 -- shunt/quicktype.yue:1111
    num_unions = 0 -- shunt/quicktype.yue:1112
    local initial_unions = 0 -- shunt/quicktype.yue:1113
  end -- shunt/quicktype.yue:1106
  local initial_stack_size = stack_size -- shunt/quicktype.yue:1114
  local initial_num_running_checkers = num_running_checkers -- shunt/quicktype.yue:1115
  local initial_unions = num_unions -- shunt/quicktype.yue:1116
  if num_running_checkers >= MAX_CHECKER_DEPTH then -- shunt/quicktype.yue:1118
    return "type checker recursed too many times (" .. tostring(num_running_checkers) .. " times). If this is okay, increase the MAX_CHECKER_DEPTH" -- shunt/quicktype.yue:1119
  end -- shunt/quicktype.yue:1118
  do -- shunt/quicktype.yue:1123
    local pc -- shunt/quicktype.yue:1124
    local bailing = false -- shunt/quicktype.yue:1125
    pc = -1 -- shunt/quicktype.yue:1127
    while true do -- shunt/quicktype.yue:1128
      pc = pc + 2 -- shunt/quicktype.yue:1129
      local instruction = check_prog[pc] -- shunt/quicktype.yue:1130
      if instruction == nil then -- shunt/quicktype.yue:1131
        break -- shunt/quicktype.yue:1132
      end -- shunt/quicktype.yue:1131
      if COLLECT_STATS then -- shunt/quicktype.yue:1134
        do -- shunt/quicktype.yue:1135
          local v = instruction_counts[instruction] -- shunt/quicktype.yue:1135
          if v then -- shunt/quicktype.yue:1135
            instruction_counts[instruction] = v + 1 -- shunt/quicktype.yue:1136
          else -- shunt/quicktype.yue:1138
            instruction_counts[instruction] = 1 -- shunt/quicktype.yue:1138
          end -- shunt/quicktype.yue:1135
        end -- shunt/quicktype.yue:1135
      end -- shunt/quicktype.yue:1134
      if C_PUSH == instruction then -- shunt/quicktype.yue:1144
        local arg = check_prog[pc + 1] -- shunt/quicktype.yue:1145
        if arg == V_NIL then -- shunt/quicktype.yue:1146
          arg = nil -- shunt/quicktype.yue:1147
        end -- shunt/quicktype.yue:1146
        stack_size = stack_size + 1 -- shunt/quicktype.yue:1148
        stack[stack_size] = arg -- shunt/quicktype.yue:1149
      elseif C_PUSH_METATABLE == instruction then -- shunt/quicktype.yue:1150
        local mt = getmetatable(stack[stack_size]) -- shunt/quicktype.yue:1151
        stack_size = stack_size + 1 -- shunt/quicktype.yue:1152
        stack[stack_size] = mt -- shunt/quicktype.yue:1153
        keys_used[stack_size] = '<>' -- shunt/quicktype.yue:1154
      elseif C_POP == instruction then -- shunt/quicktype.yue:1155
        stack[stack_size] = nil -- shunt/quicktype.yue:1156
        keys_used[stack_size] = nil -- shunt/quicktype.yue:1157
        stack_size = stack_size - 1 -- shunt/quicktype.yue:1158
      elseif C_ASSERT_NON_NIL == instruction then -- shunt/quicktype.yue:1159
        if stack[stack_size] == nil then -- shunt/quicktype.yue:1160
          local msg -- shunt/quicktype.yue:1161
          if num_unions == 0 then -- shunt/quicktype.yue:1161
            local pretty_key_parts = { } -- shunt/quicktype.yue:1161
            for i = 1, stack_size do -- shunt/quicktype.yue:1161
              pretty_key_parts[#pretty_key_parts + 1] = keys_used[i] -- shunt/quicktype.yue:1161
            end -- shunt/quicktype.yue:1161
            if #pretty_key_parts > 0 then -- shunt/quicktype.yue:1161
              local pretty_key = "(at field ." .. tostring(table.concat(pretty_key_parts, ".")) .. ")" -- shunt/quicktype.yue:1161
              msg = "incorrect type: expected some but got nil" .. ' ' .. pretty_key -- shunt/quicktype.yue:1161
            else -- shunt/quicktype.yue:1161
              msg = "incorrect type: expected some but got nil" -- shunt/quicktype.yue:1161
            end -- shunt/quicktype.yue:1161
          else -- shunt/quicktype.yue:1161
            msg = nil -- shunt/quicktype.yue:1161
          end -- shunt/quicktype.yue:1161
          local new_size -- shunt/quicktype.yue:1161
          do -- shunt/quicktype.yue:1161
            local _exp_0 = union_depths[num_unions] -- shunt/quicktype.yue:1161
            if _exp_0 ~= nil then -- shunt/quicktype.yue:1161
              new_size = _exp_0 -- shunt/quicktype.yue:1161
            else -- shunt/quicktype.yue:1161
              new_size = 0 -- shunt/quicktype.yue:1161
            end -- shunt/quicktype.yue:1161
          end -- shunt/quicktype.yue:1161
          for i = new_size + 1, stack_size do -- shunt/quicktype.yue:1161
            stack[i] = nil -- shunt/quicktype.yue:1161
          end -- shunt/quicktype.yue:1161
          stack_size = new_size -- shunt/quicktype.yue:1161
          if num_unions == initial_unions then -- shunt/quicktype.yue:1161
            return msg -- shunt/quicktype.yue:1161
          end -- shunt/quicktype.yue:1161
          pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1161
          bailing = true -- shunt/quicktype.yue:1161
        end -- shunt/quicktype.yue:1160
      elseif C_ASSERT_PRIMITIVE == instruction then -- shunt/quicktype.yue:1162
        local ty = type(stack[stack_size]) -- shunt/quicktype.yue:1163
        local arg = check_prog[pc + 1] -- shunt/quicktype.yue:1164
        if ty ~= arg then -- shunt/quicktype.yue:1165
          local msg -- shunt/quicktype.yue:1166
          if num_unions == 0 then -- shunt/quicktype.yue:1166
            local pretty_key_parts = { } -- shunt/quicktype.yue:1166
            for i = 1, stack_size do -- shunt/quicktype.yue:1166
              pretty_key_parts[#pretty_key_parts + 1] = keys_used[i] -- shunt/quicktype.yue:1166
            end -- shunt/quicktype.yue:1166
            if #pretty_key_parts > 0 then -- shunt/quicktype.yue:1166
              local pretty_key = "(at field ." .. tostring(table.concat(pretty_key_parts, ".")) .. ")" -- shunt/quicktype.yue:1166
              msg = "incorrect type: expected " .. tostring(arg) .. " but got " .. tostring(ty) .. " (" .. tostring(repr(stack[stack_size])) .. ")" .. ' ' .. pretty_key -- shunt/quicktype.yue:1166
            else -- shunt/quicktype.yue:1166
              msg = "incorrect type: expected " .. tostring(arg) .. " but got " .. tostring(ty) .. " (" .. tostring(repr(stack[stack_size])) .. ")" -- shunt/quicktype.yue:1166
            end -- shunt/quicktype.yue:1166
          else -- shunt/quicktype.yue:1166
            msg = nil -- shunt/quicktype.yue:1166
          end -- shunt/quicktype.yue:1166
          local new_size -- shunt/quicktype.yue:1166
          do -- shunt/quicktype.yue:1166
            local _exp_0 = union_depths[num_unions] -- shunt/quicktype.yue:1166
            if _exp_0 ~= nil then -- shunt/quicktype.yue:1166
              new_size = _exp_0 -- shunt/quicktype.yue:1166
            else -- shunt/quicktype.yue:1166
              new_size = 0 -- shunt/quicktype.yue:1166
            end -- shunt/quicktype.yue:1166
          end -- shunt/quicktype.yue:1166
          for i = new_size + 1, stack_size do -- shunt/quicktype.yue:1166
            stack[i] = nil -- shunt/quicktype.yue:1166
          end -- shunt/quicktype.yue:1166
          stack_size = new_size -- shunt/quicktype.yue:1166
          if num_unions == initial_unions then -- shunt/quicktype.yue:1166
            return msg -- shunt/quicktype.yue:1166
          end -- shunt/quicktype.yue:1166
          pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1166
          bailing = true -- shunt/quicktype.yue:1166
        end -- shunt/quicktype.yue:1165
      elseif C_ASSERT_TRUTHY == instruction then -- shunt/quicktype.yue:1167
        if not stack[stack_size] then -- shunt/quicktype.yue:1168
          local msg -- shunt/quicktype.yue:1169
          if num_unions == 0 then -- shunt/quicktype.yue:1169
            local pretty_key_parts = { } -- shunt/quicktype.yue:1169
            for i = 1, stack_size do -- shunt/quicktype.yue:1169
              pretty_key_parts[#pretty_key_parts + 1] = keys_used[i] -- shunt/quicktype.yue:1169
            end -- shunt/quicktype.yue:1169
            if #pretty_key_parts > 0 then -- shunt/quicktype.yue:1169
              local pretty_key = "(at field ." .. tostring(table.concat(pretty_key_parts, ".")) .. ")" -- shunt/quicktype.yue:1169
              msg = "incorrect type: expected a truthy value but got " .. tostring(stack[stack_size]) .. ' ' .. pretty_key -- shunt/quicktype.yue:1169
            else -- shunt/quicktype.yue:1169
              msg = "incorrect type: expected a truthy value but got " .. tostring(stack[stack_size]) -- shunt/quicktype.yue:1169
            end -- shunt/quicktype.yue:1169
          else -- shunt/quicktype.yue:1169
            msg = nil -- shunt/quicktype.yue:1169
          end -- shunt/quicktype.yue:1169
          local new_size -- shunt/quicktype.yue:1169
          do -- shunt/quicktype.yue:1169
            local _exp_0 = union_depths[num_unions] -- shunt/quicktype.yue:1169
            if _exp_0 ~= nil then -- shunt/quicktype.yue:1169
              new_size = _exp_0 -- shunt/quicktype.yue:1169
            else -- shunt/quicktype.yue:1169
              new_size = 0 -- shunt/quicktype.yue:1169
            end -- shunt/quicktype.yue:1169
          end -- shunt/quicktype.yue:1169
          for i = new_size + 1, stack_size do -- shunt/quicktype.yue:1169
            stack[i] = nil -- shunt/quicktype.yue:1169
          end -- shunt/quicktype.yue:1169
          stack_size = new_size -- shunt/quicktype.yue:1169
          if num_unions == initial_unions then -- shunt/quicktype.yue:1169
            return msg -- shunt/quicktype.yue:1169
          end -- shunt/quicktype.yue:1169
          pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1169
          bailing = true -- shunt/quicktype.yue:1169
        end -- shunt/quicktype.yue:1168
      elseif C_ASSERT_LEN == instruction then -- shunt/quicktype.yue:1170
        local actual_len = #stack[stack_size - 1] -- shunt/quicktype.yue:1171
        local counted_len = stack[stack_size] -- shunt/quicktype.yue:1172
        if counted_len ~= actual_len then -- shunt/quicktype.yue:1173
          local msg -- shunt/quicktype.yue:1174
          if num_unions == 0 then -- shunt/quicktype.yue:1174
            local pretty_key_parts = { } -- shunt/quicktype.yue:1174
            for i = 1, stack_size do -- shunt/quicktype.yue:1174
              pretty_key_parts[#pretty_key_parts + 1] = keys_used[i] -- shunt/quicktype.yue:1174
            end -- shunt/quicktype.yue:1174
            if #pretty_key_parts > 0 then -- shunt/quicktype.yue:1174
              local pretty_key = "(at field ." .. tostring(table.concat(pretty_key_parts, ".")) .. ")" -- shunt/quicktype.yue:1174
              msg = "incorrect type: expected array but got table (" .. tostring(repr(stack[stack_size])) .. ")" .. ' ' .. pretty_key -- shunt/quicktype.yue:1174
            else -- shunt/quicktype.yue:1174
              msg = "incorrect type: expected array but got table (" .. tostring(repr(stack[stack_size])) .. ")" -- shunt/quicktype.yue:1174
            end -- shunt/quicktype.yue:1174
          else -- shunt/quicktype.yue:1174
            msg = nil -- shunt/quicktype.yue:1174
          end -- shunt/quicktype.yue:1174
          local new_size -- shunt/quicktype.yue:1174
          do -- shunt/quicktype.yue:1174
            local _exp_0 = union_depths[num_unions] -- shunt/quicktype.yue:1174
            if _exp_0 ~= nil then -- shunt/quicktype.yue:1174
              new_size = _exp_0 -- shunt/quicktype.yue:1174
            else -- shunt/quicktype.yue:1174
              new_size = 0 -- shunt/quicktype.yue:1174
            end -- shunt/quicktype.yue:1174
          end -- shunt/quicktype.yue:1174
          for i = new_size + 1, stack_size do -- shunt/quicktype.yue:1174
            stack[i] = nil -- shunt/quicktype.yue:1174
          end -- shunt/quicktype.yue:1174
          stack_size = new_size -- shunt/quicktype.yue:1174
          if num_unions == initial_unions then -- shunt/quicktype.yue:1174
            return msg -- shunt/quicktype.yue:1174
          end -- shunt/quicktype.yue:1174
          pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1174
          bailing = true -- shunt/quicktype.yue:1174
        end -- shunt/quicktype.yue:1173
      elseif C_ASSERT_EQ == instruction then -- shunt/quicktype.yue:1175
        if stack[stack_size] ~= check_prog[pc + 1] then -- shunt/quicktype.yue:1176
          local msg -- shunt/quicktype.yue:1177
          if num_unions == 0 then -- shunt/quicktype.yue:1177
            local pretty_key_parts = { } -- shunt/quicktype.yue:1177
            for i = 1, stack_size do -- shunt/quicktype.yue:1177
              pretty_key_parts[#pretty_key_parts + 1] = keys_used[i] -- shunt/quicktype.yue:1177
            end -- shunt/quicktype.yue:1177
            if #pretty_key_parts > 0 then -- shunt/quicktype.yue:1177
              local pretty_key = "(at field ." .. tostring(table.concat(pretty_key_parts, ".")) .. ")" -- shunt/quicktype.yue:1177
              msg = "incorrect type: expected " .. tostring(type(check_prog[pc + 1])) .. " " .. tostring(repr(check_prog[pc + 1])) .. " but got " .. tostring(repr(stack[stack_size])) .. ' ' .. pretty_key -- shunt/quicktype.yue:1177
            else -- shunt/quicktype.yue:1177
              msg = "incorrect type: expected " .. tostring(type(check_prog[pc + 1])) .. " " .. tostring(repr(check_prog[pc + 1])) .. " but got " .. tostring(repr(stack[stack_size])) -- shunt/quicktype.yue:1177
            end -- shunt/quicktype.yue:1177
          else -- shunt/quicktype.yue:1177
            msg = nil -- shunt/quicktype.yue:1177
          end -- shunt/quicktype.yue:1177
          local new_size -- shunt/quicktype.yue:1177
          do -- shunt/quicktype.yue:1177
            local _exp_0 = union_depths[num_unions] -- shunt/quicktype.yue:1177
            if _exp_0 ~= nil then -- shunt/quicktype.yue:1177
              new_size = _exp_0 -- shunt/quicktype.yue:1177
            else -- shunt/quicktype.yue:1177
              new_size = 0 -- shunt/quicktype.yue:1177
            end -- shunt/quicktype.yue:1177
          end -- shunt/quicktype.yue:1177
          for i = new_size + 1, stack_size do -- shunt/quicktype.yue:1177
            stack[i] = nil -- shunt/quicktype.yue:1177
          end -- shunt/quicktype.yue:1177
          stack_size = new_size -- shunt/quicktype.yue:1177
          if num_unions == initial_unions then -- shunt/quicktype.yue:1177
            return msg -- shunt/quicktype.yue:1177
          end -- shunt/quicktype.yue:1177
          pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1177
          bailing = true -- shunt/quicktype.yue:1177
        end -- shunt/quicktype.yue:1176
      elseif C_ASSERT_NEVER == instruction then -- shunt/quicktype.yue:1178
        local msg -- shunt/quicktype.yue:1179
        if num_unions == 0 then -- shunt/quicktype.yue:1179
          local pretty_key_parts = { } -- shunt/quicktype.yue:1179
          for i = 1, stack_size do -- shunt/quicktype.yue:1179
            pretty_key_parts[#pretty_key_parts + 1] = keys_used[i] -- shunt/quicktype.yue:1179
          end -- shunt/quicktype.yue:1179
          if #pretty_key_parts > 0 then -- shunt/quicktype.yue:1179
            local pretty_key = "(at field ." .. tostring(table.concat(pretty_key_parts, ".")) .. ")" -- shunt/quicktype.yue:1179
            msg = 'never expected a value here' .. ' ' .. pretty_key -- shunt/quicktype.yue:1179
          else -- shunt/quicktype.yue:1179
            msg = 'never expected a value here' -- shunt/quicktype.yue:1179
          end -- shunt/quicktype.yue:1179
        else -- shunt/quicktype.yue:1179
          msg = nil -- shunt/quicktype.yue:1179
        end -- shunt/quicktype.yue:1179
        local new_size -- shunt/quicktype.yue:1179
        do -- shunt/quicktype.yue:1179
          local _exp_0 = union_depths[num_unions] -- shunt/quicktype.yue:1179
          if _exp_0 ~= nil then -- shunt/quicktype.yue:1179
            new_size = _exp_0 -- shunt/quicktype.yue:1179
          else -- shunt/quicktype.yue:1179
            new_size = 0 -- shunt/quicktype.yue:1179
          end -- shunt/quicktype.yue:1179
        end -- shunt/quicktype.yue:1179
        for i = new_size + 1, stack_size do -- shunt/quicktype.yue:1179
          stack[i] = nil -- shunt/quicktype.yue:1179
        end -- shunt/quicktype.yue:1179
        stack_size = new_size -- shunt/quicktype.yue:1179
        if num_unions == initial_unions then -- shunt/quicktype.yue:1179
          return msg -- shunt/quicktype.yue:1179
        end -- shunt/quicktype.yue:1179
        pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1179
        bailing = true -- shunt/quicktype.yue:1179
      elseif C_GET_FIELD == instruction then -- shunt/quicktype.yue:1180
        stack_size = stack_size + 1 -- shunt/quicktype.yue:1181
        stack[stack_size] = stack[stack_size - 2][stack[stack_size - 1]] -- shunt/quicktype.yue:1182
        keys_used[stack_size] = stack[stack_size - 1] -- shunt/quicktype.yue:1183
      elseif C_INCR == instruction then -- shunt/quicktype.yue:1184
        stack[stack_size] = stack[stack_size] + 1 -- shunt/quicktype.yue:1185
      elseif C_DECR == instruction then -- shunt/quicktype.yue:1186
        stack[stack_size] = stack[stack_size] - 1 -- shunt/quicktype.yue:1187
      elseif C_NEXT == instruction then -- shunt/quicktype.yue:1188
        local tab = stack[stack_size - 1] -- shunt/quicktype.yue:1189
        local idx = stack[stack_size] -- shunt/quicktype.yue:1190
        local next_idx -- shunt/quicktype.yue:1191
        next_idx, value = next(tab, idx) -- shunt/quicktype.yue:1191
        stack[stack_size] = next_idx -- shunt/quicktype.yue:1192
        stack_size = stack_size + 1 -- shunt/quicktype.yue:1193
        stack[stack_size] = value -- shunt/quicktype.yue:1194
      elseif C_JMP == instruction then -- shunt/quicktype.yue:1195
        pc = check_prog[pc + 1] - 2 -- shunt/quicktype.yue:1196
      elseif C_JMP_IF_NIL == instruction then -- shunt/quicktype.yue:1197
        if not (stack[stack_size] ~= nil) then -- shunt/quicktype.yue:1198
          pc = check_prog[pc + 1] - 2 -- shunt/quicktype.yue:1199
        end -- shunt/quicktype.yue:1198
      elseif C_PUSH_CHECKER == instruction then -- shunt/quicktype.yue:1200
        local arg = check_prog[pc + 1] -- shunt/quicktype.yue:1201
        local checker = type_checkers[arg] -- shunt/quicktype.yue:1202
        if not (checker ~= nil) then -- shunt/quicktype.yue:1203
          return "cannot typecheck: type " .. tostring(arg) .. " not defined" -- shunt/quicktype.yue:1204
        end -- shunt/quicktype.yue:1203
        if #checker == 2 and #check_prog == 2 then -- shunt/quicktype.yue:1205
          local ccmd, carg = checker[1], checker[2] -- shunt/quicktype.yue:1207
          if check_prog[pc] == ccmd and arg == carg then -- shunt/quicktype.yue:1208
            return "cannot typecheck: type " .. tostring(arg) .. " not defined" -- shunt/quicktype.yue:1209
          end -- shunt/quicktype.yue:1208
        end -- shunt/quicktype.yue:1205
        num_running_checkers = num_running_checkers + 1 -- shunt/quicktype.yue:1211
        local err = check(checker, nil, false) -- shunt/quicktype.yue:1212
        num_running_checkers = num_running_checkers - 1 -- shunt/quicktype.yue:1213
        if (err ~= nil) then -- shunt/quicktype.yue:1215
          if num_unions == 0 then -- shunt/quicktype.yue:1216
            return err -- shunt/quicktype.yue:1217
          end -- shunt/quicktype.yue:1216
          bailing = true -- shunt/quicktype.yue:1219
          pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1220
        end -- shunt/quicktype.yue:1215
      elseif C_CLEAR_BAILING == instruction then -- shunt/quicktype.yue:1221
        bailing = false -- shunt/quicktype.yue:1222
      elseif C_SET_UNION_BAIL_TARGET == instruction then -- shunt/quicktype.yue:1223
        union_bail_jumps[num_unions] = check_prog[pc + 1] -- shunt/quicktype.yue:1224
      elseif C_PUSH_UNION_CTX == instruction then -- shunt/quicktype.yue:1225
        num_unions = num_unions + 1 -- shunt/quicktype.yue:1226
        union_depths[num_unions] = #stack -- shunt/quicktype.yue:1227
        if num_unions == 1 then -- shunt/quicktype.yue:1228
          root_union = check_prog[pc + 1] -- shunt/quicktype.yue:1229
        end -- shunt/quicktype.yue:1228
      elseif C_POP_UNION_CTX == instruction then -- shunt/quicktype.yue:1230
        union_bail_jumps[num_unions] = nil -- shunt/quicktype.yue:1231
        union_depths[num_unions] = nil -- shunt/quicktype.yue:1232
        num_unions = num_unions - 1 -- shunt/quicktype.yue:1233
        local tmp_root_union = root_union -- shunt/quicktype.yue:1235
        if num_unions == 0 then -- shunt/quicktype.yue:1236
          root_union = nil -- shunt/quicktype.yue:1237
        end -- shunt/quicktype.yue:1236
        if bailing then -- shunt/quicktype.yue:1238
          if num_unions == 0 then -- shunt/quicktype.yue:1239
            local msg -- shunt/quicktype.yue:1240
            if num_unions == 0 then -- shunt/quicktype.yue:1240
              local pretty_key_parts = { } -- shunt/quicktype.yue:1240
              for i = 1, stack_size do -- shunt/quicktype.yue:1240
                pretty_key_parts[#pretty_key_parts + 1] = keys_used[i] -- shunt/quicktype.yue:1240
              end -- shunt/quicktype.yue:1240
              if #pretty_key_parts > 0 then -- shunt/quicktype.yue:1240
                local pretty_key = "(at field ." .. tostring(table.concat(pretty_key_parts, ".")) .. ")" -- shunt/quicktype.yue:1240
                msg = "incorrect type: expected " .. tostring(tmp_root_union) .. " but got " .. tostring(type(stack[stack_size])) .. " (" .. tostring(repr(stack[stack_size])) .. ")" .. ' ' .. pretty_key -- shunt/quicktype.yue:1240
              else -- shunt/quicktype.yue:1240
                msg = "incorrect type: expected " .. tostring(tmp_root_union) .. " but got " .. tostring(type(stack[stack_size])) .. " (" .. tostring(repr(stack[stack_size])) .. ")" -- shunt/quicktype.yue:1240
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
          else -- shunt/quicktype.yue:1242
            local msg -- shunt/quicktype.yue:1242
            if num_unions == 0 then -- shunt/quicktype.yue:1242
              local pretty_key_parts = { } -- shunt/quicktype.yue:1242
              for i = 1, stack_size do -- shunt/quicktype.yue:1242
                pretty_key_parts[#pretty_key_parts + 1] = keys_used[i] -- shunt/quicktype.yue:1242
              end -- shunt/quicktype.yue:1242
              if #pretty_key_parts > 0 then -- shunt/quicktype.yue:1242
                local pretty_key = "(at field ." .. tostring(table.concat(pretty_key_parts, ".")) .. ")" -- shunt/quicktype.yue:1242
                msg = nil .. ' ' .. pretty_key -- shunt/quicktype.yue:1242
              else -- shunt/quicktype.yue:1242
                msg = nil -- shunt/quicktype.yue:1242
              end -- shunt/quicktype.yue:1242
            else -- shunt/quicktype.yue:1242
              msg = nil -- shunt/quicktype.yue:1242
            end -- shunt/quicktype.yue:1242
            local new_size -- shunt/quicktype.yue:1242
            do -- shunt/quicktype.yue:1242
              local _exp_0 = union_depths[num_unions] -- shunt/quicktype.yue:1242
              if _exp_0 ~= nil then -- shunt/quicktype.yue:1242
                new_size = _exp_0 -- shunt/quicktype.yue:1242
              else -- shunt/quicktype.yue:1242
                new_size = 0 -- shunt/quicktype.yue:1242
              end -- shunt/quicktype.yue:1242
            end -- shunt/quicktype.yue:1242
            for i = new_size + 1, stack_size do -- shunt/quicktype.yue:1242
              stack[i] = nil -- shunt/quicktype.yue:1242
            end -- shunt/quicktype.yue:1242
            stack_size = new_size -- shunt/quicktype.yue:1242
            if num_unions == initial_unions then -- shunt/quicktype.yue:1242
              return msg -- shunt/quicktype.yue:1242
            end -- shunt/quicktype.yue:1242
            pc = union_bail_jumps[num_unions] - 2 -- shunt/quicktype.yue:1242
            bailing = true -- shunt/quicktype.yue:1242
          end -- shunt/quicktype.yue:1239
        end -- shunt/quicktype.yue:1238
      else -- shunt/quicktype.yue:1244
        error("internal error: illegal type-checker VM instruction " .. tostring(check_prog[pc]) .. "@" .. tostring(pc)) -- shunt/quicktype.yue:1244
      end -- shunt/quicktype.yue:1244
    end -- shunt/quicktype.yue:1244
    local ending_stack_size = stack_size -- shunt/quicktype.yue:1248
    if root then -- shunt/quicktype.yue:1249
      stack[1] = nil -- shunt/quicktype.yue:1251
      stack_size = 0 -- shunt/quicktype.yue:1252
    end -- shunt/quicktype.yue:1249
    if num_running_checkers ~= initial_num_running_checkers then -- shunt/quicktype.yue:1253
      error("internal error: checker depth incorrectly handled: expected " .. tostring(initial_num_running_checkers) .. " but got " .. tostring(num_running_checkers)) -- shunt/quicktype.yue:1254
    end -- shunt/quicktype.yue:1253
    if ending_stack_size ~= initial_stack_size then -- shunt/quicktype.yue:1255
      error("internal error: value stack incorrectly handled (" .. tostring(repr(check_prog)) .. ")") -- shunt/quicktype.yue:1256
    end -- shunt/quicktype.yue:1255
  end -- shunt/quicktype.yue:1123
  return nil -- shunt/quicktype.yue:1257
end -- shunt/quicktype.yue:1099
user_types = { } -- shunt/quicktype.yue:1259
declare_type = function(name, type_spec) -- shunt/quicktype.yue:1260
  if not (name ~= nil) then -- shunt/quicktype.yue:1261
    error("declare_type requires a name") -- shunt/quicktype.yue:1262
  end -- shunt/quicktype.yue:1261
  if 'string' ~= type(name) then -- shunt/quicktype.yue:1263
    error("declare_type requires a string name") -- shunt/quicktype.yue:1264
  end -- shunt/quicktype.yue:1263
  if not (type_spec ~= nil) then -- shunt/quicktype.yue:1265
    error("declare_type requires a type_spec") -- shunt/quicktype.yue:1266
  end -- shunt/quicktype.yue:1265
  if 'string' ~= type(type_spec) then -- shunt/quicktype.yue:1267
    error("declare_type requires a string type_spec") -- shunt/quicktype.yue:1268
  end -- shunt/quicktype.yue:1267
  local prefix, unprefixed_name = name:match('^([^.]+)%.([^.]*)$') -- shunt/quicktype.yue:1270
  if unprefixed_name == nil then -- shunt/quicktype.yue:1271
    unprefixed_name = name -- shunt/quicktype.yue:1271
  end -- shunt/quicktype.yue:1271
  if (prefix ~= nil) then -- shunt/quicktype.yue:1273
    if (known_primitives[prefix] ~= nil) then -- shunt/quicktype.yue:1274
      error("cannot use '" .. tostring(prefix) .. "' as type-prefix: must not be a primitive") -- shunt/quicktype.yue:1275
    end -- shunt/quicktype.yue:1274
    if not prefix:match('^[a-z]') then -- shunt/quicktype.yue:1276
      error("cannot use '" .. tostring(prefix) .. "' as type-prefix: must start with a lowercase letter") -- shunt/quicktype.yue:1277
    end -- shunt/quicktype.yue:1276
  end -- shunt/quicktype.yue:1273
  if #unprefixed_name < 2 then -- shunt/quicktype.yue:1279
    error("cannot declare type '" .. tostring(unprefixed_name) .. "': name too short") -- shunt/quicktype.yue:1280
  end -- shunt/quicktype.yue:1279
  if not (unprefixed_name:sub(1, 1)):match('^[A-Z_]$') then -- shunt/quicktype.yue:1281
    error("cannot declare type '" .. tostring(unprefixed_name) .. "': user types must start with uppercase or '_'") -- shunt/quicktype.yue:1282
  end -- shunt/quicktype.yue:1281
  if not unprefixed_name:match('^[a-zA-Z0-9_-]*[a-zA-Z0-9_]$') then -- shunt/quicktype.yue:1283
    error("cannot declare type '" .. tostring(unprefixed_name) .. "': not a valid identifier") -- shunt/quicktype.yue:1284
  end -- shunt/quicktype.yue:1283
  if (user_types[name] ~= nil) then -- shunt/quicktype.yue:1286
    error("cannot redefine type '" .. tostring(unprefixed_name) .. "'") -- shunt/quicktype.yue:1287
  end -- shunt/quicktype.yue:1286
  local parsed_type = parse(type_spec) -- shunt/quicktype.yue:1288
  user_types[name] = parsed_type -- shunt/quicktype.yue:1289
  type_checkers[name] = parsed_type:checker():build() -- shunt/quicktype.yue:1290
end -- shunt/quicktype.yue:1260
_module_0["declare_type"] = declare_type -- shunt/quicktype.yue:1290
declare_singleton_type = function(value) -- shunt/quicktype.yue:1292
  if not (value ~= nil) then -- shunt/quicktype.yue:1293
    error("declare_singleton_type requires a value") -- shunt/quicktype.yue:1294
  end -- shunt/quicktype.yue:1293
  if 'table' ~= type(value) then -- shunt/quicktype.yue:1295
    error("declare_singleton_type requires a table value") -- shunt/quicktype.yue:1296
  end -- shunt/quicktype.yue:1295
  local name = tostring(value) -- shunt/quicktype.yue:1298
  if #name < 2 then -- shunt/quicktype.yue:1299
    error("cannot declare type '" .. tostring(name) .. "': name too short") -- shunt/quicktype.yue:1300
  end -- shunt/quicktype.yue:1299
  if not (name:sub(1, 1)):match('^[A-Z_]$') then -- shunt/quicktype.yue:1301
    error("cannot declare type '" .. tostring(name) .. "': user types must start with an uppercase letter or '_'") -- shunt/quicktype.yue:1302
  end -- shunt/quicktype.yue:1301
  if not name:match('^[a-zA-Z0-9_-]*[a-zA-Z0-9_]$') then -- shunt/quicktype.yue:1303
    error("cannot declare type '" .. tostring(name) .. "': not a valid identifier") -- shunt/quicktype.yue:1304
  end -- shunt/quicktype.yue:1303
  if (user_types[name] ~= nil) then -- shunt/quicktype.yue:1305
    error("cannot redefine type '" .. tostring(name) .. "'") -- shunt/quicktype.yue:1306
  end -- shunt/quicktype.yue:1305
  local ty = SingletonType(name, value) -- shunt/quicktype.yue:1308
  user_types[name] = ty -- shunt/quicktype.yue:1309
  type_checkers[name] = ty:checker():build() -- shunt/quicktype.yue:1310
end -- shunt/quicktype.yue:1292
_module_0["declare_singleton_type"] = declare_singleton_type -- shunt/quicktype.yue:1310
skip_typechecking = false -- shunt/quicktype.yue:1312
deactivate_typechecks = function() -- shunt/quicktype.yue:1313
  skip_typechecking = true -- shunt/quicktype.yue:1314
end -- shunt/quicktype.yue:1313
_module_0["deactivate_typechecks"] = deactivate_typechecks -- shunt/quicktype.yue:1314
stats = function() -- shunt/quicktype.yue:1316
  local stats_arr -- shunt/quicktype.yue:1317
  do -- shunt/quicktype.yue:1317
    local _accum_0 = { } -- shunt/quicktype.yue:1317
    local _len_0 = 1 -- shunt/quicktype.yue:1317
    for instruction, count in pairs(instruction_counts) do -- shunt/quicktype.yue:1317
      _accum_0[_len_0] = { -- shunt/quicktype.yue:1317
        instruction = instruction, -- shunt/quicktype.yue:1317
        count = count -- shunt/quicktype.yue:1317
      } -- shunt/quicktype.yue:1317
      _len_0 = _len_0 + 1 -- shunt/quicktype.yue:1317
    end -- shunt/quicktype.yue:1317
    stats_arr = _accum_0 -- shunt/quicktype.yue:1317
  end -- shunt/quicktype.yue:1317
  table.sort(stats_arr, function(a, b) -- shunt/quicktype.yue:1318
    return a.count > b.count -- shunt/quicktype.yue:1318
  end) -- shunt/quicktype.yue:1318
  return stats_arr -- shunt/quicktype.yue:1319
end -- shunt/quicktype.yue:1316
_module_0["stats"] = stats -- shunt/quicktype.yue:1319
spec(function() -- shunt/quicktype.yue:1321
  local describe, it, matchers -- shunt/quicktype.yue:0
  do -- shunt/quicktype.yue:0
    local _obj_0 = require('shunt.spec') -- shunt/quicktype.yue:0
    describe, it, matchers = _obj_0.describe, _obj_0.it, _obj_0.matchers -- shunt/quicktype.yue:0
  end -- shunt/quicktype.yue:0
  local anything, contains_value, deep_eq, each_value, eq, errors, has_fields, ge, gt, len, match, matches, no_errors = matchers.anything, matchers.contains_value, matchers.deep_eq, matchers.each_value, matchers.eq, matchers.errors, matchers.has_fields, matchers.ge, matchers.gt, matchers.len, matchers.match, matchers.matches, matchers.no_errors -- shunt/quicktype.yue:1326
  describe('Lexer', function() -- shunt/quicktype.yue:1328
    local tokens -- shunt/quicktype.yue:1329
    tokens = function(raw) -- shunt/quicktype.yue:1329
      assert(raw) -- shunt/quicktype.yue:1330
      local _with_0 = { } -- shunt/quicktype.yue:1331
      for token in (Lexer(raw)).tokens do -- shunt/quicktype.yue:1332
        _with_0[#_with_0 + 1] = token -- shunt/quicktype.yue:1333
      end -- shunt/quicktype.yue:1333
      return _with_0 -- shunt/quicktype.yue:1331
    end -- shunt/quicktype.yue:1329
    it('emits simple types', function() -- shunt/quicktype.yue:1335
      local simple_types = { -- shunt/quicktype.yue:1337
        type(nil), -- shunt/quicktype.yue:1337
        type(false), -- shunt/quicktype.yue:1338
        type(0), -- shunt/quicktype.yue:1339
        type(""), -- shunt/quicktype.yue:1340
        type(function() end), -- shunt/quicktype.yue:1341
        type(coroutine.create(function() end)), -- shunt/quicktype.yue:1342
        'any', -- shunt/quicktype.yue:1343
        'some' -- shunt/quicktype.yue:1344
      } -- shunt/quicktype.yue:1336
      for _index_0 = 1, #simple_types do -- shunt/quicktype.yue:1345
        local simple_type = simple_types[_index_0] -- shunt/quicktype.yue:1345
        require('shunt.spec')._expect_that([=[(tokens simple_type)]=], (tokens(simple_type)), (deep_eq({ -- shunt/quicktype.yue:1346
          Symbol(T_NAME, simple_type) -- shunt/quicktype.yue:1346
        })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1346)) -- shunt/quicktype.yue:1346
      end -- shunt/quicktype.yue:1348
    end) -- shunt/quicktype.yue:1335
    it('emits prefixed simple type', function() -- shunt/quicktype.yue:1350
      return require('shunt.spec')._expect_that([=[(tokens 'prefixed.Name')]=], (tokens('prefixed.Name')), (deep_eq({ -- shunt/quicktype.yue:1351
        Symbol(T_PREFIXED_NAME, 'prefixed.Name') -- shunt/quicktype.yue:1351
      })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1351)) -- shunt/quicktype.yue:1353
    end) -- shunt/quicktype.yue:1350
    it('emits the never type', function() -- shunt/quicktype.yue:1355
      return require('shunt.spec')._expect_that([=[(tokens '!')]=], (tokens('!')), (deep_eq({ -- shunt/quicktype.yue:1356
        Symbol(T_BANG) -- shunt/quicktype.yue:1356
      })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1356)) -- shunt/quicktype.yue:1358
    end) -- shunt/quicktype.yue:1355
    it('emits boolean types', function() -- shunt/quicktype.yue:1360
      return require('shunt.spec')._expect_that([=[(tokens 'true false')]=], (tokens('true false')), (deep_eq({ -- shunt/quicktype.yue:1361
        Symbol(T_BOOLEAN, true), -- shunt/quicktype.yue:1361
        Symbol(T_BOOLEAN, false) -- shunt/quicktype.yue:1361
      })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1361)) -- shunt/quicktype.yue:1363
    end) -- shunt/quicktype.yue:1360
    it('emits number types', function() -- shunt/quicktype.yue:1365
      return require('shunt.spec')._expect_that([=[(tokens '123 456.654 .789 -123 -456.654 -.789')]=], (tokens('123 456.654 .789 -123 -456.654 -.789')), (deep_eq({ -- shunt/quicktype.yue:1366
        Symbol(T_NUMBER, 123), -- shunt/quicktype.yue:1366
        Symbol(T_NUMBER, 456.654), -- shunt/quicktype.yue:1366
        Symbol(T_NUMBER, .789), -- shunt/quicktype.yue:1366
        Symbol(T_NUMBER, -123), -- shunt/quicktype.yue:1366
        Symbol(T_NUMBER, -456.654), -- shunt/quicktype.yue:1366
        Symbol(T_NUMBER, -.789) -- shunt/quicktype.yue:1366
      })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1366)) -- shunt/quicktype.yue:1373
    end) -- shunt/quicktype.yue:1365
    it('emits string types', function() -- shunt/quicktype.yue:1375
      return require('shunt.spec')._expect_that([=[(tokens '"hello" "world"')]=], (tokens('"hello" "world"')), (deep_eq({ -- shunt/quicktype.yue:1376
        Symbol(T_STRING, 'hello'), -- shunt/quicktype.yue:1376
        Symbol(T_STRING, 'world') -- shunt/quicktype.yue:1376
      })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1376)) -- shunt/quicktype.yue:1379
    end) -- shunt/quicktype.yue:1375
    it('emits strucural tokens', function() -- shunt/quicktype.yue:1381
      return require('shunt.spec')._expect_that([==[(tokens '(),{}[]:->=>...?+|')]==], (tokens('(),{}[]:->=>...?+|')), (deep_eq({ -- shunt/quicktype.yue:1382
        Symbol(T_PAREN_OPEN), -- shunt/quicktype.yue:1382
        Symbol(T_PAREN_CLOSE), -- shunt/quicktype.yue:1382
        Symbol(T_COMMA), -- shunt/quicktype.yue:1382
        Symbol(T_BRACE_OPEN), -- shunt/quicktype.yue:1382
        Symbol(T_BRACE_CLOSE), -- shunt/quicktype.yue:1382
        Symbol(T_BRACKET_OPEN), -- shunt/quicktype.yue:1382
        Symbol(T_BRACKET_CLOSE), -- shunt/quicktype.yue:1382
        Symbol(T_COLON), -- shunt/quicktype.yue:1382
        Symbol(T_THIN_ARROW), -- shunt/quicktype.yue:1382
        Symbol(T_FAT_ARROW), -- shunt/quicktype.yue:1382
        Symbol(T_DOTDOTDOT), -- shunt/quicktype.yue:1382
        Symbol(T_QUESTION), -- shunt/quicktype.yue:1382
        Symbol(T_PLUS), -- shunt/quicktype.yue:1382
        Symbol(T_PIPE) -- shunt/quicktype.yue:1382
      })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1382)) -- shunt/quicktype.yue:1397
    end) -- shunt/quicktype.yue:1381
    it('ignores whitespace', function() -- shunt/quicktype.yue:1399
      return require('shunt.spec')._expect_that([=[(tokens ' (\tstr_ing\r)\n-> str-ing ')]=], (tokens(' (\tstr_ing\r)\n-> str-ing ')), (deep_eq({ -- shunt/quicktype.yue:1400
        Symbol(T_PAREN_OPEN), -- shunt/quicktype.yue:1400
        Symbol(T_NAME, "str_ing"), -- shunt/quicktype.yue:1400
        Symbol(T_PAREN_CLOSE), -- shunt/quicktype.yue:1400
        Symbol(T_THIN_ARROW), -- shunt/quicktype.yue:1400
        Symbol(T_NAME, "str-ing") -- shunt/quicktype.yue:1400
      })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1400)) -- shunt/quicktype.yue:1406
    end) -- shunt/quicktype.yue:1399
    it('ignores comments', function() -- shunt/quicktype.yue:1408
      return require('shunt.spec')._expect_that([=[(tokens '-- hello\n--world!')]=], (tokens('-- hello\n--world!')), (deep_eq({ })), tostring("shunt/quicktype.yue") .. ":" .. tostring(1409)) -- shunt/quicktype.yue:1409
    end) -- shunt/quicktype.yue:1408
    it('rejects unexpected characters', function() -- shunt/quicktype.yue:1411
      return require('shunt.spec')._expect_that([=[(-> tokens '~')]=], (function() -- shunt/quicktype.yue:1412
        return tokens('~') -- shunt/quicktype.yue:1412
      end), (errors(matches([[unexpected character '~']]))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1412)) -- shunt/quicktype.yue:1412
    end) -- shunt/quicktype.yue:1411
    return describe(':peek', function() -- shunt/quicktype.yue:1414
      it('matches :next', function() -- shunt/quicktype.yue:1415
        local lexer = Lexer('()'); -- shunt/quicktype.yue:1416
        require('shunt.spec')._assert_that([=[lexer\peek!]=], lexer:peek(), (deep_eq(Symbol(T_PAREN_OPEN))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1417)); -- shunt/quicktype.yue:1417
        require('shunt.spec')._assert_that([=[lexer\peek!]=], lexer:peek(), (deep_eq(Symbol(T_PAREN_OPEN))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1418)); -- shunt/quicktype.yue:1418
        require('shunt.spec')._assert_that([=[lexer\next!]=], lexer:next(), (deep_eq(Symbol(T_PAREN_OPEN))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1419)); -- shunt/quicktype.yue:1419
        require('shunt.spec')._assert_that([=[lexer\peek!]=], lexer:peek(), (deep_eq(Symbol(T_PAREN_CLOSE))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1420)); -- shunt/quicktype.yue:1420
        require('shunt.spec')._assert_that([=[lexer\peek!]=], lexer:peek(), (deep_eq(Symbol(T_PAREN_CLOSE))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1421)); -- shunt/quicktype.yue:1421
        return require('shunt.spec')._assert_that([=[lexer\next!]=], lexer:next(), (deep_eq(Symbol(T_PAREN_CLOSE))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1422)) -- shunt/quicktype.yue:1422
      end) -- shunt/quicktype.yue:1415
      return it('returns nil at EOF', function() -- shunt/quicktype.yue:1424
        local lexer = Lexer(''); -- shunt/quicktype.yue:1425
        require('shunt.spec')._expect_that([=[lexer\peek!]=], lexer:peek(), (eq(nil)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1426)); -- shunt/quicktype.yue:1426
        return require('shunt.spec')._expect_that([=[lexer\peek!]=], lexer:peek(), (eq(nil)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1427)) -- shunt/quicktype.yue:1427
      end) -- shunt/quicktype.yue:1427
    end) -- shunt/quicktype.yue:1427
  end) -- shunt/quicktype.yue:1328
  describe('TypeSpecParser', function() -- shunt/quicktype.yue:1429
    describe('run on simple types', function() -- shunt/quicktype.yue:1430
      it('accepts primitives', function() -- shunt/quicktype.yue:1431
        require('shunt.spec')._expect_that([=[(parse 'nil')]=], (parse('nil')), (deep_eq(Primitive(type(nil)))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1432)); -- shunt/quicktype.yue:1432
        require('shunt.spec')._expect_that([=[(parse 'number')]=], (parse('number')), (deep_eq(Primitive(type(0)))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1433)); -- shunt/quicktype.yue:1433
        require('shunt.spec')._expect_that([=[(parse 'number')]=], (parse('number')), (deep_eq(Primitive(type(0.0)))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1434)); -- shunt/quicktype.yue:1434
        require('shunt.spec')._expect_that([=[(parse 'string')]=], (parse('string')), (deep_eq(Primitive(type("")))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1435)); -- shunt/quicktype.yue:1435
        require('shunt.spec')._expect_that([=[(parse 'table')]=], (parse('table')), (deep_eq(Primitive(type({ })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1436)); -- shunt/quicktype.yue:1436
        require('shunt.spec')._expect_that([=[(parse 'function')]=], (parse('function')), (deep_eq(Primitive(type(function() end)))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1437)); -- shunt/quicktype.yue:1437
        require('shunt.spec')._expect_that([=[(parse 'thread')]=], (parse('thread')), (deep_eq(Primitive(type(coroutine.create(function() end))))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1438)); -- shunt/quicktype.yue:1438
        require('shunt.spec')._expect_that([=[(parse 'userdata')]=], (parse('userdata')), (deep_eq(Primitive('userdata'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1439)); -- shunt/quicktype.yue:1439
        require('shunt.spec')._expect_that([=[(parse 'any')]=], (parse('any')), (deep_eq(Any())), tostring("shunt/quicktype.yue") .. ":" .. tostring(1440)); -- shunt/quicktype.yue:1440
        require('shunt.spec')._expect_that([=[(parse 'some')]=], (parse('some')), (deep_eq(Some())), tostring("shunt/quicktype.yue") .. ":" .. tostring(1441)); -- shunt/quicktype.yue:1441
        return require('shunt.spec')._expect_that([=[(parse '!')]=], (parse('!')), (deep_eq(Never())), tostring("shunt/quicktype.yue") .. ":" .. tostring(1442)) -- shunt/quicktype.yue:1442
      end) -- shunt/quicktype.yue:1431
      it('accepts user types', function() -- shunt/quicktype.yue:1444
        return require('shunt.spec')._expect_that([=[(parse 'UserType')]=], (parse('UserType')), (deep_eq(UserType('UserType'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1445)) -- shunt/quicktype.yue:1445
      end) -- shunt/quicktype.yue:1444
      it('accepts prefixed user types', function() -- shunt/quicktype.yue:1447
        return require('shunt.spec')._expect_that([=[(parse 'prefixed.UserType')]=], (parse('prefixed.UserType')), (deep_eq(UserType('prefixed.UserType'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1448)) -- shunt/quicktype.yue:1448
      end) -- shunt/quicktype.yue:1447
      it('accepts boolean types', function() -- shunt/quicktype.yue:1450
        require('shunt.spec')._expect_that([=[(parse 'true')]=], (parse('true')), (deep_eq(BooleanType(true))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1451)); -- shunt/quicktype.yue:1451
        return require('shunt.spec')._expect_that([=[(parse 'false')]=], (parse('false')), (deep_eq(BooleanType(false))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1452)) -- shunt/quicktype.yue:1452
      end) -- shunt/quicktype.yue:1450
      it('accepts number types', function() -- shunt/quicktype.yue:1454
        return require('shunt.spec')._expect_that([=[(parse '123')]=], (parse('123')), (deep_eq(NumberType(123))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1455)) -- shunt/quicktype.yue:1455
      end) -- shunt/quicktype.yue:1454
      it('accepts string types', function() -- shunt/quicktype.yue:1457
        return require('shunt.spec')._expect_that([=[(parse '"hello"')]=], (parse('"hello"')), (deep_eq(StringType('hello'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1458)) -- shunt/quicktype.yue:1458
      end) -- shunt/quicktype.yue:1457
      it('rejects unknown primitives', function() -- shunt/quicktype.yue:1460
        return require('shunt.spec')._expect_that([=[(-> parse 'user')]=], (function() -- shunt/quicktype.yue:1461
          return parse('user') -- shunt/quicktype.yue:1461
        end), (errors(matches([[cannot use 'user' as user type name: name must start with an uppercase letter]]))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1461)) -- shunt/quicktype.yue:1461
      end) -- shunt/quicktype.yue:1460
      it('rejects malformed prefixed identifiers', function() -- shunt/quicktype.yue:1463
        require('shunt.spec')._expect_that([=[(-> parse 'foo.')]=], (function() -- shunt/quicktype.yue:1464
          return parse('foo.') -- shunt/quicktype.yue:1464
        end), (errors(matches('foo'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1464)); -- shunt/quicktype.yue:1464
        require('shunt.spec')._expect_that([=[(-> parse '.Bar')]=], (function() -- shunt/quicktype.yue:1465
          return parse('.Bar') -- shunt/quicktype.yue:1465
        end), (errors(matches("unexpected character '%.'"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1465)); -- shunt/quicktype.yue:1465
        require('shunt.spec')._expect_that([=[(-> parse 'Foo.bar')]=], (function() -- shunt/quicktype.yue:1466
          return parse('Foo.bar') -- shunt/quicktype.yue:1466
        end), (errors(matches("cannot use 'Foo' as type%-prefix: must start with a lowercase letter"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1466)); -- shunt/quicktype.yue:1466
        require('shunt.spec')._expect_that([=[(-> parse 'foo.bar')]=], (function() -- shunt/quicktype.yue:1467
          return parse('foo.bar') -- shunt/quicktype.yue:1467
        end), (errors(matches("cannot use 'bar' as disambiguated type name: must start with an uppercase letter"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1467)); -- shunt/quicktype.yue:1467
        return require('shunt.spec')._expect_that([=[(-> parse 'number.Bar')]=], (function() -- shunt/quicktype.yue:1468
          return parse('number.Bar') -- shunt/quicktype.yue:1468
        end), (errors(matches("cannot use 'number' as type%-prefix: must not be a primitive"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1468)) -- shunt/quicktype.yue:1468
      end) -- shunt/quicktype.yue:1463
      it('rejects incomplete types', function() -- shunt/quicktype.yue:1470
        return require('shunt.spec')._expect_that([=[(-> parse '[')]=], (function() -- shunt/quicktype.yue:1471
          return parse('[') -- shunt/quicktype.yue:1471
        end), (errors(matches([[unexpected EOF]]))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1471)) -- shunt/quicktype.yue:1471
      end) -- shunt/quicktype.yue:1470
      return it('rejects inputs with trailing errors', function() -- shunt/quicktype.yue:1473
        return require('shunt.spec')._expect_that([=[(-> parse 'string]')]=], (function() -- shunt/quicktype.yue:1474
          return parse('string]') -- shunt/quicktype.yue:1474
        end), (errors(matches('type spec has trailing characters'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1474)) -- shunt/quicktype.yue:1474
      end) -- shunt/quicktype.yue:1474
    end) -- shunt/quicktype.yue:1430
    return describe('run on composite types', function() -- shunt/quicktype.yue:1476
      it('accepts optional', function() -- shunt/quicktype.yue:1477
        require('shunt.spec')._expect_that([=[(parse '?nil')]=], (parse('?nil')), (deep_eq(Optional(Primitive('nil')))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1478)); -- shunt/quicktype.yue:1478
        require('shunt.spec')._expect_that([=[(parse '?string')]=], (parse('?string')), (deep_eq(Optional(Primitive('string')))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1479)); -- shunt/quicktype.yue:1479
        return require('shunt.spec')._expect_that([=[(parse '?() -> nil')]=], (parse('?() -> nil')), (deep_eq(Optional(Function({ }, { -- shunt/quicktype.yue:1480
          Primitive('nil') -- shunt/quicktype.yue:1480
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1480)) -- shunt/quicktype.yue:1480
      end) -- shunt/quicktype.yue:1477
      it('accepts arrays', function() -- shunt/quicktype.yue:1482
        require('shunt.spec')._expect_that([=[(parse '[string]')]=], (parse('[string]')), (deep_eq(Array(Primitive('string')))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1483)); -- shunt/quicktype.yue:1483
        return require('shunt.spec')._expect_that([=[(parse '[[string]]')]=], (parse('[[string]]')), (deep_eq(Array(Array(Primitive('string'))))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1484)) -- shunt/quicktype.yue:1484
      end) -- shunt/quicktype.yue:1482
      it('accepts tuples', function() -- shunt/quicktype.yue:1486
        require('shunt.spec')._expect_that([=[(parse '()')]=], (parse('()')), (deep_eq(Tuple({ }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1487)); -- shunt/quicktype.yue:1487
        require('shunt.spec')._expect_that([=[(parse '(nil,)')]=], (parse('(nil,)')), (deep_eq(Tuple({ -- shunt/quicktype.yue:1488
          Primitive('nil') -- shunt/quicktype.yue:1488
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1488)); -- shunt/quicktype.yue:1488
        require('shunt.spec')._expect_that([=[(parse '(nil, number)')]=], (parse('(nil, number)')), (deep_eq(Tuple({ -- shunt/quicktype.yue:1489
          (Primitive('nil')), -- shunt/quicktype.yue:1489
          Primitive('number') -- shunt/quicktype.yue:1489
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1489)); -- shunt/quicktype.yue:1489
        return require('shunt.spec')._expect_that([=[(parse '((nil, number), string, (User, table))')]=], (parse('((nil, number), string, (User, table))')), (deep_eq(Tuple({ -- shunt/quicktype.yue:1490
          Tuple({ -- shunt/quicktype.yue:1490
            (Primitive('nil')), -- shunt/quicktype.yue:1490
            (Primitive('number')) -- shunt/quicktype.yue:1490
          }), -- shunt/quicktype.yue:1490
          Primitive('string'), -- shunt/quicktype.yue:1490
          Tuple({ -- shunt/quicktype.yue:1490
            (UserType('User')), -- shunt/quicktype.yue:1490
            (Primitive('table')) -- shunt/quicktype.yue:1490
          }) -- shunt/quicktype.yue:1490
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1490)) -- shunt/quicktype.yue:1494
      end) -- shunt/quicktype.yue:1486
      it('accepts sets', function() -- shunt/quicktype.yue:1496
        require('shunt.spec')._expect_that([=[(parse '{string}')]=], (parse('{string}')), (deep_eq(Set(nil, Primitive('string')))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1497)); -- shunt/quicktype.yue:1497
        require('shunt.spec')._expect_that([=[(parse '{{string}}')]=], (parse('{{string}}')), (deep_eq(Set(nil, Set(nil, Primitive('string'))))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1498)); -- shunt/quicktype.yue:1498
        return require('shunt.spec')._expect_that([=[(parse '{<>: {}, string}')]=], (parse('{<>: {}, string}')), (deep_eq(Set((Struct(nil, { })), Primitive('string')))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1499)) -- shunt/quicktype.yue:1499
      end) -- shunt/quicktype.yue:1496
      it('accepts mappings', function() -- shunt/quicktype.yue:1501
        require('shunt.spec')._expect_that([=[(parse '{boolean -> number}')]=], (parse('{boolean -> number}')), (deep_eq(Mapping(nil, (Primitive('boolean')), Primitive('number')))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1502)); -- shunt/quicktype.yue:1502
        require('shunt.spec')._expect_that([=[(parse '{{boolean -> number} -> {string -> thread}}')]=], (parse('{{boolean -> number} -> {string -> thread}}')), (deep_eq(Mapping(nil, (Mapping(nil, (Primitive('boolean')), Primitive('number'))), Mapping(nil, (Primitive('string')), Primitive('thread'))))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1503)); -- shunt/quicktype.yue:1503
        return require('shunt.spec')._expect_that([=[(parse '{<>: {}, boolean -> number}')]=], (parse('{<>: {}, boolean -> number}')), (deep_eq(Mapping((Struct(nil, { })), (Primitive('boolean')), Primitive('number')))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1504)) -- shunt/quicktype.yue:1504
      end) -- shunt/quicktype.yue:1501
      it('accepts structs', function() -- shunt/quicktype.yue:1506
        require('shunt.spec')._expect_that([=[(parse '{}')]=], (parse('{}')), (deep_eq(Struct(nil, { }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1507)); -- shunt/quicktype.yue:1507
        require('shunt.spec')._expect_that([=[(parse '{field: boolean}')]=], (parse('{field: boolean}')), (deep_eq(Struct(nil, { -- shunt/quicktype.yue:1508
          Field('field', Primitive('boolean')) -- shunt/quicktype.yue:1508
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1508)); -- shunt/quicktype.yue:1508
        require('shunt.spec')._expect_that([=[(parse '{field: boolean,}')]=], (parse('{field: boolean,}')), (deep_eq(Struct(nil, { -- shunt/quicktype.yue:1510
          Field('field', Primitive('boolean')) -- shunt/quicktype.yue:1510
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1510)); -- shunt/quicktype.yue:1510
        require('shunt.spec')._expect_that([=[(parse '{field1: number, field2: string}')]=], (parse('{field1: number, field2: string}')), (deep_eq(Struct(nil, { -- shunt/quicktype.yue:1512
          Field('field1', Primitive('number')), -- shunt/quicktype.yue:1512
          Field('field2', Primitive('string')) -- shunt/quicktype.yue:1512
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1512)); -- shunt/quicktype.yue:1512
        require('shunt.spec')._expect_that([=[(parse '{outer1: {inner1: boolean}, outer2: {inner2: boolean}}')]=], (parse('{outer1: {inner1: boolean}, outer2: {inner2: boolean}}')), (deep_eq(Struct(nil, { -- shunt/quicktype.yue:1515
          Field('outer1', Struct(nil, { -- shunt/quicktype.yue:1515
            Field('inner1', Primitive('boolean')) -- shunt/quicktype.yue:1515
          })), -- shunt/quicktype.yue:1515
          Field('outer2', Struct(nil, { -- shunt/quicktype.yue:1515
            Field('inner2', Primitive('boolean')) -- shunt/quicktype.yue:1515
          })) -- shunt/quicktype.yue:1515
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1515)); -- shunt/quicktype.yue:1515
        require('shunt.spec')._expect_that([=[(parse '{<>: {}}')]=], (parse('{<>: {}}')), (deep_eq(Struct((Struct(nil, { })), { }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1520)); -- shunt/quicktype.yue:1520
        require('shunt.spec')._expect_that([=[(parse '{<>: {},}')]=], (parse('{<>: {},}')), (deep_eq(Struct((Struct(nil, { })), { }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1521)); -- shunt/quicktype.yue:1521
        return require('shunt.spec')._expect_that([=[(parse '{<>: {<>: {__tostring: function}}}')]=], (parse('{<>: {<>: {__tostring: function}}}')), (deep_eq((function() -- shunt/quicktype.yue:1522
          return Struct((Struct((Struct(nil, { -- shunt/quicktype.yue:1522
            Field('__tostring', Primitive('function')) -- shunt/quicktype.yue:1522
          })), { })), { }) -- shunt/quicktype.yue:1522
        end)())), tostring("shunt/quicktype.yue") .. ":" .. tostring(1522)) -- shunt/quicktype.yue:1523
      end) -- shunt/quicktype.yue:1506
      it('accepts functions', function() -- shunt/quicktype.yue:1525
        require('shunt.spec')._expect_that([=[(parse '() -> <>')]=], (parse('() -> <>')), (deep_eq(Function({ }, { }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1526)); -- shunt/quicktype.yue:1526
        require('shunt.spec')._expect_that([=[(parse '() -> nil')]=], (parse('() -> nil')), (deep_eq(Function({ }, { -- shunt/quicktype.yue:1527
          Primitive('nil') -- shunt/quicktype.yue:1527
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1527)); -- shunt/quicktype.yue:1527
        require('shunt.spec')._expect_that([=[(parse '(string) -> number')]=], (parse('(string) -> number')), (deep_eq(Function({ -- shunt/quicktype.yue:1528
          Primitive('string') -- shunt/quicktype.yue:1528
        }, { -- shunt/quicktype.yue:1528
          Primitive('number') -- shunt/quicktype.yue:1528
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1528)); -- shunt/quicktype.yue:1528
        require('shunt.spec')._expect_that([=[(parse '(number, string) -> number')]=], (parse('(number, string) -> number')), (deep_eq(Function({ -- shunt/quicktype.yue:1529
          (Primitive('number')), -- shunt/quicktype.yue:1529
          (Primitive('string')) -- shunt/quicktype.yue:1529
        }, { -- shunt/quicktype.yue:1529
          Primitive('number') -- shunt/quicktype.yue:1529
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1529)); -- shunt/quicktype.yue:1529
        require('shunt.spec')._expect_that([=[(parse '(string) -> (number) -> boolean')]=], (parse('(string) -> (number) -> boolean')), (deep_eq(Function({ -- shunt/quicktype.yue:1530
          Primitive('string') -- shunt/quicktype.yue:1530
        }, { -- shunt/quicktype.yue:1530
          Function({ -- shunt/quicktype.yue:1530
            Primitive('number') -- shunt/quicktype.yue:1530
          }, { -- shunt/quicktype.yue:1530
            Primitive('boolean') -- shunt/quicktype.yue:1530
          }) -- shunt/quicktype.yue:1530
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1530)); -- shunt/quicktype.yue:1530
        require('shunt.spec')._expect_that([=[(parse '() -> <string>')]=], (parse('() -> <string>')), (deep_eq(Function({ }, { -- shunt/quicktype.yue:1531
          (Primitive('string')) -- shunt/quicktype.yue:1531
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1531)); -- shunt/quicktype.yue:1531
        require('shunt.spec')._expect_that([=[(parse '() -> <string,>')]=], (parse('() -> <string,>')), (deep_eq(Function({ }, { -- shunt/quicktype.yue:1532
          Primitive('string') -- shunt/quicktype.yue:1532
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1532)); -- shunt/quicktype.yue:1532
        require('shunt.spec')._expect_that([=[(parse '() -> <string, boolean>')]=], (parse('() -> <string, boolean>')), (deep_eq(Function({ }, { -- shunt/quicktype.yue:1533
          (Primitive('string')), -- shunt/quicktype.yue:1533
          (Primitive('boolean')) -- shunt/quicktype.yue:1533
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1533)); -- shunt/quicktype.yue:1533
        require('shunt.spec')._expect_that([=[(parse '(string...) -> number...')]=], (parse('(string...) -> number...')), (deep_eq(Function(setmetatable({ }, { -- shunt/quicktype.yue:1535
          __index = function(self) -- shunt/quicktype.yue:1535
            return Primitive('string') -- shunt/quicktype.yue:1535
          end -- shunt/quicktype.yue:1535
        }), setmetatable({ }, { -- shunt/quicktype.yue:1535
          __index = function(self) -- shunt/quicktype.yue:1535
            return Primitive('number') -- shunt/quicktype.yue:1535
          end -- shunt/quicktype.yue:1535
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1535)); -- shunt/quicktype.yue:1535
        require('shunt.spec')._expect_that([=[(parse '(string...) -> <number...>')]=], (parse('(string...) -> <number...>')), (deep_eq(Function(setmetatable({ }, { -- shunt/quicktype.yue:1536
          __index = function(self) -- shunt/quicktype.yue:1536
            return Primitive('string') -- shunt/quicktype.yue:1536
          end -- shunt/quicktype.yue:1536
        }), setmetatable({ }, { -- shunt/quicktype.yue:1536
          __index = function(self) -- shunt/quicktype.yue:1536
            return Primitive('number') -- shunt/quicktype.yue:1536
          end -- shunt/quicktype.yue:1536
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1536)); -- shunt/quicktype.yue:1536
        require('shunt.spec')._expect_that([=[(parse '(boolean, string...) -> <thread, number...>')]=], (parse('(boolean, string...) -> <thread, number...>')), (deep_eq(Function(setmetatable({ -- shunt/quicktype.yue:1537
          (Primitive('boolean')), -- shunt/quicktype.yue:1537
        }, { -- shunt/quicktype.yue:1537
          __index = function(self) -- shunt/quicktype.yue:1537
            return Primitive('string') -- shunt/quicktype.yue:1537
          end -- shunt/quicktype.yue:1537
        }), setmetatable({ -- shunt/quicktype.yue:1537
          (Primitive('thread')), -- shunt/quicktype.yue:1537
        }, { -- shunt/quicktype.yue:1537
          __index = function(self) -- shunt/quicktype.yue:1537
            return Primitive('number') -- shunt/quicktype.yue:1537
          end -- shunt/quicktype.yue:1537
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1537)); -- shunt/quicktype.yue:1537
        return require('shunt.spec')._expect_that([=[(parse '() -> [string]...')]=], (parse('() -> [string]...')), (deep_eq(Function({ }, setmetatable({ }, { -- shunt/quicktype.yue:1538
          __index = function(self) -- shunt/quicktype.yue:1538
            return Array(Primitive('string')) -- shunt/quicktype.yue:1538
          end -- shunt/quicktype.yue:1538
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1538)) -- shunt/quicktype.yue:1538
      end) -- shunt/quicktype.yue:1525
      it('accepts methods', function() -- shunt/quicktype.yue:1540
        require('shunt.spec')._expect_that([==[(parse '() => <>')]==], (parse('() => <>')), (deep_eq(Method({ }, { }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1541)); -- shunt/quicktype.yue:1541
        require('shunt.spec')._expect_that([==[(parse '() => nil')]==], (parse('() => nil')), (deep_eq(Method({ }, { -- shunt/quicktype.yue:1542
          Primitive('nil') -- shunt/quicktype.yue:1542
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1542)); -- shunt/quicktype.yue:1542
        require('shunt.spec')._expect_that([==[(parse '(string) => number')]==], (parse('(string) => number')), (deep_eq(Method({ -- shunt/quicktype.yue:1543
          Primitive('string') -- shunt/quicktype.yue:1543
        }, { -- shunt/quicktype.yue:1543
          Primitive('number') -- shunt/quicktype.yue:1543
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1543)); -- shunt/quicktype.yue:1543
        require('shunt.spec')._expect_that([==[(parse '(number, string) => number')]==], (parse('(number, string) => number')), (deep_eq(Method({ -- shunt/quicktype.yue:1544
          (Primitive('number')), -- shunt/quicktype.yue:1544
          (Primitive('string')) -- shunt/quicktype.yue:1544
        }, { -- shunt/quicktype.yue:1544
          Primitive('number') -- shunt/quicktype.yue:1544
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1544)); -- shunt/quicktype.yue:1544
        require('shunt.spec')._expect_that([==[(parse '(string) => (number) => boolean')]==], (parse('(string) => (number) => boolean')), (deep_eq(Method({ -- shunt/quicktype.yue:1545
          Primitive('string') -- shunt/quicktype.yue:1545
        }, { -- shunt/quicktype.yue:1545
          Method({ -- shunt/quicktype.yue:1545
            Primitive('number') -- shunt/quicktype.yue:1545
          }, { -- shunt/quicktype.yue:1545
            Primitive('boolean') -- shunt/quicktype.yue:1545
          }) -- shunt/quicktype.yue:1545
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1545)); -- shunt/quicktype.yue:1545
        require('shunt.spec')._expect_that([==[(parse '() => <string>')]==], (parse('() => <string>')), (deep_eq(Method({ }, { -- shunt/quicktype.yue:1546
          (Primitive('string')) -- shunt/quicktype.yue:1546
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1546)); -- shunt/quicktype.yue:1546
        require('shunt.spec')._expect_that([==[(parse '() => <string,>')]==], (parse('() => <string,>')), (deep_eq(Method({ }, { -- shunt/quicktype.yue:1547
          Primitive('string') -- shunt/quicktype.yue:1547
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1547)); -- shunt/quicktype.yue:1547
        require('shunt.spec')._expect_that([==[(parse '() => <string, boolean>')]==], (parse('() => <string, boolean>')), (deep_eq(Method({ }, { -- shunt/quicktype.yue:1548
          (Primitive('string')), -- shunt/quicktype.yue:1548
          (Primitive('boolean')) -- shunt/quicktype.yue:1548
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1548)); -- shunt/quicktype.yue:1548
        require('shunt.spec')._expect_that([==[(parse '(string...) => number...')]==], (parse('(string...) => number...')), (deep_eq(Method(setmetatable({ }, { -- shunt/quicktype.yue:1550
          __index = function(self) -- shunt/quicktype.yue:1550
            return Primitive('string') -- shunt/quicktype.yue:1550
          end -- shunt/quicktype.yue:1550
        }), setmetatable({ }, { -- shunt/quicktype.yue:1550
          __index = function(self) -- shunt/quicktype.yue:1550
            return Primitive('number') -- shunt/quicktype.yue:1550
          end -- shunt/quicktype.yue:1550
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1550)); -- shunt/quicktype.yue:1550
        require('shunt.spec')._expect_that([==[(parse '(string...) => <number...>')]==], (parse('(string...) => <number...>')), (deep_eq(Method(setmetatable({ }, { -- shunt/quicktype.yue:1551
          __index = function(self) -- shunt/quicktype.yue:1551
            return Primitive('string') -- shunt/quicktype.yue:1551
          end -- shunt/quicktype.yue:1551
        }), setmetatable({ }, { -- shunt/quicktype.yue:1551
          __index = function(self) -- shunt/quicktype.yue:1551
            return Primitive('number') -- shunt/quicktype.yue:1551
          end -- shunt/quicktype.yue:1551
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1551)); -- shunt/quicktype.yue:1551
        require('shunt.spec')._expect_that([==[(parse '(boolean, string...) => <thread, number...>')]==], (parse('(boolean, string...) => <thread, number...>')), (deep_eq(Method(setmetatable({ -- shunt/quicktype.yue:1552
          (Primitive('boolean')), -- shunt/quicktype.yue:1552
        }, { -- shunt/quicktype.yue:1552
          __index = function(self) -- shunt/quicktype.yue:1552
            return Primitive('string') -- shunt/quicktype.yue:1552
          end -- shunt/quicktype.yue:1552
        }), setmetatable({ -- shunt/quicktype.yue:1552
          (Primitive('thread')), -- shunt/quicktype.yue:1552
        }, { -- shunt/quicktype.yue:1552
          __index = function(self) -- shunt/quicktype.yue:1552
            return Primitive('number') -- shunt/quicktype.yue:1552
          end -- shunt/quicktype.yue:1552
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1552)); -- shunt/quicktype.yue:1552
        return require('shunt.spec')._expect_that([==[(parse '() => [string]...')]==], (parse('() => [string]...')), (deep_eq(Method({ }, setmetatable({ }, { -- shunt/quicktype.yue:1553
          __index = function(self) -- shunt/quicktype.yue:1553
            return Array(Primitive('string')) -- shunt/quicktype.yue:1553
          end -- shunt/quicktype.yue:1553
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1553)) -- shunt/quicktype.yue:1553
      end) -- shunt/quicktype.yue:1540
      it('accepts conjunctions', function() -- shunt/quicktype.yue:1555
        return require('shunt.spec')._expect_that([=[(parse '[string]+{number->string}+table+function')]=], (parse('[string]+{number->string}+table+function')), (deep_eq(Conjunction({ -- shunt/quicktype.yue:1556
          Array(Primitive('string')), -- shunt/quicktype.yue:1556
          Mapping(nil, (Primitive('number')), Primitive('string')), -- shunt/quicktype.yue:1556
          Primitive('table'), -- shunt/quicktype.yue:1556
          Primitive('function') -- shunt/quicktype.yue:1556
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1556)) -- shunt/quicktype.yue:1560
      end) -- shunt/quicktype.yue:1555
      it('accepts disjunctions', function() -- shunt/quicktype.yue:1562
        require('shunt.spec')._expect_that([=[(parse '[string]|{number->string}|table|function')]=], (parse('[string]|{number->string}|table|function')), (deep_eq(Disjunction({ -- shunt/quicktype.yue:1563
          Array(Primitive('string')), -- shunt/quicktype.yue:1563
          Mapping(nil, (Primitive('number')), Primitive('string')), -- shunt/quicktype.yue:1563
          Primitive('table'), -- shunt/quicktype.yue:1563
          Primitive('function') -- shunt/quicktype.yue:1563
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1563)); -- shunt/quicktype.yue:1563
        return require('shunt.spec')._expect_that([=[(parse '{string|number}')]=], (parse('{string|number}')), (deep_eq(Set(nil, Disjunction({ -- shunt/quicktype.yue:1568
          Primitive('string'), -- shunt/quicktype.yue:1568
          Primitive('number') -- shunt/quicktype.yue:1568
        })))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1568)) -- shunt/quicktype.yue:1570
      end) -- shunt/quicktype.yue:1562
      return it('gives precedence to conjunctions', function() -- shunt/quicktype.yue:1572
        require('shunt.spec')._expect_that([=[(parse 'string+number|boolean')]=], (parse('string+number|boolean')), (deep_eq(Disjunction({ -- shunt/quicktype.yue:1573
          Conjunction({ -- shunt/quicktype.yue:1573
            Primitive('string'), -- shunt/quicktype.yue:1573
            Primitive('number') -- shunt/quicktype.yue:1573
          }), -- shunt/quicktype.yue:1573
          Primitive('boolean') -- shunt/quicktype.yue:1573
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1573)); -- shunt/quicktype.yue:1573
        return require('shunt.spec')._expect_that([=[(parse 'string|number+boolean')]=], (parse('string|number+boolean')), (deep_eq(Disjunction({ -- shunt/quicktype.yue:1578
          Primitive('string'), -- shunt/quicktype.yue:1578
          Conjunction({ -- shunt/quicktype.yue:1578
            Primitive('number'), -- shunt/quicktype.yue:1578
            Primitive('boolean') -- shunt/quicktype.yue:1578
          }) -- shunt/quicktype.yue:1578
        }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1578)) -- shunt/quicktype.yue:1582
      end) -- shunt/quicktype.yue:1582
    end) -- shunt/quicktype.yue:1582
  end) -- shunt/quicktype.yue:1429
  describe('T', function() -- shunt/quicktype.yue:1584
    it('requires two arguments', function() -- shunt/quicktype.yue:1585
      return require('shunt.spec')._expect_that([=[(-> T!)]=], (function() -- shunt/quicktype.yue:1586
        return T() -- shunt/quicktype.yue:1586
      end), (errors(matches('cannot typecheck: no type spec provided'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1586)) -- shunt/quicktype.yue:1586
    end) -- shunt/quicktype.yue:1585
    it('returns its second argument', function() -- shunt/quicktype.yue:1588
      local value = { }; -- shunt/quicktype.yue:1589
      return require('shunt.spec')._expect_that([=[(T '{}', value)]=], (T('{}', value)), (eq(value)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1590)) -- shunt/quicktype.yue:1590
    end) -- shunt/quicktype.yue:1588
    it('checks primitives', function() -- shunt/quicktype.yue:1592
      require('shunt.spec')._expect_that([=[(-> T 'nil', nil)]=], (function() -- shunt/quicktype.yue:1593
        return T('nil', nil) -- shunt/quicktype.yue:1593
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1593)); -- shunt/quicktype.yue:1593
      require('shunt.spec')._expect_that([=[(-> T 'number', 123)]=], (function() -- shunt/quicktype.yue:1594
        return T('number', 123) -- shunt/quicktype.yue:1594
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1594)); -- shunt/quicktype.yue:1594
      require('shunt.spec')._expect_that([=[(-> T 'string', 'some-string')]=], (function() -- shunt/quicktype.yue:1595
        return T('string', 'some-string') -- shunt/quicktype.yue:1595
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1595)); -- shunt/quicktype.yue:1595
      require('shunt.spec')._expect_that([=[(-> T 'nil', 123)]=], (function() -- shunt/quicktype.yue:1597
        return T('nil', 123) -- shunt/quicktype.yue:1597
      end), (errors(matches('incorrect type: expected nil but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1597)); -- shunt/quicktype.yue:1597
      require('shunt.spec')._expect_that([=[(-> T 'number', nil)]=], (function() -- shunt/quicktype.yue:1598
        return T('number', nil) -- shunt/quicktype.yue:1598
      end), (errors(matches('incorrect type: expected number but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1598)); -- shunt/quicktype.yue:1598
      return require('shunt.spec')._expect_that([=[(-> T 'string', 123)]=], (function() -- shunt/quicktype.yue:1599
        return T('string', 123) -- shunt/quicktype.yue:1599
      end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1599)) -- shunt/quicktype.yue:1599
    end) -- shunt/quicktype.yue:1592
    it('checks any', function() -- shunt/quicktype.yue:1601
      local values = { -- shunt/quicktype.yue:1603
        123, -- shunt/quicktype.yue:1603
        'str', -- shunt/quicktype.yue:1604
        { }, -- shunt/quicktype.yue:1605
        function() end, -- shunt/quicktype.yue:1606
        coroutine.create(function() end) -- shunt/quicktype.yue:1607
      } -- shunt/quicktype.yue:1602
      for _index_0 = 1, #values do -- shunt/quicktype.yue:1608
        local value = values[_index_0] -- shunt/quicktype.yue:1608
        require('shunt.spec')._expect_that([=[(-> T 'any', value)]=], (function() -- shunt/quicktype.yue:1609
          return T('any', value) -- shunt/quicktype.yue:1609
        end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1609)) -- shunt/quicktype.yue:1609
      end -- shunt/quicktype.yue:1609
      return require('shunt.spec')._expect_that([=[(-> T 'any', nil)]=], (function() -- shunt/quicktype.yue:1610
        return T('any', nil) -- shunt/quicktype.yue:1610
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1610)) -- shunt/quicktype.yue:1610
    end) -- shunt/quicktype.yue:1601
    it('checks some', function() -- shunt/quicktype.yue:1612
      local values = { -- shunt/quicktype.yue:1614
        123, -- shunt/quicktype.yue:1614
        'str', -- shunt/quicktype.yue:1615
        { }, -- shunt/quicktype.yue:1616
        function() end, -- shunt/quicktype.yue:1617
        coroutine.create(function() end) -- shunt/quicktype.yue:1618
      } -- shunt/quicktype.yue:1613
      for _index_0 = 1, #values do -- shunt/quicktype.yue:1619
        local value = values[_index_0] -- shunt/quicktype.yue:1619
        require('shunt.spec')._expect_that([=[(-> T 'some', value)]=], (function() -- shunt/quicktype.yue:1620
          return T('some', value) -- shunt/quicktype.yue:1620
        end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1620)) -- shunt/quicktype.yue:1620
      end -- shunt/quicktype.yue:1620
      return require('shunt.spec')._expect_that([=[(-> T 'some', nil)]=], (function() -- shunt/quicktype.yue:1621
        return T('some', nil) -- shunt/quicktype.yue:1621
      end), (errors(matches("incorrect type: expected some but got nil"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1621)) -- shunt/quicktype.yue:1621
    end) -- shunt/quicktype.yue:1612
    it('rejects never', function() -- shunt/quicktype.yue:1623
      return require('shunt.spec')._expect_that([=[(-> T '!', 123)]=], (function() -- shunt/quicktype.yue:1624
        return T('!', 123) -- shunt/quicktype.yue:1624
      end), (errors(matches('never expected a value here'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1624)) -- shunt/quicktype.yue:1624
    end) -- shunt/quicktype.yue:1623
    it('rejects nonexistent types', function() -- shunt/quicktype.yue:1626
      require('shunt.spec')._expect_that([=[(-> T 'IDoNotExist', 123)]=], (function() -- shunt/quicktype.yue:1627
        return T('IDoNotExist', 123) -- shunt/quicktype.yue:1627
      end), (errors(matches('cannot typecheck: type IDoNotExist not defined'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1627)) -- shunt/quicktype.yue:1627
      declare_type('ChildDoesNotExist', 'IDoNotExist'); -- shunt/quicktype.yue:1629
      return require('shunt.spec')._expect_that([=[(-> T 'ChildDoesNotExist', 123)]=], (function() -- shunt/quicktype.yue:1630
        return T('ChildDoesNotExist', 123) -- shunt/quicktype.yue:1630
      end), (errors(matches('cannot typecheck: type IDoNotExist not defined'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1630)) -- shunt/quicktype.yue:1630
    end) -- shunt/quicktype.yue:1626
    it('checks boolean types', function() -- shunt/quicktype.yue:1632
      require('shunt.spec')._expect_that([=[(-> T 'true', true)]=], (function() -- shunt/quicktype.yue:1633
        return T('true', true) -- shunt/quicktype.yue:1633
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1633)); -- shunt/quicktype.yue:1633
      require('shunt.spec')._expect_that([=[(-> T 'true', false)]=], (function() -- shunt/quicktype.yue:1634
        return T('true', false) -- shunt/quicktype.yue:1634
      end), (errors(matches('incorrect type: expected boolean true but got false'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1634)); -- shunt/quicktype.yue:1634
      require('shunt.spec')._expect_that([=[(-> T 'true', nil)]=], (function() -- shunt/quicktype.yue:1635
        return T('true', nil) -- shunt/quicktype.yue:1635
      end), (errors(matches('incorrect type: expected boolean but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1635)); -- shunt/quicktype.yue:1635
      require('shunt.spec')._expect_that([=[(-> T 'false', false)]=], (function() -- shunt/quicktype.yue:1637
        return T('false', false) -- shunt/quicktype.yue:1637
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1637)); -- shunt/quicktype.yue:1637
      require('shunt.spec')._expect_that([=[(-> T 'false', true)]=], (function() -- shunt/quicktype.yue:1638
        return T('false', true) -- shunt/quicktype.yue:1638
      end), (errors(matches('incorrect type: expected boolean false but got true'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1638)); -- shunt/quicktype.yue:1638
      return require('shunt.spec')._expect_that([=[(-> T 'false', nil)]=], (function() -- shunt/quicktype.yue:1639
        return T('false', nil) -- shunt/quicktype.yue:1639
      end), (errors(matches('incorrect type: expected boolean but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1639)) -- shunt/quicktype.yue:1639
    end) -- shunt/quicktype.yue:1632
    it('checks number types', function() -- shunt/quicktype.yue:1641
      require('shunt.spec')._expect_that([=[(-> T '123', 123)]=], (function() -- shunt/quicktype.yue:1642
        return T('123', 123) -- shunt/quicktype.yue:1642
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1642)); -- shunt/quicktype.yue:1642
      require('shunt.spec')._expect_that([=[(-> T '123', 0)]=], (function() -- shunt/quicktype.yue:1643
        return T('123', 0) -- shunt/quicktype.yue:1643
      end), (errors(matches("incorrect type: expected number 123"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1643)); -- shunt/quicktype.yue:1643
      return require('shunt.spec')._expect_that([=[(-> T '123', {})]=], (function() -- shunt/quicktype.yue:1644
        return T('123', { }) -- shunt/quicktype.yue:1644
      end), (errors(matches("incorrect type: expected number but got table"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1644)) -- shunt/quicktype.yue:1644
    end) -- shunt/quicktype.yue:1641
    it('checks string types', function() -- shunt/quicktype.yue:1646
      require('shunt.spec')._expect_that([=[(-> T '"hello"', 'hello')]=], (function() -- shunt/quicktype.yue:1647
        return T('"hello"', 'hello') -- shunt/quicktype.yue:1647
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1647)); -- shunt/quicktype.yue:1647
      return require('shunt.spec')._expect_that([=[(-> T '"hello"', 'world')]=], (function() -- shunt/quicktype.yue:1648
        return T('"hello"', 'world') -- shunt/quicktype.yue:1648
      end), (errors(matches("incorrect type: expected string 'hello'"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1648)) -- shunt/quicktype.yue:1648
    end) -- shunt/quicktype.yue:1646
    it('checks singleton types', function() -- shunt/quicktype.yue:1650
      local make_singleton -- shunt/quicktype.yue:1651
      make_singleton = function(name) -- shunt/quicktype.yue:1651
        return setmetatable({ }, { -- shunt/quicktype.yue:1651
          __tostring = function(self) -- shunt/quicktype.yue:1651
            return name -- shunt/quicktype.yue:1651
          end -- shunt/quicktype.yue:1651
        }) -- shunt/quicktype.yue:1651
      end -- shunt/quicktype.yue:1651
      local SINGLETON = make_singleton('Singleton') -- shunt/quicktype.yue:1652
      declare_singleton_type(SINGLETON); -- shunt/quicktype.yue:1653
      require('shunt.spec')._expect_that([=[(-> T 'Singleton', SINGLETON)]=], (function() -- shunt/quicktype.yue:1655
        return T('Singleton', SINGLETON) -- shunt/quicktype.yue:1655
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1655)); -- shunt/quicktype.yue:1655
      require('shunt.spec')._expect_that([=[(-> T 'Singleton', nil)]=], (function() -- shunt/quicktype.yue:1657
        return T('Singleton', nil) -- shunt/quicktype.yue:1657
      end), (errors(matches("incorrect type: expected table Singleton"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1657)); -- shunt/quicktype.yue:1657
      require('shunt.spec')._expect_that([=[(-> T 'Singleton', {})]=], (function() -- shunt/quicktype.yue:1658
        return T('Singleton', { }) -- shunt/quicktype.yue:1658
      end), (errors(matches("incorrect type: expected table Singleton"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1658)); -- shunt/quicktype.yue:1658
      return require('shunt.spec')._expect_that([=[(-> T 'Singleton', make_singleton 'Singleton')]=], (function() -- shunt/quicktype.yue:1659
        return T('Singleton', make_singleton('Singleton')) -- shunt/quicktype.yue:1659
      end), (errors(matches("incorrect type: expected table Singleton"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1659)) -- shunt/quicktype.yue:1659
    end) -- shunt/quicktype.yue:1650
    it('checks optionals', function() -- shunt/quicktype.yue:1661
      require('shunt.spec')._expect_that([=[(-> T '?number', nil)]=], (function() -- shunt/quicktype.yue:1662
        return T('?number', nil) -- shunt/quicktype.yue:1662
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1662)); -- shunt/quicktype.yue:1662
      require('shunt.spec')._expect_that([=[(-> T '?number', 123)]=], (function() -- shunt/quicktype.yue:1663
        return T('?number', 123) -- shunt/quicktype.yue:1663
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1663)); -- shunt/quicktype.yue:1663
      require('shunt.spec')._expect_that([=[(-> T '?number', 'str')]=], (function() -- shunt/quicktype.yue:1664
        return T('?number', 'str') -- shunt/quicktype.yue:1664
      end), (errors(matches('incorrect type: expected number but got string'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1664)); -- shunt/quicktype.yue:1664
      return require('shunt.spec')._expect_that([=[(-> T '?(number)', 'str')]=], (function() -- shunt/quicktype.yue:1665
        return T('?(number)', 'str') -- shunt/quicktype.yue:1665
      end), (errors(matches('incorrect type: expected table but got string'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1665)) -- shunt/quicktype.yue:1665
    end) -- shunt/quicktype.yue:1661
    it('checks arrays', function() -- shunt/quicktype.yue:1667
      require('shunt.spec')._expect_that([=[(-> T '[number]', {})]=], (function() -- shunt/quicktype.yue:1668
        return T('[number]', { }) -- shunt/quicktype.yue:1668
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1668)); -- shunt/quicktype.yue:1668
      require('shunt.spec')._expect_that([=[(-> T '[number]', {123, 312})]=], (function() -- shunt/quicktype.yue:1669
        return T('[number]', { -- shunt/quicktype.yue:1669
          123, -- shunt/quicktype.yue:1669
          312 -- shunt/quicktype.yue:1669
        }) -- shunt/quicktype.yue:1669
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1669)); -- shunt/quicktype.yue:1669
      require('shunt.spec')._expect_that([=[(-> T '[[number]]', {{123}, {312}})]=], (function() -- shunt/quicktype.yue:1670
        return T('[[number]]', { -- shunt/quicktype.yue:1670
          { -- shunt/quicktype.yue:1670
            123 -- shunt/quicktype.yue:1670
          }, -- shunt/quicktype.yue:1670
          { -- shunt/quicktype.yue:1670
            312 -- shunt/quicktype.yue:1670
          } -- shunt/quicktype.yue:1670
        }) -- shunt/quicktype.yue:1670
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1670)); -- shunt/quicktype.yue:1670
      require('shunt.spec')._expect_that([=[(-> T '[string]', 123)]=], (function() -- shunt/quicktype.yue:1672
        return T('[string]', 123) -- shunt/quicktype.yue:1672
      end), (errors(matches('incorrect type: expected table but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1672)); -- shunt/quicktype.yue:1672
      require('shunt.spec')._expect_that([=[(-> T '[[number]]', {{123}, {'asdf'}})]=], (function() -- shunt/quicktype.yue:1673
        return T('[[number]]', { -- shunt/quicktype.yue:1673
          { -- shunt/quicktype.yue:1673
            123 -- shunt/quicktype.yue:1673
          }, -- shunt/quicktype.yue:1673
          { -- shunt/quicktype.yue:1673
            'asdf' -- shunt/quicktype.yue:1673
          } -- shunt/quicktype.yue:1673
        }) -- shunt/quicktype.yue:1673
      end), (errors(matches('incorrect type: expected number but got string'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1673)) -- shunt/quicktype.yue:1673
      local hybrid = { -- shunt/quicktype.yue:1675
        123, -- shunt/quicktype.yue:1675
        456, -- shunt/quicktype.yue:1675
        789, -- shunt/quicktype.yue:1675
        field = 'a' -- shunt/quicktype.yue:1675
      } -- shunt/quicktype.yue:1675
      if #hybrid ~= 3 then -- shunt/quicktype.yue:1676
        return require('shunt.spec')._expect_that([=[(-> T '[string]', hybrid)]=], (function() -- shunt/quicktype.yue:1677
          return T('[string]', hybrid) -- shunt/quicktype.yue:1677
        end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1677)) -- shunt/quicktype.yue:1677
      else -- shunt/quicktype.yue:1679
        return require('shunt.spec')._expect_that([=[(-> T '[string]', hybrid)]=], (function() -- shunt/quicktype.yue:1679
          return T('[string]', hybrid) -- shunt/quicktype.yue:1679
        end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1679)) -- shunt/quicktype.yue:1679
      end -- shunt/quicktype.yue:1676
    end) -- shunt/quicktype.yue:1667
    it('checks tuples', function() -- shunt/quicktype.yue:1681
      require('shunt.spec')._expect_that([=[(-> T '()', {})]=], (function() -- shunt/quicktype.yue:1682
        return T('()', { }) -- shunt/quicktype.yue:1682
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1682)); -- shunt/quicktype.yue:1682
      require('shunt.spec')._expect_that([=[(-> T '(number, boolean, string)', {123, true, 'hello'})]=], (function() -- shunt/quicktype.yue:1683
        return T('(number, boolean, string)', { -- shunt/quicktype.yue:1683
          123, -- shunt/quicktype.yue:1683
          true, -- shunt/quicktype.yue:1683
          'hello' -- shunt/quicktype.yue:1683
        }) -- shunt/quicktype.yue:1683
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1683)); -- shunt/quicktype.yue:1683
      require('shunt.spec')._expect_that([=[(-> T '(number, boolean, string)', {123, true, 'hello', coroutine.create ->})]=], (function() -- shunt/quicktype.yue:1684
        return T('(number, boolean, string)', { -- shunt/quicktype.yue:1684
          123, -- shunt/quicktype.yue:1684
          true, -- shunt/quicktype.yue:1684
          'hello', -- shunt/quicktype.yue:1684
          coroutine.create(function() end) -- shunt/quicktype.yue:1684
        }) -- shunt/quicktype.yue:1684
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1684)); -- shunt/quicktype.yue:1684
      require('shunt.spec')._expect_that([=[(-> T '((number, boolean), (string, thread))', {{123, true}, {'hello', coroutine.create ->}})]=], (function() -- shunt/quicktype.yue:1685
        return T('((number, boolean), (string, thread))', { -- shunt/quicktype.yue:1685
          { -- shunt/quicktype.yue:1685
            123, -- shunt/quicktype.yue:1685
            true -- shunt/quicktype.yue:1685
          }, -- shunt/quicktype.yue:1685
          { -- shunt/quicktype.yue:1685
            'hello', -- shunt/quicktype.yue:1685
            coroutine.create(function() end) -- shunt/quicktype.yue:1685
          } -- shunt/quicktype.yue:1685
        }) -- shunt/quicktype.yue:1685
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1685)); -- shunt/quicktype.yue:1685
      require('shunt.spec')._expect_that([=[(-> T '(number, boolean, string)', nil)]=], (function() -- shunt/quicktype.yue:1687
        return T('(number, boolean, string)', nil) -- shunt/quicktype.yue:1687
      end), (errors(matches('incorrect type: expected table but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1687)); -- shunt/quicktype.yue:1687
      require('shunt.spec')._expect_that([=[(-> T '(number, boolean, string)', {})]=], (function() -- shunt/quicktype.yue:1688
        return T('(number, boolean, string)', { }) -- shunt/quicktype.yue:1688
      end), (errors(matches('incorrect type: expected number but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1688)); -- shunt/quicktype.yue:1688
      require('shunt.spec')._expect_that([=[(-> T '(number, boolean, string)', {123})]=], (function() -- shunt/quicktype.yue:1689
        return T('(number, boolean, string)', { -- shunt/quicktype.yue:1689
          123 -- shunt/quicktype.yue:1689
        }) -- shunt/quicktype.yue:1689
      end), (errors(matches('incorrect type: expected boolean but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1689)); -- shunt/quicktype.yue:1689
      return require('shunt.spec')._expect_that([=[(-> T '(number, boolean, string)', {'interloper'})]=], (function() -- shunt/quicktype.yue:1690
        return T('(number, boolean, string)', { -- shunt/quicktype.yue:1690
          'interloper' -- shunt/quicktype.yue:1690
        }) -- shunt/quicktype.yue:1690
      end), (errors(matches('incorrect type: expected number but got string'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1690)) -- shunt/quicktype.yue:1690
    end) -- shunt/quicktype.yue:1681
    it('checks sets', function() -- shunt/quicktype.yue:1692
      require('shunt.spec')._expect_that([=[(-> T '{number}', {})]=], (function() -- shunt/quicktype.yue:1693
        return T('{number}', { }) -- shunt/quicktype.yue:1693
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1693)); -- shunt/quicktype.yue:1693
      require('shunt.spec')._expect_that([=[(-> T '{number}', {[123]: true, [321]: {}})]=], (function() -- shunt/quicktype.yue:1694
        return T('{number}', { -- shunt/quicktype.yue:1694
          [123] = true, -- shunt/quicktype.yue:1694
          [321] = { } -- shunt/quicktype.yue:1694
        }) -- shunt/quicktype.yue:1694
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1694)); -- shunt/quicktype.yue:1694
      require('shunt.spec')._expect_that([=[(-> T '{{number}}', {[{123}]: true})]=], (function() -- shunt/quicktype.yue:1695
        return T('{{number}}', { -- shunt/quicktype.yue:1695
          [{ -- shunt/quicktype.yue:1695
            123 -- shunt/quicktype.yue:1695
          }] = true -- shunt/quicktype.yue:1695
        }) -- shunt/quicktype.yue:1695
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1695)); -- shunt/quicktype.yue:1695
      require('shunt.spec')._expect_that([=[(-> T '{<>: {}, number}', <>: {})]=], (function() -- shunt/quicktype.yue:1696
        return T('{<>: {}, number}', setmetatable({ }, { })) -- shunt/quicktype.yue:1696
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1696)); -- shunt/quicktype.yue:1696
      require('shunt.spec')._expect_that([=[(-> T '{number}', nil)]=], (function() -- shunt/quicktype.yue:1698
        return T('{number}', nil) -- shunt/quicktype.yue:1698
      end), (errors(matches('incorrect type: expected table but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1698)); -- shunt/quicktype.yue:1698
      require('shunt.spec')._expect_that([=[(-> T '{number}', {[123]: false})]=], (function() -- shunt/quicktype.yue:1699
        return T('{number}', { -- shunt/quicktype.yue:1699
          [123] = false -- shunt/quicktype.yue:1699
        }) -- shunt/quicktype.yue:1699
      end), (errors(matches('incorrect type: expected a truthy value but got false'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1699)); -- shunt/quicktype.yue:1699
      require('shunt.spec')._expect_that([=[(-> T '{{number}}', {[{['asdf']: true}]: true})]=], (function() -- shunt/quicktype.yue:1700
        return T('{{number}}', { -- shunt/quicktype.yue:1700
          [{ -- shunt/quicktype.yue:1700
            ['asdf'] = true -- shunt/quicktype.yue:1700
          }] = true -- shunt/quicktype.yue:1700
        }) -- shunt/quicktype.yue:1700
      end), (errors(matches('incorrect type: expected number but got string'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1700)); -- shunt/quicktype.yue:1700
      return require('shunt.spec')._expect_that([=[(-> T '{<>: {}, number}', {})]=], (function() -- shunt/quicktype.yue:1701
        return T('{<>: {}, number}', { }) -- shunt/quicktype.yue:1701
      end), (errors(matches('incorrect type: expected table but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1701)) -- shunt/quicktype.yue:1701
    end) -- shunt/quicktype.yue:1692
    it('checks mappings', function() -- shunt/quicktype.yue:1703
      require('shunt.spec')._expect_that([=[(-> T '{string -> number}', {})]=], (function() -- shunt/quicktype.yue:1704
        return T('{string -> number}', { }) -- shunt/quicktype.yue:1704
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1704)); -- shunt/quicktype.yue:1704
      require('shunt.spec')._expect_that([=[(-> T '{number -> string}', {'hello', [10]: 'world'})]=], (function() -- shunt/quicktype.yue:1705
        return T('{number -> string}', { -- shunt/quicktype.yue:1705
          'hello', -- shunt/quicktype.yue:1705
          [10] = 'world' -- shunt/quicktype.yue:1705
        }) -- shunt/quicktype.yue:1705
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1705)); -- shunt/quicktype.yue:1705
      require('shunt.spec')._expect_that([=[(-> T '{{boolean -> number} -> {string -> thread}}', {[{[true]: 123}]: {asdf: coroutine.create ->}})]=], (function() -- shunt/quicktype.yue:1706
        return T('{{boolean -> number} -> {string -> thread}}', { -- shunt/quicktype.yue:1706
          [{ -- shunt/quicktype.yue:1706
            [true] = 123 -- shunt/quicktype.yue:1706
          }] = { -- shunt/quicktype.yue:1706
            asdf = coroutine.create(function() end) -- shunt/quicktype.yue:1706
          } -- shunt/quicktype.yue:1706
        }) -- shunt/quicktype.yue:1706
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1706)); -- shunt/quicktype.yue:1706
      require('shunt.spec')._expect_that([=[(-> T '{<>: {}, string -> number}', <>: {})]=], (function() -- shunt/quicktype.yue:1707
        return T('{<>: {}, string -> number}', setmetatable({ }, { })) -- shunt/quicktype.yue:1707
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1707)); -- shunt/quicktype.yue:1707
      require('shunt.spec')._expect_that([=[(-> T '{number -> string}', nil)]=], (function() -- shunt/quicktype.yue:1709
        return T('{number -> string}', nil) -- shunt/quicktype.yue:1709
      end), (errors(matches('incorrect type: expected table but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1709)); -- shunt/quicktype.yue:1709
      require('shunt.spec')._expect_that([=[(-> T '{number -> string}', {123})]=], (function() -- shunt/quicktype.yue:1710
        return T('{number -> string}', { -- shunt/quicktype.yue:1710
          123 -- shunt/quicktype.yue:1710
        }) -- shunt/quicktype.yue:1710
      end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1710)); -- shunt/quicktype.yue:1710
      require('shunt.spec')._expect_that([=[(-> T '{number -> string}', {'hello', 'world', 'foo', 'bar', 'baz', 123})]=], (function() -- shunt/quicktype.yue:1711
        return T('{number -> string}', { -- shunt/quicktype.yue:1711
          'hello', -- shunt/quicktype.yue:1711
          'world', -- shunt/quicktype.yue:1711
          'foo', -- shunt/quicktype.yue:1711
          'bar', -- shunt/quicktype.yue:1711
          'baz', -- shunt/quicktype.yue:1711
          123 -- shunt/quicktype.yue:1711
        }) -- shunt/quicktype.yue:1711
      end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1711)); -- shunt/quicktype.yue:1711
      return require('shunt.spec')._expect_that([=[(-> T '{<>: {}, string -> number}', {})]=], (function() -- shunt/quicktype.yue:1712
        return T('{<>: {}, string -> number}', { }) -- shunt/quicktype.yue:1712
      end), (errors(matches('incorrect type: expected table but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1712)) -- shunt/quicktype.yue:1712
    end) -- shunt/quicktype.yue:1703
    it('checks structs', function() -- shunt/quicktype.yue:1714
      require('shunt.spec')._expect_that([=[(-> T '{}', {})]=], (function() -- shunt/quicktype.yue:1715
        return T('{}', { }) -- shunt/quicktype.yue:1715
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1715)); -- shunt/quicktype.yue:1715
      require('shunt.spec')._expect_that([=[(-> T '{}', {123})]=], (function() -- shunt/quicktype.yue:1716
        return T('{}', { -- shunt/quicktype.yue:1716
          123 -- shunt/quicktype.yue:1716
        }) -- shunt/quicktype.yue:1716
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1716)); -- shunt/quicktype.yue:1716
      require('shunt.spec')._expect_that([=[(-> T '{}', {hello: 123})]=], (function() -- shunt/quicktype.yue:1717
        return T('{}', { -- shunt/quicktype.yue:1717
          hello = 123 -- shunt/quicktype.yue:1717
        }) -- shunt/quicktype.yue:1717
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1717)); -- shunt/quicktype.yue:1717
      require('shunt.spec')._expect_that([=[(-> T '{hello: string}', {hello: 'hello'})]=], (function() -- shunt/quicktype.yue:1718
        return T('{hello: string}', { -- shunt/quicktype.yue:1718
          hello = 'hello' -- shunt/quicktype.yue:1718
        }) -- shunt/quicktype.yue:1718
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1718)); -- shunt/quicktype.yue:1718
      require('shunt.spec')._expect_that([=[(-> T '{hello: {world: string}}', {hello: world: 'world'})]=], (function() -- shunt/quicktype.yue:1719
        return T('{hello: {world: string}}', { -- shunt/quicktype.yue:1719
          hello = { -- shunt/quicktype.yue:1719
            world = 'world' -- shunt/quicktype.yue:1719
          } -- shunt/quicktype.yue:1719
        }) -- shunt/quicktype.yue:1719
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1719)); -- shunt/quicktype.yue:1719
      require('shunt.spec')._expect_that([=[(-> T '{hello: {world: string}, foo: boolean}', hello: {world:'asdf'}, foo: true)]=], (function() -- shunt/quicktype.yue:1720
        return T('{hello: {world: string}, foo: boolean}', { -- shunt/quicktype.yue:1720
          hello = { -- shunt/quicktype.yue:1720
            world = 'asdf' -- shunt/quicktype.yue:1720
          }, -- shunt/quicktype.yue:1720
          foo = true -- shunt/quicktype.yue:1720
        }) -- shunt/quicktype.yue:1720
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1720)); -- shunt/quicktype.yue:1720
      require('shunt.spec')._expect_that([=[(-> T '{<>: {}}', <>: {})]=], (function() -- shunt/quicktype.yue:1721
        return T('{<>: {}}', setmetatable({ }, { })) -- shunt/quicktype.yue:1721
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1721)); -- shunt/quicktype.yue:1721
      require('shunt.spec')._expect_that([=[(-> T '{}', 132)]=], (function() -- shunt/quicktype.yue:1723
        return T('{}', 132) -- shunt/quicktype.yue:1723
      end), (errors(matches('incorrect type: expected table but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1723)); -- shunt/quicktype.yue:1723
      require('shunt.spec')._expect_that([=[(-> T '{hello: string}', {})]=], (function() -- shunt/quicktype.yue:1724
        return T('{hello: string}', { }) -- shunt/quicktype.yue:1724
      end), (errors(matches('incorrect type: expected string but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1724)); -- shunt/quicktype.yue:1724
      require('shunt.spec')._expect_that([=[(-> T '{hello: string}', hello: 123)]=], (function() -- shunt/quicktype.yue:1725
        return T('{hello: string}', { -- shunt/quicktype.yue:1725
          hello = 123 -- shunt/quicktype.yue:1725
        }) -- shunt/quicktype.yue:1725
      end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1725)); -- shunt/quicktype.yue:1725
      require('shunt.spec')._expect_that([=[(-> T '{hello: {world: string}}', hello: 123)]=], (function() -- shunt/quicktype.yue:1726
        return T('{hello: {world: string}}', { -- shunt/quicktype.yue:1726
          hello = 123 -- shunt/quicktype.yue:1726
        }) -- shunt/quicktype.yue:1726
      end), (errors(matches('incorrect type: expected table but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1726)); -- shunt/quicktype.yue:1726
      require('shunt.spec')._expect_that([=[(-> T '{hello: {world: string}}', hello: {})]=], (function() -- shunt/quicktype.yue:1727
        return T('{hello: {world: string}}', { -- shunt/quicktype.yue:1727
          hello = { } -- shunt/quicktype.yue:1727
        }) -- shunt/quicktype.yue:1727
      end), (errors(matches('incorrect type: expected string but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1727)); -- shunt/quicktype.yue:1727
      require('shunt.spec')._expect_that([=[(-> T '{hello: {world: string}}', hello: world: 123)]=], (function() -- shunt/quicktype.yue:1728
        return T('{hello: {world: string}}', { -- shunt/quicktype.yue:1728
          hello = { -- shunt/quicktype.yue:1728
            world = 123 -- shunt/quicktype.yue:1728
          } -- shunt/quicktype.yue:1728
        }) -- shunt/quicktype.yue:1728
      end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1728)); -- shunt/quicktype.yue:1728
      require('shunt.spec')._expect_that([=[(-> T '{hello: {world: string}, foo: boolean}', hello: {world:'asdf'}, foo: 123)]=], (function() -- shunt/quicktype.yue:1729
        return T('{hello: {world: string}, foo: boolean}', { -- shunt/quicktype.yue:1729
          hello = { -- shunt/quicktype.yue:1729
            world = 'asdf' -- shunt/quicktype.yue:1729
          }, -- shunt/quicktype.yue:1729
          foo = 123 -- shunt/quicktype.yue:1729
        }) -- shunt/quicktype.yue:1729
      end), (errors(matches('incorrect type: expected boolean but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1729)); -- shunt/quicktype.yue:1729
      return require('shunt.spec')._expect_that([=[(-> T '{<>: {}}', {})]=], (function() -- shunt/quicktype.yue:1730
        return T('{<>: {}}', { }) -- shunt/quicktype.yue:1730
      end), (errors(matches('incorrect type: expected table but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1730)) -- shunt/quicktype.yue:1730
    end) -- shunt/quicktype.yue:1714
    it('checks functions', function() -- shunt/quicktype.yue:1732
      require('shunt.spec')._expect_that([=[(-> T '() -> nil', ->)]=], (function() -- shunt/quicktype.yue:1733
        return T('() -> nil', function() end) -- shunt/quicktype.yue:1733
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1733)); -- shunt/quicktype.yue:1733
      require('shunt.spec')._expect_that([=[(-> T '() -> nil', -> nil)]=], (function() -- shunt/quicktype.yue:1734
        return T('() -> nil', function() -- shunt/quicktype.yue:1734
          return nil -- shunt/quicktype.yue:1734
        end) -- shunt/quicktype.yue:1734
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1734)); -- shunt/quicktype.yue:1734
      return require('shunt.spec')._expect_that([=[(-> T '() -> nil', {})]=], (function() -- shunt/quicktype.yue:1735
        return T('() -> nil', { }) -- shunt/quicktype.yue:1735
      end), (errors(matches('incorrect type: expected function but got table'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1735)) -- shunt/quicktype.yue:1735
    end) -- shunt/quicktype.yue:1732
    it('checks conjunctions', function() -- shunt/quicktype.yue:1737
      require('shunt.spec')._expect_that([=[(-> T '[string]+{number}', {'a', 'b', 'c'})]=], (function() -- shunt/quicktype.yue:1738
        return T('[string]+{number}', { -- shunt/quicktype.yue:1738
          'a', -- shunt/quicktype.yue:1738
          'b', -- shunt/quicktype.yue:1738
          'c' -- shunt/quicktype.yue:1738
        }) -- shunt/quicktype.yue:1738
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1738)); -- shunt/quicktype.yue:1738
      require('shunt.spec')._expect_that([=[(-> T 'string+number', 123)]=], (function() -- shunt/quicktype.yue:1740
        return T('string+number', 123) -- shunt/quicktype.yue:1740
      end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1740)); -- shunt/quicktype.yue:1740
      return require('shunt.spec')._expect_that([=[(-> T 'string+number', 'hello')]=], (function() -- shunt/quicktype.yue:1741
        return T('string+number', 'hello') -- shunt/quicktype.yue:1741
      end), (errors(matches('incorrect type: expected number but got string'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1741)) -- shunt/quicktype.yue:1741
    end) -- shunt/quicktype.yue:1737
    it('checks disjunctions', function() -- shunt/quicktype.yue:1743
      require('shunt.spec')._expect_that([=[(-> T 'string|number', 'hello')]=], (function() -- shunt/quicktype.yue:1744
        return T('string|number', 'hello') -- shunt/quicktype.yue:1744
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1744)); -- shunt/quicktype.yue:1744
      require('shunt.spec')._expect_that([=[(-> T 'string|number', 123)]=], (function() -- shunt/quicktype.yue:1745
        return T('string|number', 123) -- shunt/quicktype.yue:1745
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1745)); -- shunt/quicktype.yue:1745
      return require('shunt.spec')._expect_that([=[(-> T 'string|number', true)]=], (function() -- shunt/quicktype.yue:1746
        return T('string|number', true) -- shunt/quicktype.yue:1746
      end), (errors(matches('incorrect type: expected string|number but got boolean'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1746)) -- shunt/quicktype.yue:1746
    end) -- shunt/quicktype.yue:1743
    it('checks nested inline disjunctions', function() -- shunt/quicktype.yue:1748
      require('shunt.spec')._expect_that([=[(-> T 'number|{string|number}|string', 'hello')]=], (function() -- shunt/quicktype.yue:1749
        return T('number|{string|number}|string', 'hello') -- shunt/quicktype.yue:1749
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1749)); -- shunt/quicktype.yue:1749
      require('shunt.spec')._expect_that([=[(-> T 'number|{string|number}|string', {hello: true})]=], (function() -- shunt/quicktype.yue:1750
        return T('number|{string|number}|string', { -- shunt/quicktype.yue:1750
          hello = true -- shunt/quicktype.yue:1750
        }) -- shunt/quicktype.yue:1750
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1750)); -- shunt/quicktype.yue:1750
      require('shunt.spec')._expect_that([=[(-> T 'number|{string|number}|string', {[1]: true})]=], (function() -- shunt/quicktype.yue:1751
        return T('number|{string|number}|string', { -- shunt/quicktype.yue:1751
          [1] = true -- shunt/quicktype.yue:1751
        }) -- shunt/quicktype.yue:1751
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1751)); -- shunt/quicktype.yue:1751
      return require('shunt.spec')._expect_that([=[(-> T 'number|{string|number}|string', ->)]=], (function() -- shunt/quicktype.yue:1752
        return T('number|{string|number}|string', function() end) -- shunt/quicktype.yue:1752
      end), (errors(matches('incorrect type: expected number|{string|number}|string but got function'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1752)) -- shunt/quicktype.yue:1752
    end) -- shunt/quicktype.yue:1748
    return it('checks nested recursive disjunctions', function() -- shunt/quicktype.yue:1754
      declare_type('InnerDisjunction', 'string|number'); -- shunt/quicktype.yue:1755
      require('shunt.spec')._expect_that([=[(-> T 'boolean|InnerDisjunction|function', true)]=], (function() -- shunt/quicktype.yue:1756
        return T('boolean|InnerDisjunction|function', true) -- shunt/quicktype.yue:1756
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1756)); -- shunt/quicktype.yue:1756
      require('shunt.spec')._expect_that([=[(-> T 'boolean|InnerDisjunction|function', 'hello')]=], (function() -- shunt/quicktype.yue:1757
        return T('boolean|InnerDisjunction|function', 'hello') -- shunt/quicktype.yue:1757
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1757)); -- shunt/quicktype.yue:1757
      require('shunt.spec')._expect_that([=[(-> T 'boolean|InnerDisjunction|function', 123)]=], (function() -- shunt/quicktype.yue:1758
        return T('boolean|InnerDisjunction|function', 123) -- shunt/quicktype.yue:1758
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1758)); -- shunt/quicktype.yue:1758
      require('shunt.spec')._expect_that([=[(-> T 'boolean|InnerDisjunction|function', ->)]=], (function() -- shunt/quicktype.yue:1759
        return T('boolean|InnerDisjunction|function', function() end) -- shunt/quicktype.yue:1759
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1759)); -- shunt/quicktype.yue:1759
      return require('shunt.spec')._expect_that([=[(-> T 'boolean|InnerDisjunction|function', {})]=], (function() -- shunt/quicktype.yue:1761
        return T('boolean|InnerDisjunction|function', { }) -- shunt/quicktype.yue:1761
      end), (errors(matches('incorrect type: expected boolean|InnerDisjunction|function but got table'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1761)) -- shunt/quicktype.yue:1761
    end) -- shunt/quicktype.yue:1761
  end) -- shunt/quicktype.yue:1584
  describe('is', function() -- shunt/quicktype.yue:1763
    it('requires two arguments', function() -- shunt/quicktype.yue:1764
      return require('shunt.spec')._expect_that([=[(-> is!)]=], (function() -- shunt/quicktype.yue:1765
        return is() -- shunt/quicktype.yue:1765
      end), (errors(matches('cannot typecheck: no type spec provided'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1765)) -- shunt/quicktype.yue:1765
    end) -- shunt/quicktype.yue:1764
    it('returns correctly in matching case', function() -- shunt/quicktype.yue:1767
      local ok, err = is('string', 'asdf'); -- shunt/quicktype.yue:1768
      require('shunt.spec')._expect_that([=[ok]=], ok, (eq(true)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1769)); -- shunt/quicktype.yue:1769
      return require('shunt.spec')._expect_that([=[err]=], err, (eq(nil)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1770)) -- shunt/quicktype.yue:1770
    end) -- shunt/quicktype.yue:1767
    return it('returns correctly in non-matching case', function() -- shunt/quicktype.yue:1772
      local ok, err = is('nil', 'asdf'); -- shunt/quicktype.yue:1773
      require('shunt.spec')._expect_that([=[ok]=], ok, (eq(false)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1774)); -- shunt/quicktype.yue:1774
      return require('shunt.spec')._expect_that([=[err]=], err, (matches('incorrect type')), tostring("shunt/quicktype.yue") .. ":" .. tostring(1775)) -- shunt/quicktype.yue:1775
    end) -- shunt/quicktype.yue:1775
  end) -- shunt/quicktype.yue:1763
  describe('declare_type', function() -- shunt/quicktype.yue:1777
    it('requires two arguments', function() -- shunt/quicktype.yue:1778
      require('shunt.spec')._expect_that([=[(-> declare_type!)]=], (function() -- shunt/quicktype.yue:1779
        return declare_type() -- shunt/quicktype.yue:1779
      end), (errors(matches('declare_type requires a name'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1779)); -- shunt/quicktype.yue:1779
      require('shunt.spec')._expect_that([=[(-> declare_type 'TwoArgs')]=], (function() -- shunt/quicktype.yue:1780
        return declare_type('TwoArgs') -- shunt/quicktype.yue:1780
      end), (errors(matches('declare_type requires a type_spec'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1780)); -- shunt/quicktype.yue:1780
      require('shunt.spec')._expect_that([=[(-> declare_type 123, 'string')]=], (function() -- shunt/quicktype.yue:1781
        return declare_type(123, 'string') -- shunt/quicktype.yue:1781
      end), (errors(matches('declare_type requires a string name'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1781)); -- shunt/quicktype.yue:1781
      return require('shunt.spec')._expect_that([=[(-> declare_type 'TwoArgs', 123)]=], (function() -- shunt/quicktype.yue:1782
        return declare_type('TwoArgs', 123) -- shunt/quicktype.yue:1782
      end), (errors(matches('declare_type requires a string type_spec'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1782)) -- shunt/quicktype.yue:1782
    end) -- shunt/quicktype.yue:1778
    it('rejects false primitives', function() -- shunt/quicktype.yue:1784
      return require('shunt.spec')._expect_that([=[(-> declare_type 'user', 'string')]=], (function() -- shunt/quicktype.yue:1785
        return declare_type('user', 'string') -- shunt/quicktype.yue:1785
      end), (errors(matches('user types must start with uppercase'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1785)) -- shunt/quicktype.yue:1785
    end) -- shunt/quicktype.yue:1784
    it('rejects redefinition', function() -- shunt/quicktype.yue:1787
      declare_type('AlreadyDefined', 'number'); -- shunt/quicktype.yue:1788
      return require('shunt.spec')._expect_that([=[(-> declare_type 'AlreadyDefined', 'string')]=], (function() -- shunt/quicktype.yue:1789
        return declare_type('AlreadyDefined', 'string') -- shunt/quicktype.yue:1789
      end), (errors(matches([[cannot redefine type 'AlreadyDefined']]))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1789)) -- shunt/quicktype.yue:1789
    end) -- shunt/quicktype.yue:1787
    it('supports non-recursive types', function() -- shunt/quicktype.yue:1791
      declare_type('NonRecursive', '[string]'); -- shunt/quicktype.yue:1792
      require('shunt.spec')._expect_that([=[(-> T '[NonRecursive]', {{'hello'}})]=], (function() -- shunt/quicktype.yue:1793
        return T('[NonRecursive]', { -- shunt/quicktype.yue:1793
          { -- shunt/quicktype.yue:1793
            'hello' -- shunt/quicktype.yue:1793
          } -- shunt/quicktype.yue:1793
        }) -- shunt/quicktype.yue:1793
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1793)) -- shunt/quicktype.yue:1793
      declare_type('prefixed.NonRecursive', '[string]'); -- shunt/quicktype.yue:1795
      return require('shunt.spec')._expect_that([=[(-> T '[prefixed.NonRecursive]', {{'hello'}})]=], (function() -- shunt/quicktype.yue:1796
        return T('[prefixed.NonRecursive]', { -- shunt/quicktype.yue:1796
          { -- shunt/quicktype.yue:1796
            'hello' -- shunt/quicktype.yue:1796
          } -- shunt/quicktype.yue:1796
        }) -- shunt/quicktype.yue:1796
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1796)) -- shunt/quicktype.yue:1796
    end) -- shunt/quicktype.yue:1791
    return it('supports recursive types', function() -- shunt/quicktype.yue:1798
      declare_type('Recursive', '[?Recursive]'); -- shunt/quicktype.yue:1799
      require('shunt.spec')._expect_that([=[(-> T 'Recursive', {{{{{nil}}}}})]=], (function() -- shunt/quicktype.yue:1800
        return T('Recursive', { -- shunt/quicktype.yue:1800
          { -- shunt/quicktype.yue:1800
            { -- shunt/quicktype.yue:1800
              { -- shunt/quicktype.yue:1800
                { -- shunt/quicktype.yue:1800
                  nil -- shunt/quicktype.yue:1800
                } -- shunt/quicktype.yue:1800
              } -- shunt/quicktype.yue:1800
            } -- shunt/quicktype.yue:1800
          } -- shunt/quicktype.yue:1800
        }) -- shunt/quicktype.yue:1800
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1800)); -- shunt/quicktype.yue:1800
      require('shunt.spec')._expect_that([=[(-> T 'Recursive', {{{{{'asdf'}}}}})]=], (function() -- shunt/quicktype.yue:1801
        return T('Recursive', { -- shunt/quicktype.yue:1801
          { -- shunt/quicktype.yue:1801
            { -- shunt/quicktype.yue:1801
              { -- shunt/quicktype.yue:1801
                { -- shunt/quicktype.yue:1801
                  'asdf' -- shunt/quicktype.yue:1801
                } -- shunt/quicktype.yue:1801
              } -- shunt/quicktype.yue:1801
            } -- shunt/quicktype.yue:1801
          } -- shunt/quicktype.yue:1801
        }) -- shunt/quicktype.yue:1801
      end), (errors(matches('incorrect type: expected table but got string'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1801)) -- shunt/quicktype.yue:1801
      declare_type('MutuallyRecursive1', '?MutuallyRecursive2') -- shunt/quicktype.yue:1803
      declare_type('MutuallyRecursive2', 'MutuallyRecursive1'); -- shunt/quicktype.yue:1804
      require('shunt.spec')._expect_that([=[(-> T 'MutuallyRecursive1', nil)]=], (function() -- shunt/quicktype.yue:1805
        return T('MutuallyRecursive1', nil) -- shunt/quicktype.yue:1805
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1805)); -- shunt/quicktype.yue:1805
      return require('shunt.spec')._expect_that([=[(-> T 'MutuallyRecursive1', 'asdf')]=], (function() -- shunt/quicktype.yue:1806
        return T('MutuallyRecursive1', 'asdf') -- shunt/quicktype.yue:1806
      end), (errors(matches('type checker recursed too many times'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1806)) -- shunt/quicktype.yue:1806
    end) -- shunt/quicktype.yue:1806
  end) -- shunt/quicktype.yue:1777
  describe('declare_singleton_type', function() -- shunt/quicktype.yue:1808
    it('requires a valid name', function() -- shunt/quicktype.yue:1809
      require('shunt.spec')._expect_that([=[declare_singleton_type]=], declare_singleton_type, (errors(matches('requires a value'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1810)); -- shunt/quicktype.yue:1810
      require('shunt.spec')._expect_that([=[(-> declare_singleton_type {})]=], (function() -- shunt/quicktype.yue:1812
        return declare_singleton_type({ }) -- shunt/quicktype.yue:1812
      end), (errors(matches("user types must start with an uppercase letter"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1812)); -- shunt/quicktype.yue:1812
      require('shunt.spec')._expect_that([==[(-> declare_singleton_type <tostring>: => 'Has space')]==], (function() -- shunt/quicktype.yue:1813
        return declare_singleton_type(setmetatable({ }, { -- shunt/quicktype.yue:1813
          __tostring = function(self) -- shunt/quicktype.yue:1813
            return 'Has space' -- shunt/quicktype.yue:1813
          end -- shunt/quicktype.yue:1813
        })) -- shunt/quicktype.yue:1813
      end), (errors(matches("cannot declare type 'Has space': not a valid identifier"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1813)); -- shunt/quicktype.yue:1813
      return require('shunt.spec')._expect_that([==[(-> declare_singleton_type <tostring>: => 'SingletonTable')]==], (function() -- shunt/quicktype.yue:1814
        return declare_singleton_type(setmetatable({ }, { -- shunt/quicktype.yue:1814
          __tostring = function(self) -- shunt/quicktype.yue:1814
            return 'SingletonTable' -- shunt/quicktype.yue:1814
          end -- shunt/quicktype.yue:1814
        })) -- shunt/quicktype.yue:1814
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1814)) -- shunt/quicktype.yue:1814
    end) -- shunt/quicktype.yue:1809
    it('requires a unique name', function() -- shunt/quicktype.yue:1816
      local NAME = 'UniqueSingleton' -- shunt/quicktype.yue:1817
      declare_singleton_type(setmetatable({ }, { -- shunt/quicktype.yue:1818
        __tostring = function(self) -- shunt/quicktype.yue:1818
          return NAME -- shunt/quicktype.yue:1818
        end -- shunt/quicktype.yue:1818
      })); -- shunt/quicktype.yue:1818
      return require('shunt.spec')._expect_that([==[(-> declare_singleton_type <tostring>: => NAME)]==], (function() -- shunt/quicktype.yue:1819
        return declare_singleton_type(setmetatable({ }, { -- shunt/quicktype.yue:1819
          __tostring = function(self) -- shunt/quicktype.yue:1819
            return NAME -- shunt/quicktype.yue:1819
          end -- shunt/quicktype.yue:1819
        })) -- shunt/quicktype.yue:1819
      end), (errors(matches("cannot redefine type '" .. tostring(NAME) .. "'"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1819)) -- shunt/quicktype.yue:1819
    end) -- shunt/quicktype.yue:1816
    return it('rejects primitives', function() -- shunt/quicktype.yue:1821
      require('shunt.spec')._expect_that([=[(-> declare_singleton_type 123)]=], (function() -- shunt/quicktype.yue:1822
        return declare_singleton_type(123) -- shunt/quicktype.yue:1822
      end), (errors(matches('declare_singleton_type requires a table value'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1822)); -- shunt/quicktype.yue:1822
      return require('shunt.spec')._expect_that([=[(-> declare_singleton_type 'hello')]=], (function() -- shunt/quicktype.yue:1823
        return declare_singleton_type('hello') -- shunt/quicktype.yue:1823
      end), (errors(matches('declare_singleton_type requires a table value'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1823)) -- shunt/quicktype.yue:1823
    end) -- shunt/quicktype.yue:1823
  end) -- shunt/quicktype.yue:1808
  describe('F', function() -- shunt/quicktype.yue:1825
    it('requires two arguments', function() -- shunt/quicktype.yue:1826
      require('shunt.spec')._expect_that([=[(-> F!)]=], (function() -- shunt/quicktype.yue:1827
        return F() -- shunt/quicktype.yue:1827
      end), (errors(matches('cannot typecheck: no type spec provided'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1827)); -- shunt/quicktype.yue:1827
      require('shunt.spec')._expect_that([=[(-> F '() -> nil')]=], (function() -- shunt/quicktype.yue:1828
        return F('() -> nil') -- shunt/quicktype.yue:1828
      end), (errors(matches('cannot typecheck: no function provided'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1828)); -- shunt/quicktype.yue:1828
      return require('shunt.spec')._expect_that([=[(-> F '() -> nil', 'interloper')]=], (function() -- shunt/quicktype.yue:1829
        return F('() -> nil', 'interloper') -- shunt/quicktype.yue:1829
      end), (errors(matches('cannot typecheck: no function provided'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1829)) -- shunt/quicktype.yue:1829
    end) -- shunt/quicktype.yue:1826
    it('returns its second argument', function() -- shunt/quicktype.yue:1831
      local f = F('(number, number) -> number', function(a, b) -- shunt/quicktype.yue:1832
        return a + b -- shunt/quicktype.yue:1832
      end); -- shunt/quicktype.yue:1832
      return require('shunt.spec')._expect_that([=[(f 1, 2)]=], (f(1, 2)), (eq(3)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1833)) -- shunt/quicktype.yue:1833
    end) -- shunt/quicktype.yue:1831
    it('accepts none returns', function() -- shunt/quicktype.yue:1835
      return require('shunt.spec')._expect_that([=[(-> (F '() -> <>', ->)!)]=], (function() -- shunt/quicktype.yue:1836
        return (F('() -> <>', function() end))() -- shunt/quicktype.yue:1836
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1836)) -- shunt/quicktype.yue:1836
    end) -- shunt/quicktype.yue:1835
    it('accepts nil returns', function() -- shunt/quicktype.yue:1838
      return require('shunt.spec')._expect_that([=[(-> (F '() -> nil', -> nil)!)]=], (function() -- shunt/quicktype.yue:1839
        return (F('() -> nil', function() -- shunt/quicktype.yue:1839
          return nil -- shunt/quicktype.yue:1839
        end))() -- shunt/quicktype.yue:1839
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1839)) -- shunt/quicktype.yue:1839
    end) -- shunt/quicktype.yue:1838
    it('accepts absent optional arguments', function() -- shunt/quicktype.yue:1841
      return require('shunt.spec')._expect_that([=[(-> (F '() -> ?string', ->)!)]=], (function() -- shunt/quicktype.yue:1842
        return (F('() -> ?string', function() end))() -- shunt/quicktype.yue:1842
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1842)) -- shunt/quicktype.yue:1842
    end) -- shunt/quicktype.yue:1841
    it('accepts remainder arguments', function() -- shunt/quicktype.yue:1844
      require('shunt.spec')._expect_that([=[(-> (F '(string...) -> nil', ->)!)]=], (function() -- shunt/quicktype.yue:1845
        return (F('(string...) -> nil', function() end))() -- shunt/quicktype.yue:1845
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1845)); -- shunt/quicktype.yue:1845
      require('shunt.spec')._expect_that([=[(-> (F '(string...) -> nil', ->) 'hello', 'world')]=], (function() -- shunt/quicktype.yue:1846
        return (F('(string...) -> nil', function() end))('hello', 'world') -- shunt/quicktype.yue:1846
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1846)); -- shunt/quicktype.yue:1846
      require('shunt.spec')._expect_that([=[(-> (F '(number, string...) -> nil', ->) 123, 'hello', 'world')]=], (function() -- shunt/quicktype.yue:1847
        return (F('(number, string...) -> nil', function() end))(123, 'hello', 'world') -- shunt/quicktype.yue:1847
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1847)); -- shunt/quicktype.yue:1847
      return require('shunt.spec')._expect_that([=[(-> (F '(number, string...) -> nil', (...) ->) 123, 'hello', true)]=], (function() -- shunt/quicktype.yue:1849
        return (F('(number, string...) -> nil', function(...) end))(123, 'hello', true) -- shunt/quicktype.yue:1849
      end), (errors(matches('incorrect type: expected string but got boolean'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1849)) -- shunt/quicktype.yue:1849
    end) -- shunt/quicktype.yue:1844
    it('accepts absent optional returns', function() -- shunt/quicktype.yue:1851
      return require('shunt.spec')._expect_that([=[(-> (F '() -> nil', ->)!)]=], (function() -- shunt/quicktype.yue:1852
        return (F('() -> nil', function() end))() -- shunt/quicktype.yue:1852
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1852)) -- shunt/quicktype.yue:1852
    end) -- shunt/quicktype.yue:1851
    it('accepts multiple return values', function() -- shunt/quicktype.yue:1854
      return require('shunt.spec')._expect_that([=[(-> (F '() -> <string, boolean>', -> 'a', true)!)]=], (function() -- shunt/quicktype.yue:1855
        return (F('() -> <string, boolean>', function() -- shunt/quicktype.yue:1855
          return 'a', true -- shunt/quicktype.yue:1855
        end))() -- shunt/quicktype.yue:1855
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1855)) -- shunt/quicktype.yue:1855
    end) -- shunt/quicktype.yue:1854
    it('accepts remainder return values', function() -- shunt/quicktype.yue:1857
      require('shunt.spec')._expect_that([=[(-> (F '() -> string...', ->)!)]=], (function() -- shunt/quicktype.yue:1858
        return (F('() -> string...', function() end))() -- shunt/quicktype.yue:1858
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1858)); -- shunt/quicktype.yue:1858
      require('shunt.spec')._expect_that([=[(-> (F '() -> string...', -> 'hello', 'world')!)]=], (function() -- shunt/quicktype.yue:1859
        return (F('() -> string...', function() -- shunt/quicktype.yue:1859
          return 'hello', 'world' -- shunt/quicktype.yue:1859
        end))() -- shunt/quicktype.yue:1859
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1859)); -- shunt/quicktype.yue:1859
      require('shunt.spec')._expect_that([=[(-> (F '() -> <number, string...>', -> 123, 'hello', 'world')!)]=], (function() -- shunt/quicktype.yue:1860
        return (F('() -> <number, string...>', function() -- shunt/quicktype.yue:1860
          return 123, 'hello', 'world' -- shunt/quicktype.yue:1860
        end))() -- shunt/quicktype.yue:1860
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1860)); -- shunt/quicktype.yue:1860
      return require('shunt.spec')._expect_that([=[(-> (F '() -> <number, string...>', -> 123, 'hello', true)!)]=], (function() -- shunt/quicktype.yue:1862
        return (F('() -> <number, string...>', function() -- shunt/quicktype.yue:1862
          return 123, 'hello', true -- shunt/quicktype.yue:1862
        end))() -- shunt/quicktype.yue:1862
      end), (errors(matches('incorrect type: expected string but got boolean'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1862)) -- shunt/quicktype.yue:1862
    end) -- shunt/quicktype.yue:1857
    it('prevents execution on invalid args', function() -- shunt/quicktype.yue:1864
      return require('shunt.spec')._expect_that([=[(-> (F '(string) -> nil', -> error 'OH NO') 123)]=], (function() -- shunt/quicktype.yue:1865
        return (F('(string) -> nil', function() -- shunt/quicktype.yue:1865
          return error('OH NO') -- shunt/quicktype.yue:1865
        end))(123) -- shunt/quicktype.yue:1865
      end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1865)) -- shunt/quicktype.yue:1865
    end) -- shunt/quicktype.yue:1864
    it('rejects non-function types', function() -- shunt/quicktype.yue:1867
      return require('shunt.spec')._expect_that([=[(-> F '{}', ->)]=], (function() -- shunt/quicktype.yue:1868
        return F('{}', function() end) -- shunt/quicktype.yue:1868
      end), (errors(matches('cannot typecheck: expected a function type'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1868)) -- shunt/quicktype.yue:1868
    end) -- shunt/quicktype.yue:1867
    it('rejects incorrect-type arguments', function() -- shunt/quicktype.yue:1870
      return require('shunt.spec')._expect_that([=[(-> (F '(string) -> table', ->) 123)]=], (function() -- shunt/quicktype.yue:1871
        return (F('(string) -> table', function() end))(123) -- shunt/quicktype.yue:1871
      end), (errors(matches('incorrect type: expected string but got number'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1871)) -- shunt/quicktype.yue:1871
    end) -- shunt/quicktype.yue:1870
    it('rejects extra arguments', function() -- shunt/quicktype.yue:1873
      return require('shunt.spec')._expect_that([=[(-> (F '(string) -> table', ->) 'a', 'b')]=], (function() -- shunt/quicktype.yue:1874
        return (F('(string) -> table', function() end))('a', 'b') -- shunt/quicktype.yue:1874
      end), (errors(matches('function given too many arguments'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1874)) -- shunt/quicktype.yue:1874
    end) -- shunt/quicktype.yue:1873
    it('rejects incorrect-type return values', function() -- shunt/quicktype.yue:1876
      return require('shunt.spec')._expect_that([=[(-> (F '(table) -> string', ->) {})]=], (function() -- shunt/quicktype.yue:1877
        return (F('(table) -> string', function() end))({ }) -- shunt/quicktype.yue:1877
      end), (errors(matches('incorrect type: expected string but got nil'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1877)) -- shunt/quicktype.yue:1877
    end) -- shunt/quicktype.yue:1876
    it('rejects extra return arguments', function() -- shunt/quicktype.yue:1879
      return require('shunt.spec')._expect_that([=[(-> (F '() -> string', -> 'a', 'b')!)]=], (function() -- shunt/quicktype.yue:1880
        return (F('() -> string', function() -- shunt/quicktype.yue:1880
          return 'a', 'b' -- shunt/quicktype.yue:1880
        end))() -- shunt/quicktype.yue:1880
      end), (errors(matches('function returned too many values'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1880)) -- shunt/quicktype.yue:1880
    end) -- shunt/quicktype.yue:1879
    it('rejects multiple incorrect return values', function() -- shunt/quicktype.yue:1882
      require('shunt.spec')._expect_that([=[(-> (F '() -> <string, boolean>', -> {}, true)!)]=], (function() -- shunt/quicktype.yue:1883
        return (F('() -> <string, boolean>', function() -- shunt/quicktype.yue:1883
          return { }, true -- shunt/quicktype.yue:1883
        end))() -- shunt/quicktype.yue:1883
      end), (errors(matches('incorrect type: expected string but got table'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1883)); -- shunt/quicktype.yue:1883
      return require('shunt.spec')._expect_that([=[(-> (F '() -> <string, boolean>', -> 'asdf', {})!)]=], (function() -- shunt/quicktype.yue:1884
        return (F('() -> <string, boolean>', function() -- shunt/quicktype.yue:1884
          return 'asdf', { } -- shunt/quicktype.yue:1884
        end))() -- shunt/quicktype.yue:1884
      end), (errors(matches('incorrect type: expected boolean but got table'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1884)) -- shunt/quicktype.yue:1884
    end) -- shunt/quicktype.yue:1882
    it('accepts methods', function() -- shunt/quicktype.yue:1886
      require('shunt.spec')._expect_that([==[(-> (F '(number) => <>', =>), {}, 123)]==], (function() -- shunt/quicktype.yue:1887
        return (F('(number) => <>', function(self) end)), { }, 123 -- shunt/quicktype.yue:1887
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1887)); -- shunt/quicktype.yue:1887
      return require('shunt.spec')._expect_that([==[(-> (F '(number) => <>', =>), 'recv', 123)]==], (function() -- shunt/quicktype.yue:1888
        return (F('(number) => <>', function(self) end)), 'recv', 123 -- shunt/quicktype.yue:1888
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1888)) -- shunt/quicktype.yue:1888
    end) -- shunt/quicktype.yue:1886
    it('requires a method receiver', function() -- shunt/quicktype.yue:1890
      return require('shunt.spec')._expect_that([==[(-> (F '() => <>', =>)!)]==], (function() -- shunt/quicktype.yue:1891
        return (F('() => <>', function(self) end))() -- shunt/quicktype.yue:1891
      end), (errors(matches("incorrect type: expected some but got nil"))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1891)) -- shunt/quicktype.yue:1891
    end) -- shunt/quicktype.yue:1890
    return it('checks never', function() -- shunt/quicktype.yue:1893
      return require('shunt.spec')._expect_that([=[(-> (F '() -> !', ->)!)]=], (function() -- shunt/quicktype.yue:1894
        return (F('() -> !', function() end))() -- shunt/quicktype.yue:1894
      end), (errors(matches('never expected a value here'))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1894)) -- shunt/quicktype.yue:1894
    end) -- shunt/quicktype.yue:1894
  end) -- shunt/quicktype.yue:1825
  describe('stats', function() -- shunt/quicktype.yue:1896
    return it('has the correct type', function() -- shunt/quicktype.yue:1897
      local prev_collect_stats = COLLECT_STATS -- shunt/quicktype.yue:1898
      COLLECT_STATS = true -- shunt/quicktype.yue:1899
      T('string', 'hello') -- shunt/quicktype.yue:1901
      local stats_arr = stats(); -- shunt/quicktype.yue:1902
      require('shunt.spec')._expect_that([=[stats_arr]=], stats_arr, (len(gt(0))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1903)); -- shunt/quicktype.yue:1903
      require('shunt.spec')._expect_that([=[stats_arr]=], stats_arr, (each_value(has_fields({ -- shunt/quicktype.yue:1904
        count = ge(0) -- shunt/quicktype.yue:1904
      }))), tostring("shunt/quicktype.yue") .. ":" .. tostring(1904)) -- shunt/quicktype.yue:1904
      COLLECT_STATS = prev_collect_stats -- shunt/quicktype.yue:1906
    end) -- shunt/quicktype.yue:1906
  end) -- shunt/quicktype.yue:1896
  describe('is_valid_type_spec', function() -- shunt/quicktype.yue:1908
    it('returns true on valid type specs', function() -- shunt/quicktype.yue:1909
      return require('shunt.spec')._expect_that([=[(is_valid_type_spec 'number')]=], (is_valid_type_spec('number')), (eq(true)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1910)) -- shunt/quicktype.yue:1910
    end) -- shunt/quicktype.yue:1909
    return it('returns false on invalid type specs', function() -- shunt/quicktype.yue:1912
      require('shunt.spec')._expect_that([=[(is_valid_type_spec 'unknown')]=], (is_valid_type_spec('unknown')), (eq(false)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1913)); -- shunt/quicktype.yue:1913
      require('shunt.spec')._expect_that([=[(is_valid_type_spec '(')]=], (is_valid_type_spec('(')), (eq(false)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1914)); -- shunt/quicktype.yue:1914
      return require('shunt.spec')._expect_that([=[(is_valid_type_spec ')')]=], (is_valid_type_spec(')')), (eq(false)), tostring("shunt/quicktype.yue") .. ":" .. tostring(1915)) -- shunt/quicktype.yue:1915
    end) -- shunt/quicktype.yue:1915
  end) -- shunt/quicktype.yue:1908
  return describe('deactivate_typechecks', function() -- shunt/quicktype.yue:1917
    local activate_typechecks -- shunt/quicktype.yue:1918
    activate_typechecks = function() -- shunt/quicktype.yue:1918
      skip_typechecking = false -- shunt/quicktype.yue:1919
    end -- shunt/quicktype.yue:1918
    return it('deactivates typechecks', function() -- shunt/quicktype.yue:1921
      local received -- shunt/quicktype.yue:1922
      local f = F('(number) => <>', function(r) -- shunt/quicktype.yue:1923
        received = r -- shunt/quicktype.yue:1924
      end); -- shunt/quicktype.yue:1923
      require('shunt.spec')._assert_that([=[(-> f 'prepare for')]=], (function() -- shunt/quicktype.yue:1925
        return f('prepare for') -- shunt/quicktype.yue:1925
      end), (errors(anything())), tostring("shunt/quicktype.yue") .. ":" .. tostring(1925)) -- shunt/quicktype.yue:1925
      deactivate_typechecks(); -- shunt/quicktype.yue:1927
      require('shunt.spec')._assert_that([=[(-> f 'unforeseen')]=], (function() -- shunt/quicktype.yue:1928
        return f('unforeseen') -- shunt/quicktype.yue:1928
      end), (no_errors()), tostring("shunt/quicktype.yue") .. ":" .. tostring(1928)) -- shunt/quicktype.yue:1928
      activate_typechecks(); -- shunt/quicktype.yue:1930
      return require('shunt.spec')._assert_that([=[(-> f 'consequences')]=], (function() -- shunt/quicktype.yue:1931
        return f('consequences') -- shunt/quicktype.yue:1931
      end), (errors(anything())), tostring("shunt/quicktype.yue") .. ":" .. tostring(1931)) -- shunt/quicktype.yue:1931
    end) -- shunt/quicktype.yue:1931
  end) -- shunt/quicktype.yue:1931
end) -- shunt/quicktype.yue:1321
return _module_0 -- shunt/quicktype.yue:1931
end
package.preload['shunt.spec'] = function(...)
-- [yue]: shunt/spec.yue
local _module_0 = { } -- shunt/spec.yue:1
local spec_fns, verbose, set_log_verbosity, log, spec, root_spec, current_spec, current_spec_kind, describe, it, declare_spec_section, Spec, FATAL_TEST_ERROR_MARKER, Test, expect_that, _expect_that, assert_that, _assert_that, get_caller_location, Anything, Some, Not, Eq, Compare, DeepEq, Type, Matches, Len, ToStringsAs, NoErrors, Errors, Contains, Each, Fields, repr, is_list, can_sort, matchers, reflow, testing, running_tests, run_tests -- shunt/spec.yue:1
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
          _exp_0 = _obj_0() -- shunt/spec.yue:180
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
do -- shunt/spec.yue:280
  local _class_0 -- shunt/spec.yue:280
  local _base_0 = { -- shunt/spec.yue:280
    matches = function(self, actual) -- shunt/spec.yue:283
      return self:deep_equal(self.expected, actual) -- shunt/spec.yue:284
    end, -- shunt/spec.yue:286
    deep_equal = function(self, a, b) -- shunt/spec.yue:286
      if a == b then -- shunt/spec.yue:287
        return true -- shunt/spec.yue:288
      end -- shunt/spec.yue:287
      local type_a = type(a) -- shunt/spec.yue:290
      local type_b = type(b) -- shunt/spec.yue:291
      if type_a ~= type_b then -- shunt/spec.yue:292
        return false -- shunt/spec.yue:293
      end -- shunt/spec.yue:292
      if type_a ~= 'table' then -- shunt/spec.yue:295
        return false -- shunt/spec.yue:296
      end -- shunt/spec.yue:295
      for ka, va in pairs(a) do -- shunt/spec.yue:297
        local vb = b[ka] -- shunt/spec.yue:298
        if not self:deep_equal(va, vb) then -- shunt/spec.yue:299
          return false -- shunt/spec.yue:300
        end -- shunt/spec.yue:299
      end -- shunt/spec.yue:300
      for kb, _ in pairs(b) do -- shunt/spec.yue:301
        if not (a[kb] ~= nil) then -- shunt/spec.yue:302
          return false -- shunt/spec.yue:303
        end -- shunt/spec.yue:302
      end -- shunt/spec.yue:303
      return true -- shunt/spec.yue:304
    end, -- shunt/spec.yue:306
    explain_match = function(self, actual) -- shunt/spec.yue:306
      return "which " .. tostring(self:describe(self:matches(actual))) -- shunt/spec.yue:307
    end, -- shunt/spec.yue:309
    describe = function(self, is_match) -- shunt/spec.yue:309
      if is_match == nil then -- shunt/spec.yue:309
        is_match = true -- shunt/spec.yue:309
      end -- shunt/spec.yue:309
      if is_match then -- shunt/spec.yue:310
        return "is deeply equal to " .. tostring(repr(self.expected)) -- shunt/spec.yue:311
      else -- shunt/spec.yue:313
        return "isn't deeply equal to " .. tostring(repr(self.expected)) -- shunt/spec.yue:313
      end -- shunt/spec.yue:310
    end -- shunt/spec.yue:280
  } -- shunt/spec.yue:280
  if _base_0.__index == nil then -- shunt/spec.yue:280
    _base_0.__index = _base_0 -- shunt/spec.yue:280
  end -- shunt/spec.yue:313
  _class_0 = setmetatable({ -- shunt/spec.yue:280
    __init = function(self, expected) -- shunt/spec.yue:281
      self.expected = expected -- shunt/spec.yue:281
    end, -- shunt/spec.yue:280
    __base = _base_0, -- shunt/spec.yue:280
    __name = "DeepEq" -- shunt/spec.yue:280
  }, { -- shunt/spec.yue:280
    __index = _base_0, -- shunt/spec.yue:280
    __call = function(cls, ...) -- shunt/spec.yue:280
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:280
      cls.__init(_self_0, ...) -- shunt/spec.yue:280
      return _self_0 -- shunt/spec.yue:280
    end -- shunt/spec.yue:280
  }) -- shunt/spec.yue:280
  _base_0.__class = _class_0 -- shunt/spec.yue:280
  DeepEq = _class_0 -- shunt/spec.yue:280
end -- shunt/spec.yue:313
do -- shunt/spec.yue:315
  local _class_0 -- shunt/spec.yue:315
  local _base_0 = { -- shunt/spec.yue:315
    matches = function(self, actual) -- shunt/spec.yue:318
      return self.type == type(actual) -- shunt/spec.yue:319
    end, -- shunt/spec.yue:321
    explain_match = function(self, actual) -- shunt/spec.yue:321
      return "which " .. tostring(self:describe(self:matches(actual))) -- shunt/spec.yue:322
    end, -- shunt/spec.yue:324
    describe = function(self, is_match) -- shunt/spec.yue:324
      if is_match == nil then -- shunt/spec.yue:324
        is_match = true -- shunt/spec.yue:324
      end -- shunt/spec.yue:324
      if is_match then -- shunt/spec.yue:325
        return "has type " .. tostring(self.type) -- shunt/spec.yue:326
      else -- shunt/spec.yue:328
        return "does not have type " .. tostring(self.type) -- shunt/spec.yue:328
      end -- shunt/spec.yue:325
    end -- shunt/spec.yue:315
  } -- shunt/spec.yue:315
  if _base_0.__index == nil then -- shunt/spec.yue:315
    _base_0.__index = _base_0 -- shunt/spec.yue:315
  end -- shunt/spec.yue:328
  _class_0 = setmetatable({ -- shunt/spec.yue:315
    __init = function(self, type) -- shunt/spec.yue:316
      self.type = type -- shunt/spec.yue:316
    end, -- shunt/spec.yue:315
    __base = _base_0, -- shunt/spec.yue:315
    __name = "Type" -- shunt/spec.yue:315
  }, { -- shunt/spec.yue:315
    __index = _base_0, -- shunt/spec.yue:315
    __call = function(cls, ...) -- shunt/spec.yue:315
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:315
      cls.__init(_self_0, ...) -- shunt/spec.yue:315
      return _self_0 -- shunt/spec.yue:315
    end -- shunt/spec.yue:315
  }) -- shunt/spec.yue:315
  _base_0.__class = _class_0 -- shunt/spec.yue:315
  Type = _class_0 -- shunt/spec.yue:315
end -- shunt/spec.yue:328
do -- shunt/spec.yue:330
  local _class_0 -- shunt/spec.yue:330
  local _base_0 = { -- shunt/spec.yue:330
    matches = function(self, actual) -- shunt/spec.yue:333
      return ('string' == type(actual)) and ((actual:match(self.pat)) ~= nil) -- shunt/spec.yue:335
    end, -- shunt/spec.yue:337
    explain_match = function(self, actual) -- shunt/spec.yue:337
      if 'string' ~= type(actual) then -- shunt/spec.yue:338
        return "which is a " .. tostring(type(actual)) -- shunt/spec.yue:339
      end -- shunt/spec.yue:338
      return "which " .. tostring(self:describe(self:matches(actual))) -- shunt/spec.yue:340
    end, -- shunt/spec.yue:342
    describe = function(self, is_match) -- shunt/spec.yue:342
      if is_match == nil then -- shunt/spec.yue:342
        is_match = true -- shunt/spec.yue:342
      end -- shunt/spec.yue:342
      if is_match then -- shunt/spec.yue:343
        return "matches " .. tostring(repr(self.pat)) -- shunt/spec.yue:344
      else -- shunt/spec.yue:346
        return "doesn't match " .. tostring(repr(self.pat)) -- shunt/spec.yue:346
      end -- shunt/spec.yue:343
    end -- shunt/spec.yue:330
  } -- shunt/spec.yue:330
  if _base_0.__index == nil then -- shunt/spec.yue:330
    _base_0.__index = _base_0 -- shunt/spec.yue:330
  end -- shunt/spec.yue:346
  _class_0 = setmetatable({ -- shunt/spec.yue:330
    __init = function(self, pat) -- shunt/spec.yue:331
      self.pat = pat -- shunt/spec.yue:331
    end, -- shunt/spec.yue:330
    __base = _base_0, -- shunt/spec.yue:330
    __name = "Matches" -- shunt/spec.yue:330
  }, { -- shunt/spec.yue:330
    __index = _base_0, -- shunt/spec.yue:330
    __call = function(cls, ...) -- shunt/spec.yue:330
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:330
      cls.__init(_self_0, ...) -- shunt/spec.yue:330
      return _self_0 -- shunt/spec.yue:330
    end -- shunt/spec.yue:330
  }) -- shunt/spec.yue:330
  _base_0.__class = _class_0 -- shunt/spec.yue:330
  Matches = _class_0 -- shunt/spec.yue:330
end -- shunt/spec.yue:346
do -- shunt/spec.yue:348
  local _class_0 -- shunt/spec.yue:348
  local _base_0 = { -- shunt/spec.yue:348
    matches = function(self, actual) -- shunt/spec.yue:351
      local ty = type(actual) -- shunt/spec.yue:352
      return (ty == 'string' or ty == 'table') and self.inner:matches(#actual) -- shunt/spec.yue:353
    end, -- shunt/spec.yue:355
    explain_match = function(self, actual) -- shunt/spec.yue:355
      local _exp_0 = type(actual) -- shunt/spec.yue:356
      if 'string' == _exp_0 or 'table' == _exp_0 then -- shunt/spec.yue:357
        return "which has length " .. tostring(#actual) .. " " .. tostring(self.inner:explain_match(#actual)) -- shunt/spec.yue:358
      else -- shunt/spec.yue:360
        return "which is a " .. tostring(type(actual)) -- shunt/spec.yue:360
      end -- shunt/spec.yue:360
    end, -- shunt/spec.yue:362
    describe = function(self, is_match) -- shunt/spec.yue:362
      if is_match == nil then -- shunt/spec.yue:362
        is_match = true -- shunt/spec.yue:362
      end -- shunt/spec.yue:362
      if is_match then -- shunt/spec.yue:363
        return "has a length which " .. tostring(self.inner:describe()) -- shunt/spec.yue:364
      else -- shunt/spec.yue:366
        return "doesn't have a length which " .. tostring(self.inner:describe()) -- shunt/spec.yue:366
      end -- shunt/spec.yue:363
    end -- shunt/spec.yue:348
  } -- shunt/spec.yue:348
  if _base_0.__index == nil then -- shunt/spec.yue:348
    _base_0.__index = _base_0 -- shunt/spec.yue:348
  end -- shunt/spec.yue:366
  _class_0 = setmetatable({ -- shunt/spec.yue:348
    __init = function(self, inner) -- shunt/spec.yue:349
      self.inner = inner -- shunt/spec.yue:349
    end, -- shunt/spec.yue:348
    __base = _base_0, -- shunt/spec.yue:348
    __name = "Len" -- shunt/spec.yue:348
  }, { -- shunt/spec.yue:348
    __index = _base_0, -- shunt/spec.yue:348
    __call = function(cls, ...) -- shunt/spec.yue:348
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:348
      cls.__init(_self_0, ...) -- shunt/spec.yue:348
      return _self_0 -- shunt/spec.yue:348
    end -- shunt/spec.yue:348
  }) -- shunt/spec.yue:348
  _base_0.__class = _class_0 -- shunt/spec.yue:348
  Len = _class_0 -- shunt/spec.yue:348
end -- shunt/spec.yue:366
do -- shunt/spec.yue:368
  local _class_0 -- shunt/spec.yue:368
  local _base_0 = { -- shunt/spec.yue:368
    matches = function(self, actual) -- shunt/spec.yue:371
      return self.inner:matches(tostring(actual)) -- shunt/spec.yue:372
    end, -- shunt/spec.yue:374
    explain_match = function(self, actual) -- shunt/spec.yue:374
      local tostring_actual = tostring(actual) -- shunt/spec.yue:375
      return "which tostrings as '" .. tostring(tostring_actual) .. "' " .. tostring(self.inner:explain_match(tostring_actual)) -- shunt/spec.yue:376
    end, -- shunt/spec.yue:378
    describe = function(self, is_match) -- shunt/spec.yue:378
      if is_match == nil then -- shunt/spec.yue:378
        is_match = true -- shunt/spec.yue:378
      end -- shunt/spec.yue:378
      if is_match then -- shunt/spec.yue:379
        return "tostrings as a string which " .. tostring(self.inner:describe(true)) -- shunt/spec.yue:380
      else -- shunt/spec.yue:382
        return "doesn't tostrings as a string which " .. tostring(self.inner:describe(false)) -- shunt/spec.yue:382
      end -- shunt/spec.yue:379
    end -- shunt/spec.yue:368
  } -- shunt/spec.yue:368
  if _base_0.__index == nil then -- shunt/spec.yue:368
    _base_0.__index = _base_0 -- shunt/spec.yue:368
  end -- shunt/spec.yue:382
  _class_0 = setmetatable({ -- shunt/spec.yue:368
    __init = function(self, inner) -- shunt/spec.yue:369
      self.inner = inner -- shunt/spec.yue:369
    end, -- shunt/spec.yue:368
    __base = _base_0, -- shunt/spec.yue:368
    __name = "ToStringsAs" -- shunt/spec.yue:368
  }, { -- shunt/spec.yue:368
    __index = _base_0, -- shunt/spec.yue:368
    __call = function(cls, ...) -- shunt/spec.yue:368
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:368
      cls.__init(_self_0, ...) -- shunt/spec.yue:368
      return _self_0 -- shunt/spec.yue:368
    end -- shunt/spec.yue:368
  }) -- shunt/spec.yue:368
  _base_0.__class = _class_0 -- shunt/spec.yue:368
  ToStringsAs = _class_0 -- shunt/spec.yue:368
end -- shunt/spec.yue:382
do -- shunt/spec.yue:384
  local _class_0 -- shunt/spec.yue:384
  local _base_0 = { -- shunt/spec.yue:384
    actual_repr = function(self) -- shunt/spec.yue:389
      return "-> " .. tostring(self:error_repr()) -- shunt/spec.yue:390
    end, -- shunt/spec.yue:392
    error_repr = function(self) -- shunt/spec.yue:392
      if (self.error ~= nil) then -- shunt/spec.yue:393
        return "error " .. tostring(repr(self.error)) -- shunt/spec.yue:394
      else -- shunt/spec.yue:396
        return "no error" -- shunt/spec.yue:396
      end -- shunt/spec.yue:393
    end, -- shunt/spec.yue:398
    get_err = function(self, fn) -- shunt/spec.yue:398
      if self.error_set then -- shunt/spec.yue:399
        return self.error -- shunt/spec.yue:400
      end -- shunt/spec.yue:399
xpcall(function() -- shunt/spec.yue:402
        return fn() -- shunt/spec.yue:403
      end, function(err) -- shunt/spec.yue:403
        self.error = err -- shunt/spec.yue:405
      end) -- shunt/spec.yue:405
      self.error_set = true -- shunt/spec.yue:406
      return self.error -- shunt/spec.yue:407
    end, -- shunt/spec.yue:409
    matches = function(self, fn) -- shunt/spec.yue:409
      return not ((self:get_err(fn)) ~= nil) -- shunt/spec.yue:410
    end, -- shunt/spec.yue:412
    explain_match = function(self, fn) -- shunt/spec.yue:412
      return "which " .. tostring(self:describe(self:matches(fn))) -- shunt/spec.yue:413
    end, -- shunt/spec.yue:415
    describe = function(self, is_match) -- shunt/spec.yue:415
      if is_match == nil then -- shunt/spec.yue:415
        is_match = true -- shunt/spec.yue:415
      end -- shunt/spec.yue:415
      if is_match then -- shunt/spec.yue:416
        return "doesn't throw an error" -- shunt/spec.yue:417
      else -- shunt/spec.yue:419
        return "throws an error" -- shunt/spec.yue:419
      end -- shunt/spec.yue:416
    end -- shunt/spec.yue:384
  } -- shunt/spec.yue:384
  if _base_0.__index == nil then -- shunt/spec.yue:384
    _base_0.__index = _base_0 -- shunt/spec.yue:384
  end -- shunt/spec.yue:419
  _class_0 = setmetatable({ -- shunt/spec.yue:384
    __init = function(self) -- shunt/spec.yue:385
      self.error_set = false -- shunt/spec.yue:386
      self.error = nil -- shunt/spec.yue:387
    end, -- shunt/spec.yue:384
    __base = _base_0, -- shunt/spec.yue:384
    __name = "NoErrors" -- shunt/spec.yue:384
  }, { -- shunt/spec.yue:384
    __index = _base_0, -- shunt/spec.yue:384
    __call = function(cls, ...) -- shunt/spec.yue:384
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:384
      cls.__init(_self_0, ...) -- shunt/spec.yue:384
      return _self_0 -- shunt/spec.yue:384
    end -- shunt/spec.yue:384
  }) -- shunt/spec.yue:384
  _base_0.__class = _class_0 -- shunt/spec.yue:384
  NoErrors = _class_0 -- shunt/spec.yue:384
end -- shunt/spec.yue:419
do -- shunt/spec.yue:421
  local _class_0 -- shunt/spec.yue:421
  local _base_0 = { -- shunt/spec.yue:421
    actual_repr = function(self) -- shunt/spec.yue:426
      return "-> " .. tostring(self:error_repr()) -- shunt/spec.yue:427
    end, -- shunt/spec.yue:429
    error_repr = function(self) -- shunt/spec.yue:429
      if (self.error ~= nil) then -- shunt/spec.yue:430
        return "error " .. tostring(repr(self.error)) -- shunt/spec.yue:431
      else -- shunt/spec.yue:433
        return "no error" -- shunt/spec.yue:433
      end -- shunt/spec.yue:430
    end, -- shunt/spec.yue:435
    get_err = function(self, fn) -- shunt/spec.yue:435
      if self.error_set then -- shunt/spec.yue:436
        return self.error -- shunt/spec.yue:437
      end -- shunt/spec.yue:436
xpcall(function() -- shunt/spec.yue:439
        return fn() -- shunt/spec.yue:440
      end, function(err) -- shunt/spec.yue:440
        self.error = err -- shunt/spec.yue:442
      end) -- shunt/spec.yue:442
      self.error_set = true -- shunt/spec.yue:443
      return self.error -- shunt/spec.yue:444
    end, -- shunt/spec.yue:446
    matches = function(self, fn) -- shunt/spec.yue:446
      local err = self:get_err(fn) -- shunt/spec.yue:447
      if not (err ~= nil) then -- shunt/spec.yue:448
        return false -- shunt/spec.yue:449
      end -- shunt/spec.yue:448
      return self.inner:matches(err) -- shunt/spec.yue:450
    end, -- shunt/spec.yue:452
    explain_match = function(self, fn) -- shunt/spec.yue:452
      local err = self:get_err(fn) -- shunt/spec.yue:453
      if (err ~= nil) then -- shunt/spec.yue:454
        return "which throws " .. tostring(self:error_repr()) .. " " .. tostring(self.inner:explain_match(err)) -- shunt/spec.yue:455
      else -- shunt/spec.yue:457
        return "which doesn't throw an error" -- shunt/spec.yue:457
      end -- shunt/spec.yue:454
    end, -- shunt/spec.yue:459
    describe = function(self, is_match) -- shunt/spec.yue:459
      if is_match == nil then -- shunt/spec.yue:459
        is_match = true -- shunt/spec.yue:459
      end -- shunt/spec.yue:459
      if is_match then -- shunt/spec.yue:460
        return "throws an error which " .. tostring(self.inner:describe()) -- shunt/spec.yue:461
      else -- shunt/spec.yue:463
        return "doesn't throw an error" -- shunt/spec.yue:463
      end -- shunt/spec.yue:460
    end -- shunt/spec.yue:421
  } -- shunt/spec.yue:421
  if _base_0.__index == nil then -- shunt/spec.yue:421
    _base_0.__index = _base_0 -- shunt/spec.yue:421
  end -- shunt/spec.yue:463
  _class_0 = setmetatable({ -- shunt/spec.yue:421
    __init = function(self, inner) -- shunt/spec.yue:422
      self.inner = inner -- shunt/spec.yue:422
      self.error_set = false -- shunt/spec.yue:423
      self.error = nil -- shunt/spec.yue:424
    end, -- shunt/spec.yue:421
    __base = _base_0, -- shunt/spec.yue:421
    __name = "Errors" -- shunt/spec.yue:421
  }, { -- shunt/spec.yue:421
    __index = _base_0, -- shunt/spec.yue:421
    __call = function(cls, ...) -- shunt/spec.yue:421
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:421
      cls.__init(_self_0, ...) -- shunt/spec.yue:421
      return _self_0 -- shunt/spec.yue:421
    end -- shunt/spec.yue:421
  }) -- shunt/spec.yue:421
  _base_0.__class = _class_0 -- shunt/spec.yue:421
  Errors = _class_0 -- shunt/spec.yue:421
end -- shunt/spec.yue:463
do -- shunt/spec.yue:465
  local _class_0 -- shunt/spec.yue:465
  local _base_0 = { -- shunt/spec.yue:465
    matches = function(self, actual) -- shunt/spec.yue:472
      return (actual ~= nil) and ((self:find_match(actual)) ~= nil) -- shunt/spec.yue:473
    end, -- shunt/spec.yue:475
    find_match = function(self, actual) -- shunt/spec.yue:475
      for key, value in pairs(actual) do -- shunt/spec.yue:476
        local to_check -- shunt/spec.yue:477
        do -- shunt/spec.yue:477
          local _exp_0 = self.kind -- shunt/spec.yue:477
          if 'key' == _exp_0 then -- shunt/spec.yue:478
            to_check = key -- shunt/spec.yue:479
          elseif 'value' == _exp_0 then -- shunt/spec.yue:480
            to_check = value -- shunt/spec.yue:481
          elseif 'key-value' == _exp_0 then -- shunt/spec.yue:482
            to_check = { -- shunt/spec.yue:483
              key = key, -- shunt/spec.yue:483
              value = value -- shunt/spec.yue:483
            } -- shunt/spec.yue:483
          else -- shunt/spec.yue:485
            to_check = error("internal error: unknown kind " .. tostring(repr(self.kind))) -- shunt/spec.yue:485
          end -- shunt/spec.yue:485
        end -- shunt/spec.yue:485
        if self.inner:matches(to_check) then -- shunt/spec.yue:486
          return to_check -- shunt/spec.yue:487
        end -- shunt/spec.yue:486
      end -- shunt/spec.yue:487
      return nil -- shunt/spec.yue:488
    end, -- shunt/spec.yue:490
    explain_match = function(self, actual) -- shunt/spec.yue:490
      if 'table' ~= type(actual) then -- shunt/spec.yue:491
        return "which is a " .. tostring(type(actual)) -- shunt/spec.yue:492
      else -- shunt/spec.yue:493
        do -- shunt/spec.yue:493
          local match = self:find_match(actual) -- shunt/spec.yue:493
          if match then -- shunt/spec.yue:493
            return "which contains " .. tostring(repr(match)) .. " " .. tostring(self.inner:explain_match(match)) -- shunt/spec.yue:494
          else -- shunt/spec.yue:496
            return "which does not contain any " .. tostring(self.pretty_kind) .. " which " .. tostring(self.inner:describe()) -- shunt/spec.yue:496
          end -- shunt/spec.yue:493
        end -- shunt/spec.yue:493
      end -- shunt/spec.yue:491
    end, -- shunt/spec.yue:498
    describe = function(self, is_match) -- shunt/spec.yue:498
      if is_match == nil then -- shunt/spec.yue:498
        is_match = true -- shunt/spec.yue:498
      end -- shunt/spec.yue:498
      if is_match then -- shunt/spec.yue:499
        return "contains a value which " .. tostring(self.inner:describe()) -- shunt/spec.yue:500
      else -- shunt/spec.yue:502
        return "does not contain any " .. tostring(self.pretty_kind) .. " which " .. tostring(self.inner:describe()) -- shunt/spec.yue:502
      end -- shunt/spec.yue:499
    end -- shunt/spec.yue:465
  } -- shunt/spec.yue:465
  if _base_0.__index == nil then -- shunt/spec.yue:465
    _base_0.__index = _base_0 -- shunt/spec.yue:465
  end -- shunt/spec.yue:502
  _class_0 = setmetatable({ -- shunt/spec.yue:465
    __init = function(self, kind, inner) -- shunt/spec.yue:466
      self.kind = kind -- shunt/spec.yue:466
      self.inner = inner -- shunt/spec.yue:466
      if self.kind == 'key-value' then -- shunt/spec.yue:467
        self.pretty_kind = 'key-value pair' -- shunt/spec.yue:468
      else -- shunt/spec.yue:470
        self.pretty_kind = self.kind -- shunt/spec.yue:470
      end -- shunt/spec.yue:467
    end, -- shunt/spec.yue:465
    __base = _base_0, -- shunt/spec.yue:465
    __name = "Contains" -- shunt/spec.yue:465
  }, { -- shunt/spec.yue:465
    __index = _base_0, -- shunt/spec.yue:465
    __call = function(cls, ...) -- shunt/spec.yue:465
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:465
      cls.__init(_self_0, ...) -- shunt/spec.yue:465
      return _self_0 -- shunt/spec.yue:465
    end -- shunt/spec.yue:465
  }) -- shunt/spec.yue:465
  _base_0.__class = _class_0 -- shunt/spec.yue:465
  Contains = _class_0 -- shunt/spec.yue:465
end -- shunt/spec.yue:502
do -- shunt/spec.yue:504
  local _class_0 -- shunt/spec.yue:504
  local _base_0 = { -- shunt/spec.yue:504
    matches = function(self, actual) -- shunt/spec.yue:511
      return (actual ~= nil) and not ((self:find_non_match(actual)) ~= nil) -- shunt/spec.yue:512
    end, -- shunt/spec.yue:514
    find_non_match = function(self, actual) -- shunt/spec.yue:514
      for key, value in pairs(actual) do -- shunt/spec.yue:515
        local to_check -- shunt/spec.yue:516
        do -- shunt/spec.yue:516
          local _exp_0 = self.kind -- shunt/spec.yue:516
          if 'key' == _exp_0 then -- shunt/spec.yue:517
            to_check = key -- shunt/spec.yue:518
          elseif 'value' == _exp_0 then -- shunt/spec.yue:519
            to_check = value -- shunt/spec.yue:520
          elseif 'key-value' == _exp_0 then -- shunt/spec.yue:521
            to_check = { -- shunt/spec.yue:522
              key = key, -- shunt/spec.yue:522
              value = value -- shunt/spec.yue:522
            } -- shunt/spec.yue:522
          else -- shunt/spec.yue:524
            to_check = error("internal error: unknown kind " .. tostring(repr(self.kind))) -- shunt/spec.yue:524
          end -- shunt/spec.yue:524
        end -- shunt/spec.yue:524
        if not self.inner:matches(to_check) then -- shunt/spec.yue:525
          return to_check -- shunt/spec.yue:526
        end -- shunt/spec.yue:525
      end -- shunt/spec.yue:526
      return nil -- shunt/spec.yue:527
    end, -- shunt/spec.yue:529
    explain_match = function(self, actual) -- shunt/spec.yue:529
      if 'table' ~= type(actual) then -- shunt/spec.yue:530
        return "is a " .. tostring(actual) -- shunt/spec.yue:531
      else -- shunt/spec.yue:532
        do -- shunt/spec.yue:532
          local non_match = self:find_non_match(actual) -- shunt/spec.yue:532
          if non_match then -- shunt/spec.yue:532
            return "in which some element " .. tostring(self.inner:describe(false)) -- shunt/spec.yue:533
          else -- shunt/spec.yue:535
            return "in which each element " .. tostring(self.inner:describe(true)) -- shunt/spec.yue:535
          end -- shunt/spec.yue:532
        end -- shunt/spec.yue:532
      end -- shunt/spec.yue:530
    end, -- shunt/spec.yue:537
    describe = function(self, is_match) -- shunt/spec.yue:537
      if is_match == nil then -- shunt/spec.yue:537
        is_match = true -- shunt/spec.yue:537
      end -- shunt/spec.yue:537
      if is_match then -- shunt/spec.yue:538
        return "consists of " .. tostring(self.pretty_kind) .. " which " .. tostring(self.inner:describe()) -- shunt/spec.yue:539
      else -- shunt/spec.yue:541
        return "contains a " .. tostring(self.pretty_kind) .. " which " .. tostring(self.inner:describe()) -- shunt/spec.yue:541
      end -- shunt/spec.yue:538
    end -- shunt/spec.yue:504
  } -- shunt/spec.yue:504
  if _base_0.__index == nil then -- shunt/spec.yue:504
    _base_0.__index = _base_0 -- shunt/spec.yue:504
  end -- shunt/spec.yue:541
  _class_0 = setmetatable({ -- shunt/spec.yue:504
    __init = function(self, kind, inner) -- shunt/spec.yue:505
      self.kind = kind -- shunt/spec.yue:505
      self.inner = inner -- shunt/spec.yue:505
      if self.kind == 'key-value' then -- shunt/spec.yue:506
        self.pretty_kind = 'key-value pair' -- shunt/spec.yue:507
      else -- shunt/spec.yue:509
        self.pretty_kind = self.kind -- shunt/spec.yue:509
      end -- shunt/spec.yue:506
    end, -- shunt/spec.yue:504
    __base = _base_0, -- shunt/spec.yue:504
    __name = "Each" -- shunt/spec.yue:504
  }, { -- shunt/spec.yue:504
    __index = _base_0, -- shunt/spec.yue:504
    __call = function(cls, ...) -- shunt/spec.yue:504
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:504
      cls.__init(_self_0, ...) -- shunt/spec.yue:504
      return _self_0 -- shunt/spec.yue:504
    end -- shunt/spec.yue:504
  }) -- shunt/spec.yue:504
  _base_0.__class = _class_0 -- shunt/spec.yue:504
  Each = _class_0 -- shunt/spec.yue:504
end -- shunt/spec.yue:541
do -- shunt/spec.yue:543
  local _class_0 -- shunt/spec.yue:543
  local _base_0 = { -- shunt/spec.yue:543
    matches = function(self, actual) -- shunt/spec.yue:553
      return (actual ~= nil) and not ((self:find_non_match(actual)) ~= nil) -- shunt/spec.yue:554
    end, -- shunt/spec.yue:556
    find_non_match = function(self, actual) -- shunt/spec.yue:556
      local _list_0 = self.fields -- shunt/spec.yue:557
      for _index_0 = 1, #_list_0 do -- shunt/spec.yue:557
        local _des_0 = _list_0[_index_0] -- shunt/spec.yue:557
        local field, matcher = _des_0.field, _des_0.matcher -- shunt/spec.yue:557
        if not matcher:matches(actual[field]) then -- shunt/spec.yue:558
          return field, matcher -- shunt/spec.yue:559
        end -- shunt/spec.yue:558
      end -- shunt/spec.yue:559
      return nil -- shunt/spec.yue:560
    end, -- shunt/spec.yue:562
    explain_match = function(self, actual) -- shunt/spec.yue:562
      if 'table' ~= type(actual) then -- shunt/spec.yue:563
        return "is a " .. tostring(type(actual)) -- shunt/spec.yue:564
      end -- shunt/spec.yue:563
      local non_match_field, non_match_matcher = self:find_non_match(actual) -- shunt/spec.yue:566
      if not (non_match_field ~= nil) then -- shunt/spec.yue:567
        local field_descriptions -- shunt/spec.yue:568
        do -- shunt/spec.yue:568
          local _accum_0 = { } -- shunt/spec.yue:568
          local _len_0 = 1 -- shunt/spec.yue:568
          local _list_0 = self.fields -- shunt/spec.yue:568
          for _index_0 = 1, #_list_0 do -- shunt/spec.yue:568
            local _des_0 = _list_0[_index_0] -- shunt/spec.yue:568
            local field, matcher = _des_0.field, _des_0.matcher -- shunt/spec.yue:568
            _accum_0[_len_0] = "there is a field '" .. tostring(field) .. "' " .. tostring(matcher:explain_match(actual[field])) -- shunt/spec.yue:568
            _len_0 = _len_0 + 1 -- shunt/spec.yue:568
          end -- shunt/spec.yue:568
          field_descriptions = _accum_0 -- shunt/spec.yue:568
        end -- shunt/spec.yue:568
        return "in which:\n  " .. tostring(table.concat(field_descriptions, '\n  ')) -- shunt/spec.yue:569
      else -- shunt/spec.yue:571
        return "in which field " .. tostring(repr(non_match_field)) .. " " .. tostring(non_match_matcher:explain_match(actual[non_match_field])) -- shunt/spec.yue:571
      end -- shunt/spec.yue:567
    end, -- shunt/spec.yue:573
    describe = function(self, is_match) -- shunt/spec.yue:573
      if is_match == nil then -- shunt/spec.yue:573
        is_match = true -- shunt/spec.yue:573
      end -- shunt/spec.yue:573
      local field_descriptions -- shunt/spec.yue:574
      do -- shunt/spec.yue:574
        local _accum_0 = { } -- shunt/spec.yue:574
        local _len_0 = 1 -- shunt/spec.yue:574
        local _list_0 = self.fields -- shunt/spec.yue:574
        for _index_0 = 1, #_list_0 do -- shunt/spec.yue:574
          local _des_0 = _list_0[_index_0] -- shunt/spec.yue:574
          local field, matcher = _des_0.field, _des_0.matcher -- shunt/spec.yue:574
          _accum_0[_len_0] = "there is a field '" .. tostring(field) .. "' which " .. tostring(matcher:describe()) -- shunt/spec.yue:574
          _len_0 = _len_0 + 1 -- shunt/spec.yue:574
        end -- shunt/spec.yue:574
        field_descriptions = _accum_0 -- shunt/spec.yue:574
      end -- shunt/spec.yue:574
      if is_match then -- shunt/spec.yue:575
        return "is a table in which:\n  " .. tostring(table.concat(field_descriptions, '\n  ')) -- shunt/spec.yue:576
      else -- shunt/spec.yue:578
        return "isn't a table in which:\n  " .. tostring(table.concat(field_descriptions, '\n  ')) -- shunt/spec.yue:578
      end -- shunt/spec.yue:575
    end -- shunt/spec.yue:543
  } -- shunt/spec.yue:543
  if _base_0.__index == nil then -- shunt/spec.yue:543
    _base_0.__index = _base_0 -- shunt/spec.yue:543
  end -- shunt/spec.yue:578
  _class_0 = setmetatable({ -- shunt/spec.yue:543
    __init = function(self, fields) -- shunt/spec.yue:544
      do -- shunt/spec.yue:545
        local _accum_0 = { } -- shunt/spec.yue:545
        local _len_0 = 1 -- shunt/spec.yue:545
        for field, matcher in pairs(fields) do -- shunt/spec.yue:545
          _accum_0[_len_0] = { -- shunt/spec.yue:545
            field = field, -- shunt/spec.yue:545
            matcher = matcher -- shunt/spec.yue:545
          } -- shunt/spec.yue:545
          _len_0 = _len_0 + 1 -- shunt/spec.yue:545
        end -- shunt/spec.yue:545
        self.fields = _accum_0 -- shunt/spec.yue:545
      end -- shunt/spec.yue:545
      return table.sort(self.fields, function(a, b) -- shunt/spec.yue:546
        local taf = type(a.field) -- shunt/spec.yue:547
        local tbf = type(b.field) -- shunt/spec.yue:548
        if taf ~= tbf or taf == 'number' then -- shunt/spec.yue:549
          return false -- shunt/spec.yue:550
        end -- shunt/spec.yue:549
        return a.field < b.field -- shunt/spec.yue:551
      end) -- shunt/spec.yue:551
    end, -- shunt/spec.yue:543
    __base = _base_0, -- shunt/spec.yue:543
    __name = "Fields" -- shunt/spec.yue:543
  }, { -- shunt/spec.yue:543
    __index = _base_0, -- shunt/spec.yue:543
    __call = function(cls, ...) -- shunt/spec.yue:543
      local _self_0 = setmetatable({ }, _base_0) -- shunt/spec.yue:543
      cls.__init(_self_0, ...) -- shunt/spec.yue:543
      return _self_0 -- shunt/spec.yue:543
    end -- shunt/spec.yue:543
  }) -- shunt/spec.yue:543
  _base_0.__class = _class_0 -- shunt/spec.yue:543
  Fields = _class_0 -- shunt/spec.yue:543
end -- shunt/spec.yue:578
repr = function(self) -- shunt/spec.yue:580
  return table.concat((function() -- shunt/spec.yue:581
    local _with_0 = { } -- shunt/spec.yue:581
    local stack = { } -- shunt/spec.yue:582
    local repr_impl -- shunt/spec.yue:583
    repr_impl = function(self) -- shunt/spec.yue:583
      for _index_0 = 1, #stack do -- shunt/spec.yue:584
        local elem = stack[_index_0] -- shunt/spec.yue:584
        if rawequal(self, elem) then -- shunt/spec.yue:585
          _with_0[#_with_0 + 1] = '...' -- shunt/spec.yue:586
          return -- shunt/spec.yue:587
        end -- shunt/spec.yue:585
      end -- shunt/spec.yue:587
      stack[#stack + 1] = self -- shunt/spec.yue:588
      do -- shunt/spec.yue:590
        local _exp_0 = type(self) -- shunt/spec.yue:590
        if 'string' == _exp_0 then -- shunt/spec.yue:591
          _with_0[#_with_0 + 1] = "'" .. tostring(self) .. "'" -- shunt/spec.yue:592
        elseif 'table' == _exp_0 then -- shunt/spec.yue:593
          if (getmetatable(self) ~= nil) and (getmetatable(self).__tostring ~= nil) then -- shunt/spec.yue:594
            _with_0[#_with_0 + 1] = tostring(self) -- shunt/spec.yue:595
          else -- shunt/spec.yue:596
            if is_list(self) then -- shunt/spec.yue:596
              _with_0[#_with_0 + 1] = '[' -- shunt/spec.yue:597
              local first = true -- shunt/spec.yue:598
              for _index_0 = 1, #self do -- shunt/spec.yue:599
                local elem = self[_index_0] -- shunt/spec.yue:599
                if not first then -- shunt/spec.yue:600
                  _with_0[#_with_0 + 1] = ', ' -- shunt/spec.yue:601
                end -- shunt/spec.yue:600
                first = false -- shunt/spec.yue:602
                repr_impl(elem) -- shunt/spec.yue:604
              end -- shunt/spec.yue:604
              _with_0[#_with_0 + 1] = ']' -- shunt/spec.yue:605
            else -- shunt/spec.yue:607
              _with_0[#_with_0 + 1] = '{' -- shunt/spec.yue:607
              local first = true -- shunt/spec.yue:608
              local keys -- shunt/spec.yue:609
              do -- shunt/spec.yue:609
                local _accum_0 = { } -- shunt/spec.yue:609
                local _len_0 = 1 -- shunt/spec.yue:609
                for key, _ in pairs(self) do -- shunt/spec.yue:609
                  _accum_0[_len_0] = key -- shunt/spec.yue:609
                  _len_0 = _len_0 + 1 -- shunt/spec.yue:609
                end -- shunt/spec.yue:609
                keys = _accum_0 -- shunt/spec.yue:609
              end -- shunt/spec.yue:609
              if can_sort(keys) then -- shunt/spec.yue:610
                table.sort(keys, function(a, b) -- shunt/spec.yue:611
                  local ta = type(a) -- shunt/spec.yue:612
                  local tb = type(b) -- shunt/spec.yue:613
                  if ta ~= tb or ta == 'number' then -- shunt/spec.yue:614
                    return false -- shunt/spec.yue:615
                  end -- shunt/spec.yue:614
                  return a < b -- shunt/spec.yue:616
                end) -- shunt/spec.yue:611
              end -- shunt/spec.yue:610
              for _index_0 = 1, #keys do -- shunt/spec.yue:617
                local key = keys[_index_0] -- shunt/spec.yue:617
                local value = self[key] -- shunt/spec.yue:618
                if not first then -- shunt/spec.yue:619
                  _with_0[#_with_0 + 1] = ', ' -- shunt/spec.yue:620
                end -- shunt/spec.yue:619
                first = false -- shunt/spec.yue:621
                repr_impl(key) -- shunt/spec.yue:623
                _with_0[#_with_0 + 1] = ': ' -- shunt/spec.yue:624
                repr_impl(value) -- shunt/spec.yue:625
              end -- shunt/spec.yue:625
              _with_0[#_with_0 + 1] = '}' -- shunt/spec.yue:626
            end -- shunt/spec.yue:596
          end -- shunt/spec.yue:594
        else -- shunt/spec.yue:628
          _with_0[#_with_0 + 1] = tostring(self) -- shunt/spec.yue:628
        end -- shunt/spec.yue:628
      end -- shunt/spec.yue:628
      stack[#stack] = nil -- shunt/spec.yue:630
    end -- shunt/spec.yue:583
    repr_impl(self) -- shunt/spec.yue:631
    return _with_0 -- shunt/spec.yue:581
  end)()) -- shunt/spec.yue:631
end -- shunt/spec.yue:580
_module_0["repr"] = repr -- shunt/spec.yue:631
is_list = function(table) -- shunt/spec.yue:633
  local max_key = 0 -- shunt/spec.yue:634
  local num_keys = 0 -- shunt/spec.yue:635
  for k, _ in pairs(table) do -- shunt/spec.yue:636
    num_keys = num_keys + 1 -- shunt/spec.yue:637
    if 'number' ~= type(k) then -- shunt/spec.yue:638
      return false -- shunt/spec.yue:639
    end -- shunt/spec.yue:638
    if max_key < k then -- shunt/spec.yue:640
      max_key = k -- shunt/spec.yue:641
    end -- shunt/spec.yue:640
  end -- shunt/spec.yue:641
  return max_key == num_keys and num_keys > 0 -- shunt/spec.yue:642
end -- shunt/spec.yue:633
can_sort = function(list) -- shunt/spec.yue:644
  for _index_0 = 1, #list do -- shunt/spec.yue:645
    local elem = list[_index_0] -- shunt/spec.yue:645
    local _continue_0 = false -- shunt/spec.yue:646
    repeat -- shunt/spec.yue:646
      do -- shunt/spec.yue:646
        local _exp_0 = type(elem) -- shunt/spec.yue:646
        if 'boolean' == _exp_0 or 'string' == _exp_0 or 'number' == _exp_0 then -- shunt/spec.yue:647
          _continue_0 = true -- shunt/spec.yue:648
          break -- shunt/spec.yue:648
        elseif 'table' == _exp_0 then -- shunt/spec.yue:649
          if not (getmetatable(table) ~= nil) or not (getmetatable(table).__lt ~= nil) then -- shunt/spec.yue:650
            return false -- shunt/spec.yue:651
          end -- shunt/spec.yue:650
        else -- shunt/spec.yue:653
          return false -- shunt/spec.yue:653
        end -- shunt/spec.yue:653
      end -- shunt/spec.yue:653
      _continue_0 = true -- shunt/spec.yue:646
    until true -- shunt/spec.yue:653
    if not _continue_0 then -- shunt/spec.yue:653
      break -- shunt/spec.yue:653
    end -- shunt/spec.yue:653
  end -- shunt/spec.yue:653
  return true -- shunt/spec.yue:654
end -- shunt/spec.yue:644
matchers = { -- shunt/spec.yue:657
  anything = function() -- shunt/spec.yue:657
    return Anything() -- shunt/spec.yue:657
  end, -- shunt/spec.yue:657
  some = function() -- shunt/spec.yue:658
    return Some() -- shunt/spec.yue:658
  end, -- shunt/spec.yue:658
  not_ = function(matcher) -- shunt/spec.yue:659
    return Not(matcher) -- shunt/spec.yue:659
  end, -- shunt/spec.yue:659
  eq = function(value) -- shunt/spec.yue:660
    return Compare('==', value) -- shunt/spec.yue:660
  end, -- shunt/spec.yue:660
  deep_eq = function(value) -- shunt/spec.yue:661
    return DeepEq(value) -- shunt/spec.yue:661
  end, -- shunt/spec.yue:661
  lt = function(value) -- shunt/spec.yue:662
    return Compare('<', value) -- shunt/spec.yue:662
  end, -- shunt/spec.yue:662
  le = function(value) -- shunt/spec.yue:663
    return Compare('<=', value) -- shunt/spec.yue:663
  end, -- shunt/spec.yue:663
  gt = function(value) -- shunt/spec.yue:664
    return Compare('>', value) -- shunt/spec.yue:664
  end, -- shunt/spec.yue:664
  ge = function(value) -- shunt/spec.yue:665
    return Compare('>=', value) -- shunt/spec.yue:665
  end, -- shunt/spec.yue:665
  len = function(matcher) -- shunt/spec.yue:666
    return Len(matcher) -- shunt/spec.yue:666
  end, -- shunt/spec.yue:666
  matches = function(pattern) -- shunt/spec.yue:667
    return Matches(pattern) -- shunt/spec.yue:667
  end, -- shunt/spec.yue:667
  tostrings_as = function(matcher) -- shunt/spec.yue:668
    return ToStringsAs(matcher) -- shunt/spec.yue:668
  end, -- shunt/spec.yue:668
  contains_key = function(matcher) -- shunt/spec.yue:669
    return Contains('key', matcher) -- shunt/spec.yue:669
  end, -- shunt/spec.yue:669
  contains_value = function(matcher) -- shunt/spec.yue:670
    return Contains('value', matcher) -- shunt/spec.yue:670
  end, -- shunt/spec.yue:670
  contains_pair = function(matcher) -- shunt/spec.yue:671
    return Contains('key-value', matcher) -- shunt/spec.yue:671
  end, -- shunt/spec.yue:671
  each_key = function(matcher) -- shunt/spec.yue:672
    return Each('key', matcher) -- shunt/spec.yue:672
  end, -- shunt/spec.yue:672
  each_value = function(matcher) -- shunt/spec.yue:673
    return Each('value', matcher) -- shunt/spec.yue:673
  end, -- shunt/spec.yue:673
  each_pair = function(matcher) -- shunt/spec.yue:674
    return Each('key-value', matcher) -- shunt/spec.yue:674
  end, -- shunt/spec.yue:674
  no_errors = function() -- shunt/spec.yue:675
    return NoErrors() -- shunt/spec.yue:675
  end, -- shunt/spec.yue:675
  errors = function(matcher) -- shunt/spec.yue:676
    return Errors(matcher) -- shunt/spec.yue:676
  end, -- shunt/spec.yue:676
  has_type = function(typ) -- shunt/spec.yue:677
    return Type(typ) -- shunt/spec.yue:677
  end, -- shunt/spec.yue:677
  has_fields = function(fields) -- shunt/spec.yue:678
    return Fields(fields) -- shunt/spec.yue:678
  end -- shunt/spec.yue:678
} -- shunt/spec.yue:656
_module_0["matchers"] = matchers -- shunt/spec.yue:678
reflow = function(prefix, string, width) -- shunt/spec.yue:680
  if width == nil then -- shunt/spec.yue:680
    width = 80 -- shunt/spec.yue:680
  end -- shunt/spec.yue:680
  local lines -- shunt/spec.yue:681
  do -- shunt/spec.yue:681
    local _with_0 = { } -- shunt/spec.yue:681
    local chunk_len = width - #prefix -- shunt/spec.yue:682
    local first_line = true -- shunt/spec.yue:683
    for line in string:gmatch('[^\r\n]*') do -- shunt/spec.yue:684
      for i = 1, #line, chunk_len do -- shunt/spec.yue:685
        local chunk = line:sub(i, i + chunk_len - 1) -- shunt/spec.yue:686
        if first_line then -- shunt/spec.yue:687
          _with_0[#_with_0 + 1] = chunk -- shunt/spec.yue:688
        else -- shunt/spec.yue:690
          _with_0[#_with_0 + 1] = prefix .. chunk -- shunt/spec.yue:690
        end -- shunt/spec.yue:687
        first_line = false -- shunt/spec.yue:691
      end -- shunt/spec.yue:691
    end -- shunt/spec.yue:691
    lines = _with_0 -- shunt/spec.yue:681
  end -- shunt/spec.yue:681
  return table.concat(lines, '\n') -- shunt/spec.yue:692
end -- shunt/spec.yue:680
testing = false -- shunt/spec.yue:694
running_tests = function() -- shunt/spec.yue:695
  return testing -- shunt/spec.yue:695
end -- shunt/spec.yue:695
_module_0["running_tests"] = running_tests -- shunt/spec.yue:695
run_tests = function(filter) -- shunt/spec.yue:697
  if not (spec_fns ~= nil) then -- shunt/spec.yue:699
    return -- shunt/spec.yue:700
  end -- shunt/spec.yue:699
  for _index_0 = 1, #spec_fns do -- shunt/spec.yue:701
    local spec_fn = spec_fns[_index_0] -- shunt/spec.yue:701
    spec_fn() -- shunt/spec.yue:702
  end -- shunt/spec.yue:702
  testing = true -- shunt/spec.yue:704
  if root_spec ~= nil then -- shunt/spec.yue:705
    root_spec:test(filter) -- shunt/spec.yue:705
  end -- shunt/spec.yue:705
  testing = false -- shunt/spec.yue:706
  log(function() -- shunt/spec.yue:708
    return tostring(Test.num_run) .. " checks run" -- shunt/spec.yue:709
  end) -- shunt/spec.yue:708
  local ok = Test.num_failures == 0 -- shunt/spec.yue:710
  if not ok then -- shunt/spec.yue:711
    print(tostring(Test.num_failures) .. " checks failed!") -- shunt/spec.yue:712
  end -- shunt/spec.yue:711
  return ok -- shunt/spec.yue:713
end -- shunt/spec.yue:697
_module_0["run_tests"] = run_tests -- shunt/spec.yue:713
return _module_0 -- shunt/spec.yue:713
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
UNIMPLEMENTED = setmetatable({ }, { -- shunt/state.yue:7
  __call = function(...) end -- shunt/state.yue:7
}) -- shunt/state.yue:7
local StateMachineBuilder -- shunt/state.yue:9
do -- shunt/state.yue:9
  local _class_0 -- shunt/state.yue:9
  local _base_0 = { -- shunt/state.yue:9
    set_initial_state = F('(string) => Self', function(self, _initial_state_name) -- shunt/state.yue:18
      self._initial_state_name = _initial_state_name -- shunt/state.yue:18
      return self -- shunt/state.yue:18
    end), -- shunt/state.yue:20
    declare_endless = F('() => Self', function(self) -- shunt/state.yue:20
      self._endless = true -- shunt/state.yue:21
      return self -- shunt/state.yue:22
    end), -- shunt/state.yue:24
    set_reporter = F('((State, State) => <>) => Self', function(self, _reporter) -- shunt/state.yue:24
      self._reporter = _reporter -- shunt/state.yue:24
      return self -- shunt/state.yue:24
    end), -- shunt/state.yue:26
    add = F('(State) => Self', function(self, state) -- shunt/state.yue:26
      if (self._states[state._name] ~= nil) then -- shunt/state.yue:27
        error("cannot build state machine: state '" .. tostring(state._name) .. "' redefined") -- shunt/state.yue:28
      end -- shunt/state.yue:27
      self._states[state._name] = state -- shunt/state.yue:29
      return self -- shunt/state.yue:30
    end), -- shunt/state.yue:32
    build = F('() => StateMachine', function(self) -- shunt/state.yue:32
      do -- shunt/state.yue:33
        local err = self:validate() -- shunt/state.yue:33
        if err then -- shunt/state.yue:33
          error("cannot build state machine: " .. tostring(err)) -- shunt/state.yue:34
        end -- shunt/state.yue:33
      end -- shunt/state.yue:33
      return self:build_unchecked() -- shunt/state.yue:35
    end), -- shunt/state.yue:37
    validate = F('() => ?string', function(self) -- shunt/state.yue:37
      if not (self._initial_state_name ~= nil) then -- shunt/state.yue:38
        return 'initial state undefined' -- shunt/state.yue:39
      end -- shunt/state.yue:38
      if not (self._states[self._initial_state_name] ~= nil) then -- shunt/state.yue:40
        return "initial state '" .. tostring(self._initial_state_name) .. "' undefined" -- shunt/state.yue:41
      end -- shunt/state.yue:40
      if self._states[self._initial_state_name]._data_type ~= 'nil' then -- shunt/state.yue:42
        return 'initial state has data present' -- shunt/state.yue:43
      end -- shunt/state.yue:42
      if not self._endless then -- shunt/state.yue:44
        do -- shunt/state.yue:45
          local err = self:validate_end_states() -- shunt/state.yue:45
          if err then -- shunt/state.yue:45
            return err -- shunt/state.yue:46
          end -- shunt/state.yue:45
        end -- shunt/state.yue:45
      else -- shunt/state.yue:47
        do -- shunt/state.yue:47
          local err = self:validate_endless() -- shunt/state.yue:47
          if err then -- shunt/state.yue:47
            return err -- shunt/state.yue:48
          end -- shunt/state.yue:47
        end -- shunt/state.yue:47
      end -- shunt/state.yue:44
      do -- shunt/state.yue:49
        local err = self:validate_transitions() -- shunt/state.yue:49
        if err then -- shunt/state.yue:49
          return err -- shunt/state.yue:50
        end -- shunt/state.yue:49
      end -- shunt/state.yue:49
    end), -- shunt/state.yue:52
    validate_end_states = F('() => ?string', function(self) -- shunt/state.yue:52
      for _, state in pairs(self._states) do -- shunt/state.yue:53
        if state._is_end then -- shunt/state.yue:54
          return nil -- shunt/state.yue:55
        end -- shunt/state.yue:54
      end -- shunt/state.yue:55
      return "no end states declared" -- shunt/state.yue:56
    end), -- shunt/state.yue:58
    validate_endless = F('() => ?string', function(self) -- shunt/state.yue:58
      local dead_ends -- shunt/state.yue:59
      do -- shunt/state.yue:59
        local _with_0 = { } -- shunt/state.yue:59
        for _, state in pairs(self._states) do -- shunt/state.yue:60
          if #state._transition_list < 1 then -- shunt/state.yue:61
            _with_0[#_with_0 + 1] = state._name -- shunt/state.yue:62
          end -- shunt/state.yue:61
        end -- shunt/state.yue:62
        dead_ends = _with_0 -- shunt/state.yue:59
      end -- shunt/state.yue:59
      if #dead_ends > 0 then -- shunt/state.yue:63
        table.sort(dead_ends) -- shunt/state.yue:64
        return "the following states are dead ends: " .. tostring(table.concat(dead_ends, ', ')) -- shunt/state.yue:65
      end -- shunt/state.yue:63
      return nil -- shunt/state.yue:66
    end), -- shunt/state.yue:68
    validate_transitions = F('() => ?string', function(self) -- shunt/state.yue:68
      local seen = T('{string}', { }) -- shunt/state.yue:69
      local stack = T('[string]', { }) -- shunt/state.yue:70
      local dfs -- shunt/state.yue:71
      dfs = F('(string, {string->[string]}) -> <>', function(state_name, transitions) -- shunt/state.yue:72
        if seen[state_name] then -- shunt/state.yue:73
          return -- shunt/state.yue:74
        end -- shunt/state.yue:73
        seen[state_name] = true -- shunt/state.yue:75
        for _index_0 = 1, #stack do -- shunt/state.yue:77
          local name = stack[_index_0] -- shunt/state.yue:77
          if name == state_name then -- shunt/state.yue:78
            return -- shunt/state.yue:79
          end -- shunt/state.yue:78
        end -- shunt/state.yue:79
        stack[#stack + 1] = name -- shunt/state.yue:80
        local _list_0 = assert(transitions[state_name], "internal error: no transitions for " .. tostring(state_name)) -- shunt/state.yue:81
        for _index_0 = 1, #_list_0 do -- shunt/state.yue:81
          local neighbour = _list_0[_index_0] -- shunt/state.yue:81
          dfs(neighbour, transitions) -- shunt/state.yue:82
        end -- shunt/state.yue:82
        stack[#stack] = nil -- shunt/state.yue:83
      end) -- shunt/state.yue:72
      dfs(self._initial_state_name, (function() -- shunt/state.yue:85
        local _with_0 = { } -- shunt/state.yue:85
        for name, state in pairs(self._states) do -- shunt/state.yue:86
          do -- shunt/state.yue:87
            local _accum_0 = { } -- shunt/state.yue:87
            local _len_0 = 1 -- shunt/state.yue:87
            for state_name, _ in pairs(state._transitions) do -- shunt/state.yue:87
              _accum_0[_len_0] = state_name -- shunt/state.yue:87
              _len_0 = _len_0 + 1 -- shunt/state.yue:87
            end -- shunt/state.yue:87
            _with_0[name] = _accum_0 -- shunt/state.yue:87
          end -- shunt/state.yue:87
        end -- shunt/state.yue:87
        return _with_0 -- shunt/state.yue:85
      end)()) -- shunt/state.yue:85
      local non_reachable_from_start -- shunt/state.yue:89
      do -- shunt/state.yue:89
        local _with_0 = { } -- shunt/state.yue:89
        for state_name, _ in pairs(self._states) do -- shunt/state.yue:90
          if not seen[state_name] then -- shunt/state.yue:91
            _with_0[#_with_0 + 1] = state_name -- shunt/state.yue:92
          end -- shunt/state.yue:91
        end -- shunt/state.yue:92
        non_reachable_from_start = _with_0 -- shunt/state.yue:89
      end -- shunt/state.yue:89
      if #non_reachable_from_start > 0 then -- shunt/state.yue:93
        table.sort(non_reachable_from_start) -- shunt/state.yue:94
        return "the following states are not reachable from the start state: " .. tostring(table.concat(non_reachable_from_start, ', ')) -- shunt/state.yue:95
      end -- shunt/state.yue:93
      if not self._endless then -- shunt/state.yue:97
        seen = { } -- shunt/state.yue:98
        stack = { } -- shunt/state.yue:99
        local back_transitions -- shunt/state.yue:100
        do -- shunt/state.yue:100
          local _with_0 = { } -- shunt/state.yue:100
          for _, state in pairs(self._states) do -- shunt/state.yue:101
            _with_0[state._name] = { } -- shunt/state.yue:102
          end -- shunt/state.yue:102
          for _, state in pairs(self._states) do -- shunt/state.yue:103
            for neighbour, _ in pairs(state._transitions) do -- shunt/state.yue:104
              do -- shunt/state.yue:105
                local _obj_0 = _with_0[neighbour] -- shunt/state.yue:105
                _obj_0[#_obj_0 + 1] = state._name -- shunt/state.yue:105
              end -- shunt/state.yue:105
            end -- shunt/state.yue:105
          end -- shunt/state.yue:105
          back_transitions = _with_0 -- shunt/state.yue:100
        end -- shunt/state.yue:100
        local end_states -- shunt/state.yue:106
        do -- shunt/state.yue:106
          local _accum_0 = { } -- shunt/state.yue:106
          local _len_0 = 1 -- shunt/state.yue:106
          for _, state in pairs(self._states) do -- shunt/state.yue:106
            if state._is_end then -- shunt/state.yue:106
              _accum_0[_len_0] = state._name -- shunt/state.yue:106
              _len_0 = _len_0 + 1 -- shunt/state.yue:106
            end -- shunt/state.yue:106
          end -- shunt/state.yue:106
          end_states = _accum_0 -- shunt/state.yue:106
        end -- shunt/state.yue:106
        for _index_0 = 1, #end_states do -- shunt/state.yue:107
          local end_state = end_states[_index_0] -- shunt/state.yue:107
          dfs(end_state, back_transitions) -- shunt/state.yue:108
        end -- shunt/state.yue:108
        local non_reachable_from_end -- shunt/state.yue:110
        do -- shunt/state.yue:110
          local _with_0 = { } -- shunt/state.yue:110
          for state_name, _ in pairs(self._states) do -- shunt/state.yue:111
            if not seen[state_name] then -- shunt/state.yue:112
              _with_0[#_with_0 + 1] = state_name -- shunt/state.yue:113
            end -- shunt/state.yue:112
          end -- shunt/state.yue:113
          non_reachable_from_end = _with_0 -- shunt/state.yue:110
        end -- shunt/state.yue:110
        if #non_reachable_from_end > 0 then -- shunt/state.yue:114
          table.sort(non_reachable_from_end) -- shunt/state.yue:115
          return "the following states are not reachable from any end state: " .. tostring(table.concat(non_reachable_from_end, ', ')) -- shunt/state.yue:116
        end -- shunt/state.yue:114
      end -- shunt/state.yue:97
      return nil -- shunt/state.yue:118
    end), -- shunt/state.yue:120
    build_unchecked = F('() => StateMachine', function(self) -- shunt/state.yue:120
      local index -- shunt/state.yue:121
      do -- shunt/state.yue:121
        local _with_0 = { } -- shunt/state.yue:121
        local ended = false -- shunt/state.yue:122
        _with_0.name = self._name -- shunt/state.yue:124
        _with_0.states = setmetatable({ }, { -- shunt/state.yue:126
          __index = T('{string->string}', (function() -- shunt/state.yue:126
            local _with_1 = setmetatable({ }, { }) -- shunt/state.yue:126
            for state_name, _ in pairs(self._states) do -- shunt/state.yue:127
              _with_1[state_name] = state_name -- shunt/state.yue:128
            end -- shunt/state.yue:128
            getmetatable(_with_1).__index = function(self, key) -- shunt/state.yue:129
              return error("cannot get state '" .. tostring(key) .. "': no such state") -- shunt/state.yue:130
            end -- shunt/state.yue:129
            return _with_1 -- shunt/state.yue:126
          end)()), -- shunt/state.yue:126
          __newindex = function(self, _, _) -- shunt/state.yue:131
            return error("cannot set fields in states") -- shunt/state.yue:132
          end -- shunt/state.yue:131
        }) -- shunt/state.yue:125
        _with_0.state = make_state(self._initial_state_name, 'nil', nil) -- shunt/state.yue:134
        local states = self._states -- shunt/state.yue:136
        local reporter = self._reporter -- shunt/state.yue:138
        _with_0["goto"] = F('(string, any) => <>', function(self, name, data) -- shunt/state.yue:139
          if ended then -- shunt/state.yue:140
            error("internal error: cannot transition ended state machine") -- shunt/state.yue:141
          end -- shunt/state.yue:140
          if not (function() -- shunt/state.yue:142
            local _obj_0 = states[self.state.name] -- shunt/state.yue:142
            if _obj_0 ~= nil then -- shunt/state.yue:142
              return _obj_0._transitions[name] -- shunt/state.yue:142
            end -- shunt/state.yue:142
            return nil -- shunt/state.yue:142
          end)() then -- shunt/state.yue:142
            error(tostring(self.name) .. ": no such transition: " .. tostring(self.state.name) .. " -> " .. tostring(name)) -- shunt/state.yue:143
          end -- shunt/state.yue:142
          local new_state_spec = states[name] -- shunt/state.yue:144
          if not (new_state_spec ~= nil) then -- shunt/state.yue:145
            error("internal error: no such state '" .. tostring(name) .. "'") -- shunt/state.yue:146
          end -- shunt/state.yue:145
          local prev_state = _with_0.state -- shunt/state.yue:147
          _with_0.state = make_state(name, new_state_spec._data_type, data) -- shunt/state.yue:148
          if (reporter ~= nil) then -- shunt/state.yue:149
            return reporter(self, prev_state, _with_0.state) -- shunt/state.yue:150
          end -- shunt/state.yue:149
        end) -- shunt/state.yue:139
        _with_0.recover_to = F('(string, any) => <>', function(self, name, data) -- shunt/state.yue:152
          ended = false -- shunt/state.yue:153
          local new_state_spec = states[name] -- shunt/state.yue:154
          if not (new_state_spec ~= nil) then -- shunt/state.yue:155
            error("internal error: no such state '" .. tostring(name) .. "'") -- shunt/state.yue:156
          end -- shunt/state.yue:155
          _with_0.state = make_state(name, new_state_spec._data_type, data) -- shunt/state.yue:157
        end) -- shunt/state.yue:152
        local end_states -- shunt/state.yue:159
        do -- shunt/state.yue:159
          local _tbl_0 = { } -- shunt/state.yue:159
          for _, state in pairs(self._states) do -- shunt/state.yue:159
            if state._is_end then -- shunt/state.yue:159
              _tbl_0[state._name] = true -- shunt/state.yue:159
            end -- shunt/state.yue:159
          end -- shunt/state.yue:159
          end_states = _tbl_0 -- shunt/state.yue:159
        end -- shunt/state.yue:159
        _with_0["end"] = F('() => <>', function(self) -- shunt/state.yue:160
          if ended then -- shunt/state.yue:161
            error("internal error: cannot end state machine twice") -- shunt/state.yue:162
          end -- shunt/state.yue:161
          if not end_states[self.state.name] then -- shunt/state.yue:163
            error("internal error: state " .. tostring(self.state.name) .. " is not a valid end state") -- shunt/state.yue:164
          end -- shunt/state.yue:163
          ended = true -- shunt/state.yue:165
        end) -- shunt/state.yue:160
        local initial_state_name = self._initial_state_name -- shunt/state.yue:167
        _with_0.to_graphviz = F('() => string', function(self) -- shunt/state.yue:168
          local lines -- shunt/state.yue:169
          do -- shunt/state.yue:169
            local _with_1 = { } -- shunt/state.yue:169
            _with_1[#_with_1 + 1] = 'digraph {' -- shunt/state.yue:170
            _with_1[#_with_1 + 1] = '  bgcolor = black' -- shunt/state.yue:171
            _with_1[#_with_1 + 1] = '  color = white' -- shunt/state.yue:172
            _with_1[#_with_1 + 1] = "  label = \"" .. tostring(self.name) .. "\"" -- shunt/state.yue:173
            _with_1[#_with_1 + 1] = '  graph [' -- shunt/state.yue:174
            _with_1[#_with_1 + 1] = '    fontname = "NewCenturySchlbk-Roman"' -- shunt/state.yue:175
            _with_1[#_with_1 + 1] = '  ]' -- shunt/state.yue:176
            _with_1[#_with_1 + 1] = '  node [' -- shunt/state.yue:177
            _with_1[#_with_1 + 1] = '    color = white' -- shunt/state.yue:178
            _with_1[#_with_1 + 1] = '    fontcolor = white' -- shunt/state.yue:179
            _with_1[#_with_1 + 1] = '    fillcolor = white' -- shunt/state.yue:180
            _with_1[#_with_1 + 1] = '    shape = plaintext' -- shunt/state.yue:181
            _with_1[#_with_1 + 1] = '    fontname = "NewCenturySchlbk-Roman"' -- shunt/state.yue:182
            _with_1[#_with_1 + 1] = '  ]' -- shunt/state.yue:183
            _with_1[#_with_1 + 1] = '  edge [' -- shunt/state.yue:184
            _with_1[#_with_1 + 1] = '    color = white' -- shunt/state.yue:185
            _with_1[#_with_1 + 1] = '    fontcolor = white' -- shunt/state.yue:186
            _with_1[#_with_1 + 1] = '    fontname = "NewCenturySchlbk-Roman"' -- shunt/state.yue:187
            _with_1[#_with_1 + 1] = '  ]' -- shunt/state.yue:188
            _with_1[#_with_1 + 1] = '  levels=1' -- shunt/state.yue:189
            _with_1[#_with_1 + 1] = "  __init[shape=point]" -- shunt/state.yue:191
            _with_1[#_with_1 + 1] = "  __init -> " .. tostring(initial_state_name) -- shunt/state.yue:192
            local state_list -- shunt/state.yue:194
            do -- shunt/state.yue:194
              local _accum_0 = { } -- shunt/state.yue:194
              local _len_0 = 1 -- shunt/state.yue:194
              for state_name, state in pairs(states) do -- shunt/state.yue:194
                _accum_0[_len_0] = { -- shunt/state.yue:194
                  state_name = state_name, -- shunt/state.yue:194
                  state = state -- shunt/state.yue:194
                } -- shunt/state.yue:194
                _len_0 = _len_0 + 1 -- shunt/state.yue:194
              end -- shunt/state.yue:194
              state_list = _accum_0 -- shunt/state.yue:194
            end -- shunt/state.yue:194
            table.sort(state_list, function(a, b) -- shunt/state.yue:195
              return a.state_name < b.state_name -- shunt/state.yue:195
            end) -- shunt/state.yue:195
            for _index_0 = 1, #state_list do -- shunt/state.yue:196
              local _des_0 = state_list[_index_0] -- shunt/state.yue:196
              local state_name, state = _des_0.state_name, _des_0.state -- shunt/state.yue:196
              _with_1[#_with_1 + 1] = '' -- shunt/state.yue:197
              local fontname_override = '' -- shunt/state.yue:198
              if state._is_end then -- shunt/state.yue:199
                fontname_override = "fontname=\"NewCenturySchlbk-Italic\"" -- shunt/state.yue:200
              end -- shunt/state.yue:199
              _with_1[#_with_1 + 1] = "  " .. tostring(state_name) .. "[" .. tostring(fontname_override) .. "]" -- shunt/state.yue:201
              local num_transitions = #state._transition_list -- shunt/state.yue:203
              for i = 1, num_transitions do -- shunt/state.yue:204
                local other_state = state._transition_list[i] -- shunt/state.yue:205
                _with_1[#_with_1 + 1] = "  " .. tostring(state_name) .. " -> " .. tostring(other_state) .. "[weight=" .. tostring(1 + num_transitions - i) .. "]" -- shunt/state.yue:206
              end -- shunt/state.yue:206
            end -- shunt/state.yue:206
            _with_1[#_with_1 + 1] = '}' -- shunt/state.yue:208
            lines = _with_1 -- shunt/state.yue:169
          end -- shunt/state.yue:169
          return table.concat(lines, '\n') -- shunt/state.yue:209
        end) -- shunt/state.yue:168
        _with_0.to_mermaid = F('() => string', function(self) -- shunt/state.yue:211
          local lines -- shunt/state.yue:212
          do -- shunt/state.yue:212
            local _with_1 = { } -- shunt/state.yue:212
            _with_1[#_with_1 + 1] = 'stateDiagram' -- shunt/state.yue:213
            _with_1[#_with_1 + 1] = "  [*] --> " .. tostring(initial_state_name) -- shunt/state.yue:214
            local state_list -- shunt/state.yue:215
            do -- shunt/state.yue:215
              local _accum_0 = { } -- shunt/state.yue:215
              local _len_0 = 1 -- shunt/state.yue:215
              for state_name, state in pairs(states) do -- shunt/state.yue:215
                _accum_0[_len_0] = { -- shunt/state.yue:215
                  state_name = state_name, -- shunt/state.yue:215
                  state = state -- shunt/state.yue:215
                } -- shunt/state.yue:215
                _len_0 = _len_0 + 1 -- shunt/state.yue:215
              end -- shunt/state.yue:215
              state_list = _accum_0 -- shunt/state.yue:215
            end -- shunt/state.yue:215
            table.sort(state_list, function(a, b) -- shunt/state.yue:216
              return a.state_name < b.state_name -- shunt/state.yue:216
            end) -- shunt/state.yue:216
            for _index_0 = 1, #state_list do -- shunt/state.yue:217
              local _des_0 = state_list[_index_0] -- shunt/state.yue:217
              local state_name, state = _des_0.state_name, _des_0.state -- shunt/state.yue:217
              _with_1[#_with_1 + 1] = "  " .. tostring(state_name) -- shunt/state.yue:218
              if state._is_end then -- shunt/state.yue:219
                _with_1[#_with_1 + 1] = "  " .. tostring(state_name) .. " --> [*]" -- shunt/state.yue:220
              end -- shunt/state.yue:219
              local neighbours -- shunt/state.yue:222
              do -- shunt/state.yue:222
                local _accum_0 = { } -- shunt/state.yue:222
                local _len_0 = 1 -- shunt/state.yue:222
                for other_state in pairs(state._transitions) do -- shunt/state.yue:222
                  _accum_0[_len_0] = other_state -- shunt/state.yue:222
                  _len_0 = _len_0 + 1 -- shunt/state.yue:222
                end -- shunt/state.yue:222
                neighbours = _accum_0 -- shunt/state.yue:222
              end -- shunt/state.yue:222
              table.sort(neighbours) -- shunt/state.yue:223
              for _index_1 = 1, #neighbours do -- shunt/state.yue:224
                local neighbour = neighbours[_index_1] -- shunt/state.yue:224
                _with_1[#_with_1 + 1] = "  " .. tostring(state_name) .. " --> " .. tostring(neighbour) -- shunt/state.yue:225
              end -- shunt/state.yue:225
            end -- shunt/state.yue:225
            lines = _with_1 -- shunt/state.yue:212
          end -- shunt/state.yue:212
          return table.concat(lines, '\n') -- shunt/state.yue:227
        end) -- shunt/state.yue:211
        index = _with_0 -- shunt/state.yue:121
      end -- shunt/state.yue:121
      return T('StateMachine', setmetatable({ }, { -- shunt/state.yue:230
        __index = index, -- shunt/state.yue:230
        __newindex = function(self, key, v) -- shunt/state.yue:231
          return error("cannot add field '" .. tostring(key) .. "' to state machine") -- shunt/state.yue:232
        end -- shunt/state.yue:231
      })) -- shunt/state.yue:232
    end) -- shunt/state.yue:9
  } -- shunt/state.yue:9
  if _base_0.__index == nil then -- shunt/state.yue:9
    _base_0.__index = _base_0 -- shunt/state.yue:9
  end -- shunt/state.yue:232
  _class_0 = setmetatable({ -- shunt/state.yue:9
    __init = F('(string) => <>', function(self, _name) -- shunt/state.yue:10
      self._name = _name -- shunt/state.yue:10
      if not valid_ident(self._name) then -- shunt/state.yue:11
        error("cannot build state machine: name '" .. tostring(self._name) .. "' not a valid identifier") -- shunt/state.yue:12
      end -- shunt/state.yue:11
      self._states = T('{string -> table}', { }) -- shunt/state.yue:13
      self._initial_state_name = T('?string', nil) -- shunt/state.yue:14
      self._reporter = T('?(State, State) => <>', nil) -- shunt/state.yue:15
      self._endless = T('boolean', false) -- shunt/state.yue:16
    end), -- shunt/state.yue:9
    __base = _base_0, -- shunt/state.yue:9
    __name = "StateMachineBuilder" -- shunt/state.yue:9
  }, { -- shunt/state.yue:9
    __index = _base_0, -- shunt/state.yue:9
    __call = function(cls, ...) -- shunt/state.yue:9
      local _self_0 = setmetatable({ }, _base_0) -- shunt/state.yue:9
      cls.__init(_self_0, ...) -- shunt/state.yue:9
      return _self_0 -- shunt/state.yue:9
    end -- shunt/state.yue:9
  }) -- shunt/state.yue:9
  _base_0.__class = _class_0 -- shunt/state.yue:9
  StateMachineBuilder = _class_0 -- shunt/state.yue:9
end -- shunt/state.yue:232
_module_0["StateMachineBuilder"] = StateMachineBuilder -- shunt/state.yue:9
make_state = F('(string, string, any) -> {}', function(name, data_type, data) -- shunt/state.yue:234
  T(data_type, data) -- shunt/state.yue:235
  local _with_0 = setmetatable({ -- shunt/state.yue:236
    name = name, -- shunt/state.yue:236
  }, { }) -- shunt/state.yue:236
  if 'table' == type(data) then -- shunt/state.yue:237
    getmetatable(_with_0).__index = data -- shunt/state.yue:238
  else -- shunt/state.yue:240
    getmetatable(_with_0).__index = { -- shunt/state.yue:240
      value = data -- shunt/state.yue:240
    } -- shunt/state.yue:240
  end -- shunt/state.yue:237
  getmetatable(_with_0).__newindex = function(self, key) -- shunt/state.yue:241
    local key_repr -- shunt/state.yue:242
    if 'string' == type(key) then -- shunt/state.yue:243
      key_repr = "." .. tostring(key) -- shunt/state.yue:244
    else -- shunt/state.yue:246
      key_repr = "[" .. tostring(key) .. "]" -- shunt/state.yue:246
    end -- shunt/state.yue:243
    return error("cannot directly assign state fields") -- shunt/state.yue:247
  end -- shunt/state.yue:241
  return _with_0 -- shunt/state.yue:236
end) -- shunt/state.yue:234
declare_type('State', [[{
  _is_end: boolean,
  _transitions: {string},
  _data_type: ?string,
}]]) -- shunt/state.yue:249
local State -- shunt/state.yue:254
do -- shunt/state.yue:254
  local _class_0 -- shunt/state.yue:254
  local _base_0 = { -- shunt/state.yue:254
    add_transition_to = F('(string) => Self', function(self, name) -- shunt/state.yue:265
      if not valid_ident(name) then -- shunt/state.yue:266
        error("cannot build state machine: state name '" .. tostring(name) .. "' not a valid identifier") -- shunt/state.yue:267
      end -- shunt/state.yue:266
      if (self._transitions[name] ~= nil) then -- shunt/state.yue:268
        error("cannot build state machine: transition " .. tostring(self._name) .. "->" .. tostring(name) .. " redefined") -- shunt/state.yue:269
      end -- shunt/state.yue:268
      self._transitions[name] = true -- shunt/state.yue:270
      do -- shunt/state.yue:271
        local _obj_0 = self._transition_list -- shunt/state.yue:271
        _obj_0[#_obj_0 + 1] = name -- shunt/state.yue:271
      end -- shunt/state.yue:271
      return self -- shunt/state.yue:272
    end), -- shunt/state.yue:274
    declare_end_state = F('() => Self', function(self) -- shunt/state.yue:274
      self._is_end = true -- shunt/state.yue:275
      return self -- shunt/state.yue:276
    end), -- shunt/state.yue:278
    set_data_type = F('(string) => Self', function(self, data_type) -- shunt/state.yue:278
      if self._data_type_set then -- shunt/state.yue:279
        error("cannot build state machine: data type for state " .. tostring(self._name) .. " already set") -- shunt/state.yue:280
      end -- shunt/state.yue:279
      self._data_type_set = true -- shunt/state.yue:281
      self._data_type = data_type -- shunt/state.yue:282
      return self -- shunt/state.yue:283
    end) -- shunt/state.yue:254
  } -- shunt/state.yue:254
  if _base_0.__index == nil then -- shunt/state.yue:254
    _base_0.__index = _base_0 -- shunt/state.yue:254
  end -- shunt/state.yue:283
  _class_0 = setmetatable({ -- shunt/state.yue:254
    __init = F('(string) => <>', function(self, _name) -- shunt/state.yue:255
      self._name = _name -- shunt/state.yue:255
      if not valid_ident(self._name) then -- shunt/state.yue:256
        error("cannot build state machine: state name '" .. tostring(self._name) .. "' not a valid identifier") -- shunt/state.yue:257
      end -- shunt/state.yue:256
      self._transitions = T('{string}', { }) -- shunt/state.yue:259
      self._transition_list = T('[string]', { }) -- shunt/state.yue:260
      self._data_type = T('string', 'nil') -- shunt/state.yue:261
      self._data_type_set = T('boolean', false) -- shunt/state.yue:262
      self._is_end = T('boolean', false) -- shunt/state.yue:263
    end), -- shunt/state.yue:254
    __base = _base_0, -- shunt/state.yue:254
    __name = "State" -- shunt/state.yue:254
  }, { -- shunt/state.yue:254
    __index = _base_0, -- shunt/state.yue:254
    __call = function(cls, ...) -- shunt/state.yue:254
      local _self_0 = setmetatable({ }, _base_0) -- shunt/state.yue:254
      cls.__init(_self_0, ...) -- shunt/state.yue:254
      return _self_0 -- shunt/state.yue:254
    end -- shunt/state.yue:254
  }) -- shunt/state.yue:254
  _base_0.__class = _class_0 -- shunt/state.yue:254
  State = _class_0 -- shunt/state.yue:254
end -- shunt/state.yue:283
_module_0["State"] = State -- shunt/state.yue:254
declare_type('StateMachine', [[{
  state: {name: string},
  goto: (string, ?{string -> any}) => <>,
}]]) -- shunt/state.yue:285
valid_ident = F('(string) -> boolean', function(name) -- shunt/state.yue:290
  return ((name:match('^[a-z][a-z0-9_]+[a-z0-9]$')) ~= nil) -- shunt/state.yue:291
end) -- shunt/state.yue:290
declare_type('StateResponses', '{string->()-><>}') -- shunt/state.yue:293
local StateResponsesBuilder -- shunt/state.yue:294
do -- shunt/state.yue:294
  local _class_0 -- shunt/state.yue:294
  local _base_0 = { -- shunt/state.yue:294
    add = F('(string, () -> <>) => Self', function(self, state, response) -- shunt/state.yue:298
      if not ((rawget(getmetatable(self.sm.states).__index, state)) ~= nil) then -- shunt/state.yue:299
        error("cannot add response to " .. tostring(self.sm.name) .. ": no such state '" .. tostring(state) .. "'") -- shunt/state.yue:300
      end -- shunt/state.yue:299
      if (self.responses[state] ~= nil) then -- shunt/state.yue:301
        error("cannot add response to " .. tostring(self.sm.name) .. ": response for '" .. tostring(state) .. "' already defined") -- shunt/state.yue:302
      end -- shunt/state.yue:301
      self.responses[state] = response -- shunt/state.yue:303
      return self -- shunt/state.yue:304
    end), -- shunt/state.yue:306
    build = F('() => StateResponses', function(self) -- shunt/state.yue:306
      local uncovered_states -- shunt/state.yue:307
      do -- shunt/state.yue:307
        local _with_0 = { } -- shunt/state.yue:307
        for state_name in pairs(getmetatable(self.sm.states).__index) do -- shunt/state.yue:308
          if not (self.responses[state_name] ~= nil) then -- shunt/state.yue:309
            _with_0[#_with_0 + 1] = state_name -- shunt/state.yue:310
          end -- shunt/state.yue:309
        end -- shunt/state.yue:310
        uncovered_states = _with_0 -- shunt/state.yue:307
      end -- shunt/state.yue:307
      if #uncovered_states > 0 then -- shunt/state.yue:311
        table.sort(uncovered_states) -- shunt/state.yue:312
        error("cannot build state responses: the following states have no response: " .. tostring(table.concat(uncovered_states, ', '))) -- shunt/state.yue:313
      end -- shunt/state.yue:311
      return self.responses -- shunt/state.yue:315
    end) -- shunt/state.yue:294
  } -- shunt/state.yue:294
  if _base_0.__index == nil then -- shunt/state.yue:294
    _base_0.__index = _base_0 -- shunt/state.yue:294
  end -- shunt/state.yue:315
  _class_0 = setmetatable({ -- shunt/state.yue:294
    __init = F('(StateMachine) => <>', function(self, sm) -- shunt/state.yue:295
      self.sm = sm -- shunt/state.yue:295
      self.responses = T('{string->()-><>}', { }) -- shunt/state.yue:296
    end), -- shunt/state.yue:294
    __base = _base_0, -- shunt/state.yue:294
    __name = "StateResponsesBuilder" -- shunt/state.yue:294
  }, { -- shunt/state.yue:294
    __index = _base_0, -- shunt/state.yue:294
    __call = function(cls, ...) -- shunt/state.yue:294
      local _self_0 = setmetatable({ }, _base_0) -- shunt/state.yue:294
      cls.__init(_self_0, ...) -- shunt/state.yue:294
      return _self_0 -- shunt/state.yue:294
    end -- shunt/state.yue:294
  }) -- shunt/state.yue:294
  _base_0.__class = _class_0 -- shunt/state.yue:294
  StateResponsesBuilder = _class_0 -- shunt/state.yue:294
end -- shunt/state.yue:315
_module_0["StateResponsesBuilder"] = StateResponsesBuilder -- shunt/state.yue:294
shallow_log_reporter = function(self, prev_state, state) -- shunt/state.yue:317
  return log(function() -- shunt/state.yue:318
    local fragments -- shunt/state.yue:319
    do -- shunt/state.yue:319
      local _with_0 = { } -- shunt/state.yue:319
      _with_0[#_with_0 + 1] = '$ ' -- shunt/state.yue:320
      _with_0[#_with_0 + 1] = self.name -- shunt/state.yue:321
      _with_0[#_with_0 + 1] = ':' -- shunt/state.yue:322
      _with_0[#_with_0 + 1] = prev_state.name -- shunt/state.yue:323
      _with_0[#_with_0 + 1] = '->' -- shunt/state.yue:324
      _with_0[#_with_0 + 1] = state.name -- shunt/state.yue:325
      local level_1_fields -- shunt/state.yue:326
      do -- shunt/state.yue:326
        local _accum_0 = { } -- shunt/state.yue:326
        local _len_0 = 1 -- shunt/state.yue:326
        for key, value in pairs(getmetatable(state).__index) do -- shunt/state.yue:326
          _accum_0[_len_0] = { -- shunt/state.yue:326
            key = key, -- shunt/state.yue:326
            value = value -- shunt/state.yue:326
          } -- shunt/state.yue:326
          _len_0 = _len_0 + 1 -- shunt/state.yue:326
        end -- shunt/state.yue:326
        level_1_fields = _accum_0 -- shunt/state.yue:326
      end -- shunt/state.yue:326
      table.sort(level_1_fields, function(a, b) -- shunt/state.yue:327
        return a.key < b.key -- shunt/state.yue:327
      end) -- shunt/state.yue:327
      for _index_0 = 1, #level_1_fields do -- shunt/state.yue:328
        local _des_0 = level_1_fields[_index_0] -- shunt/state.yue:328
        local key, value = _des_0.key, _des_0.value -- shunt/state.yue:328
        _with_0[#_with_0 + 1] = '\n    ' -- shunt/state.yue:329
        _with_0[#_with_0 + 1] = key -- shunt/state.yue:330
        _with_0[#_with_0 + 1] = ': ' -- shunt/state.yue:331
        local value_type = type(value) -- shunt/state.yue:332
        if 'function' == value_type or 'thread' == value_type or 'table' == value_type then -- shunt/state.yue:334
          _with_0[#_with_0 + 1] = '(' -- shunt/state.yue:335
          _with_0[#_with_0 + 1] = tostring(value) -- shunt/state.yue:336
          _with_0[#_with_0 + 1] = ')' -- shunt/state.yue:337
        elseif 'string' == value_type then -- shunt/state.yue:338
          _with_0[#_with_0 + 1] = '`' -- shunt/state.yue:339
          _with_0[#_with_0 + 1] = tostring(value) -- shunt/state.yue:340
          _with_0[#_with_0 + 1] = '\'' -- shunt/state.yue:341
        else -- shunt/state.yue:343
          _with_0[#_with_0 + 1] = tostring(value) -- shunt/state.yue:343
        end -- shunt/state.yue:343
        if value_type == 'table' then -- shunt/state.yue:344
          local level_2_fields -- shunt/state.yue:345
          do -- shunt/state.yue:345
            local _accum_0 = { } -- shunt/state.yue:345
            local _len_0 = 1 -- shunt/state.yue:345
            for key2, value2 in pairs(value) do -- shunt/state.yue:345
              _accum_0[_len_0] = { -- shunt/state.yue:345
                key2 = key2, -- shunt/state.yue:345
                value2 = value2 -- shunt/state.yue:345
              } -- shunt/state.yue:345
              _len_0 = _len_0 + 1 -- shunt/state.yue:345
            end -- shunt/state.yue:345
            level_2_fields = _accum_0 -- shunt/state.yue:345
          end -- shunt/state.yue:345
          table.sort(level_2_fields, function(a, b) -- shunt/state.yue:346
            return a.key2 < b.key2 -- shunt/state.yue:346
          end) -- shunt/state.yue:346
          for _index_1 = 1, #level_2_fields do -- shunt/state.yue:347
            local _des_1 = level_2_fields[_index_1] -- shunt/state.yue:347
            local key2, value2 = _des_1.key2, _des_1.value2 -- shunt/state.yue:347
            _with_0[#_with_0 + 1] = '\n      ' -- shunt/state.yue:348
            _with_0[#_with_0 + 1] = key2 -- shunt/state.yue:349
            _with_0[#_with_0 + 1] = ': ' -- shunt/state.yue:350
            do -- shunt/state.yue:351
              local _exp_0 = type(value2) -- shunt/state.yue:351
              if 'function' == _exp_0 or 'thread' == _exp_0 or 'table' == _exp_0 then -- shunt/state.yue:352
                _with_0[#_with_0 + 1] = '(' -- shunt/state.yue:353
                _with_0[#_with_0 + 1] = tostring(value2) -- shunt/state.yue:354
                _with_0[#_with_0 + 1] = ')' -- shunt/state.yue:355
              elseif 'string' == _exp_0 then -- shunt/state.yue:356
                _with_0[#_with_0 + 1] = '`' -- shunt/state.yue:357
                _with_0[#_with_0 + 1] = tostring(value2) -- shunt/state.yue:358
                _with_0[#_with_0 + 1] = '\'' -- shunt/state.yue:359
              else -- shunt/state.yue:361
                _with_0[#_with_0 + 1] = tostring(value2) -- shunt/state.yue:361
              end -- shunt/state.yue:361
            end -- shunt/state.yue:361
          end -- shunt/state.yue:361
        end -- shunt/state.yue:344
      end -- shunt/state.yue:361
      fragments = _with_0 -- shunt/state.yue:319
    end -- shunt/state.yue:319
    return table.concat(fragments) -- shunt/state.yue:362
  end) -- shunt/state.yue:362
end -- shunt/state.yue:317
_module_0["shallow_log_reporter"] = shallow_log_reporter -- shunt/state.yue:362
spec(function() -- shunt/state.yue:364
  local describe, it, matchers -- shunt/state.yue:0
  do -- shunt/state.yue:0
    local _obj_0 = require('shunt.spec') -- shunt/state.yue:0
    describe, it, matchers = _obj_0.describe, _obj_0.it, _obj_0.matchers -- shunt/state.yue:0
  end -- shunt/state.yue:0
  local anything, deep_eq, eq, errors, has_fields, len, matches, no_errors = matchers.anything, matchers.deep_eq, matchers.eq, matchers.errors, matchers.has_fields, matchers.len, matchers.matches, matchers.no_errors -- shunt/state.yue:369
  describe('StateMachineBuilder', function() -- shunt/state.yue:371
    it('exposes its name', function() -- shunt/state.yue:372
      local EXPECTED = 'some_name' -- shunt/state.yue:373
      local sm = (StateMachineBuilder(EXPECTED)):set_initial_state('q_0'):add((State('q_0')):declare_end_state()):build(); -- shunt/state.yue:374
      return require('shunt.spec')._expect_that([=[sm.name]=], sm.name, (eq(EXPECTED)), tostring("shunt/state.yue") .. ":" .. tostring(379)) -- shunt/state.yue:379
    end) -- shunt/state.yue:372
    it('rejects invalid state names', function() -- shunt/state.yue:381
      return require('shunt.spec')._expect_that([=[(-> StateMachineBuilder 'invalid-ident')]=], (function() -- shunt/state.yue:382
        return StateMachineBuilder('invalid-ident') -- shunt/state.yue:382
      end), (errors(matches("cannot build state machine: name 'invalid%-ident' not a valid identifier"))), tostring("shunt/state.yue") .. ":" .. tostring(382)) -- shunt/state.yue:382
    end) -- shunt/state.yue:381
    it('requires initial state', function() -- shunt/state.yue:384
      return require('shunt.spec')._expect_that([=[(-> (StateMachineBuilder 'test_sm')\build!)]=], (function() -- shunt/state.yue:385
        return (StateMachineBuilder('test_sm')):build() -- shunt/state.yue:385
      end), (errors(matches("cannot build state machine: initial state undefined"))), tostring("shunt/state.yue") .. ":" .. tostring(385)) -- shunt/state.yue:385
    end) -- shunt/state.yue:384
    it('rejects invalid initial state', function() -- shunt/state.yue:387
      return require('shunt.spec')._expect_that([=[(-> (StateMachineBuilder 'test_sm')\set_initial_state('phantom')\build!)]=], (function() -- shunt/state.yue:388
        return (StateMachineBuilder('test_sm')):set_initial_state('phantom'):build() -- shunt/state.yue:388
      end), (errors(matches("cannot build state machine: initial state 'phantom' undefined"))), tostring("shunt/state.yue") .. ":" .. tostring(388)) -- shunt/state.yue:388
    end) -- shunt/state.yue:387
    it('rejects duplicate state names', function() -- shunt/state.yue:390
      return require('shunt.spec')._expect_that([=[(-> (StateMachineBuilder 'test_sm')
        \set_initial_state 'waiting'
        \add State 'waiting'
        \add State 'waiting'
        \build!)]=], (function() -- shunt/state.yue:391
        return (StateMachineBuilder('test_sm')):set_initial_state('waiting'):add(State('waiting')):add(State('waiting')):build() -- shunt/state.yue:391
      end), (errors(matches("cannot build state machine: state 'waiting' redefined"))), tostring("shunt/state.yue") .. ":" .. tostring(391)) -- shunt/state.yue:395
    end) -- shunt/state.yue:390
    it('rejects repeated \\set_data_type calls', function() -- shunt/state.yue:397
      return require('shunt.spec')._expect_that([=[(-> (StateMachineBuilder 'test_sm')
        \set_initial_state 'waiting'
        \add (State 'waiting')
          \set_data_type 'string'
          \set_data_type 'number'
        \build!)]=], (function() -- shunt/state.yue:398
        return (StateMachineBuilder('test_sm')):set_initial_state('waiting'):add((State('waiting')):set_data_type('string'):set_data_type('number')):build() -- shunt/state.yue:398
      end), (errors(matches("cannot build state machine: data type for state waiting already set"))), tostring("shunt/state.yue") .. ":" .. tostring(398)) -- shunt/state.yue:403
    end) -- shunt/state.yue:397
    it('rejects invalid state names', function() -- shunt/state.yue:405
      return require('shunt.spec')._expect_that([=[(-> (StateMachineBuilder 'test_sm')
        \set_initial_state '-invalid'
        \add State '-invalid'
        \build!)]=], (function() -- shunt/state.yue:406
        return (StateMachineBuilder('test_sm')):set_initial_state('-invalid'):add(State('-invalid')):build() -- shunt/state.yue:406
      end), (errors(matches("cannot build state machine: state name '%-invalid' not a valid identifier"))), tostring("shunt/state.yue") .. ":" .. tostring(406)) -- shunt/state.yue:409
    end) -- shunt/state.yue:405
    it('formats itself as graphviz', function() -- shunt/state.yue:411
      local graphviz_repr = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):declare_end_state():add_transition_to('state_2')):add((State('state_2')):add_transition_to('state_1'):set_data_type([[{
            hello: string,
            world: number,
          }]])):build():to_graphviz() -- shunt/state.yue:412
      local expected_lines = { -- shunt/state.yue:426
        'digraph {', -- shunt/state.yue:426
        '  bgcolor = black', -- shunt/state.yue:427
        '  color = white', -- shunt/state.yue:428
        '  label = "test_sm"', -- shunt/state.yue:429
        '  graph [', -- shunt/state.yue:430
        '    fontname = "NewCenturySchlbk-Roman"', -- shunt/state.yue:431
        '  ]', -- shunt/state.yue:432
        '  node [', -- shunt/state.yue:433
        '    color = white', -- shunt/state.yue:434
        '    fontcolor = white', -- shunt/state.yue:435
        '    fillcolor = white', -- shunt/state.yue:436
        '    shape = plaintext', -- shunt/state.yue:437
        '    fontname = "NewCenturySchlbk-Roman"', -- shunt/state.yue:438
        '  ]', -- shunt/state.yue:439
        '  edge [', -- shunt/state.yue:440
        '    color = white', -- shunt/state.yue:441
        '    fontcolor = white', -- shunt/state.yue:442
        '    fontname = "NewCenturySchlbk-Roman"', -- shunt/state.yue:443
        '  ]', -- shunt/state.yue:444
        '  levels=1', -- shunt/state.yue:445
        '  __init[shape=point]', -- shunt/state.yue:446
        '  __init -> state_1', -- shunt/state.yue:447
        '', -- shunt/state.yue:448
        '  state_1[fontname="NewCenturySchlbk-Italic"]', -- shunt/state.yue:449
        '  state_1 -> state_2[weight=1]', -- shunt/state.yue:450
        '', -- shunt/state.yue:451
        '  state_2[]', -- shunt/state.yue:452
        '  state_2 -> state_1[weight=1]', -- shunt/state.yue:453
        '}' -- shunt/state.yue:454
      } -- shunt/state.yue:425
      local expected_repr = table.concat(expected_lines, '\n'); -- shunt/state.yue:455
      return require('shunt.spec')._expect_that([=[graphviz_repr]=], graphviz_repr, (eq(expected_repr)), tostring("shunt/state.yue") .. ":" .. tostring(456)) -- shunt/state.yue:456
    end) -- shunt/state.yue:411
    it('formats itself as mermaid', function() -- shunt/state.yue:458
      local mermaid_repr = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):declare_end_state():add_transition_to('state_2')):add((State('state_2')):add_transition_to('state_1'):set_data_type([[{
            hello: string,
            world: number,
          }]])):build():to_mermaid() -- shunt/state.yue:459
      local expected_lines = { -- shunt/state.yue:473
        'stateDiagram', -- shunt/state.yue:473
        '  [*] --> state_1', -- shunt/state.yue:474
        '  state_1', -- shunt/state.yue:475
        '  state_1 --> [*]', -- shunt/state.yue:476
        '  state_1 --> state_2', -- shunt/state.yue:477
        '  state_2', -- shunt/state.yue:478
        '  state_2 --> state_1' -- shunt/state.yue:479
      } -- shunt/state.yue:472
      local expected_repr = table.concat(expected_lines, '\n'); -- shunt/state.yue:480
      return require('shunt.spec')._expect_that([=[mermaid_repr]=], mermaid_repr, (eq(expected_repr)), tostring("shunt/state.yue") .. ":" .. tostring(481)) -- shunt/state.yue:481
    end) -- shunt/state.yue:458
    it('accepts endless state machines', function() -- shunt/state.yue:483
      local builder = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):declare_endless():add((State('state_1')):add_transition_to('state_1')); -- shunt/state.yue:484
      return require('shunt.spec')._expect_that([=[builder\build]=], (function() -- shunt/state.yue:489
        local _base_0 = builder -- shunt/state.yue:489
        local _fn_0 = _base_0.build -- shunt/state.yue:489
        return _fn_0 and function(...) -- shunt/state.yue:489
          return _fn_0(_base_0, ...) -- shunt/state.yue:489
        end -- shunt/state.yue:489
      end)(), (no_errors()), tostring("shunt/state.yue") .. ":" .. tostring(489)) -- shunt/state.yue:489
    end) -- shunt/state.yue:483
    return it('rejects invalid transition graphs', function() -- shunt/state.yue:491
      local builder = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add(State('state_1')); -- shunt/state.yue:492
      require('shunt.spec')._expect_that([=[builder\build]=], (function() -- shunt/state.yue:495
        local _base_0 = builder -- shunt/state.yue:495
        local _fn_0 = _base_0.build -- shunt/state.yue:495
        return _fn_0 and function(...) -- shunt/state.yue:495
          return _fn_0(_base_0, ...) -- shunt/state.yue:495
        end -- shunt/state.yue:495
      end)(), (errors(matches('no end states declared'))), tostring("shunt/state.yue") .. ":" .. tostring(495)) -- shunt/state.yue:495
      builder = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):declare_end_state():add_transition_to('state_2')):add((State('state_2')):add_transition_to('state_3')):add((State('state_3')):add_transition_to('state_1')); -- shunt/state.yue:497
      require('shunt.spec')._expect_that([=[builder\build]=], (function() -- shunt/state.yue:506
        local _base_0 = builder -- shunt/state.yue:506
        local _fn_0 = _base_0.build -- shunt/state.yue:506
        return _fn_0 and function(...) -- shunt/state.yue:506
          return _fn_0(_base_0, ...) -- shunt/state.yue:506
        end -- shunt/state.yue:506
      end)(), (no_errors()), tostring("shunt/state.yue") .. ":" .. tostring(506)) -- shunt/state.yue:506
      builder = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):declare_end_state()):add((State('unreachable_1')):add_transition_to('unreachable_2')):add((State('unreachable_2'))); -- shunt/state.yue:508
      require('shunt.spec')._expect_that([=[builder\build]=], (function() -- shunt/state.yue:515
        local _base_0 = builder -- shunt/state.yue:515
        local _fn_0 = _base_0.build -- shunt/state.yue:515
        return _fn_0 and function(...) -- shunt/state.yue:515
          return _fn_0(_base_0, ...) -- shunt/state.yue:515
        end -- shunt/state.yue:515
      end)(), (errors(matches('the following states are not reachable from the start state: unreachable_1, unreachable_2'))), tostring("shunt/state.yue") .. ":" .. tostring(515)) -- shunt/state.yue:515
      builder = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):add_transition_to('state_2')):add((State('state_2')):declare_end_state():add_transition_to('interminable_1')):add((State('interminable_1')):add_transition_to('interminable_2')):add((State('interminable_2'))); -- shunt/state.yue:517
      require('shunt.spec')._expect_that([=[builder\build]=], (function() -- shunt/state.yue:527
        local _base_0 = builder -- shunt/state.yue:527
        local _fn_0 = _base_0.build -- shunt/state.yue:527
        return _fn_0 and function(...) -- shunt/state.yue:527
          return _fn_0(_base_0, ...) -- shunt/state.yue:527
        end -- shunt/state.yue:527
      end)(), (errors(matches('the following states are not reachable from any end state: interminable_1, interminable_2'))), tostring("shunt/state.yue") .. ":" .. tostring(527)) -- shunt/state.yue:527
      builder = (StateMachineBuilder('test_sm')):set_initial_state('dead_end'):declare_endless():add(State('dead_end')); -- shunt/state.yue:529
      require('shunt.spec')._expect_that([=[builder\build]=], (function() -- shunt/state.yue:533
        local _base_0 = builder -- shunt/state.yue:533
        local _fn_0 = _base_0.build -- shunt/state.yue:533
        return _fn_0 and function(...) -- shunt/state.yue:533
          return _fn_0(_base_0, ...) -- shunt/state.yue:533
        end -- shunt/state.yue:533
      end)(), (errors(matches('the following states are dead ends: dead_end'))), tostring("shunt/state.yue") .. ":" .. tostring(533)) -- shunt/state.yue:533
      builder = (StateMachineBuilder('test_sm')):set_initial_state('hub'):declare_endless():add((State('hub')):add_transition_to('dead_end_2'):add_transition_to('dead_end_1')):add(State('dead_end_2')):add(State('dead_end_1')); -- shunt/state.yue:534
      return require('shunt.spec')._expect_that([=[builder\build]=], (function() -- shunt/state.yue:542
        local _base_0 = builder -- shunt/state.yue:542
        local _fn_0 = _base_0.build -- shunt/state.yue:542
        return _fn_0 and function(...) -- shunt/state.yue:542
          return _fn_0(_base_0, ...) -- shunt/state.yue:542
        end -- shunt/state.yue:542
      end)(), (errors(matches('the following states are dead ends: dead_end_1, dead_end_2'))), tostring("shunt/state.yue") .. ":" .. tostring(542)) -- shunt/state.yue:542
    end) -- shunt/state.yue:542
  end) -- shunt/state.yue:371
  describe('valid_ident', function() -- shunt/state.yue:544
    local valid_idents = { -- shunt/state.yue:546
      'hello', -- shunt/state.yue:546
      'world_123' -- shunt/state.yue:547
    } -- shunt/state.yue:545
    for _index_0 = 1, #valid_idents do -- shunt/state.yue:548
      local ident = valid_idents[_index_0] -- shunt/state.yue:548
      it("accepts '" .. tostring(ident) .. "'", function() -- shunt/state.yue:549
        return require('shunt.spec')._expect_that([=[(valid_ident ident)]=], (valid_ident(ident)), (eq(true)), tostring("shunt/state.yue") .. ":" .. tostring(550)) -- shunt/state.yue:550
      end) -- shunt/state.yue:549
    end -- shunt/state.yue:550
    local invalid_idents = { -- shunt/state.yue:553
      '', -- shunt/state.yue:553
      '1234', -- shunt/state.yue:554
      '-qwer', -- shunt/state.yue:555
      '.asdf', -- shunt/state.yue:556
      'a-b' -- shunt/state.yue:557
    } -- shunt/state.yue:552
    for _index_0 = 1, #invalid_idents do -- shunt/state.yue:558
      local ident = invalid_idents[_index_0] -- shunt/state.yue:558
      it("rejects '" .. tostring(ident) .. "'", function() -- shunt/state.yue:559
        return require('shunt.spec')._expect_that([=[(valid_ident ident)]=], (valid_ident(ident)), (eq(false)), tostring("shunt/state.yue") .. ":" .. tostring(560)) -- shunt/state.yue:560
      end) -- shunt/state.yue:559
    end -- shunt/state.yue:560
  end) -- shunt/state.yue:544
  local make_test_sm -- shunt/state.yue:562
  make_test_sm = function() -- shunt/state.yue:562
    return (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):declare_end_state():add_transition_to('state_2'):add_transition_to('state_3')):add((State('state_2')):declare_end_state():set_data_type([[{
          hello: string,
          world: number,
          optional: ?string,
        }]]):add_transition_to('state_1')):add((State('state_3')):declare_end_state():set_data_type('number')):build() -- shunt/state.yue:580
  end -- shunt/state.yue:562
  describe('StateMachine', function() -- shunt/state.yue:582
    it('rejects new fields', function() -- shunt/state.yue:583
      local test_sm = make_test_sm(); -- shunt/state.yue:584
      return require('shunt.spec')._expect_that([==[(-> test_sm.foo = 'bar')]==], (function() -- shunt/state.yue:585
        test_sm.foo = 'bar' -- shunt/state.yue:585
      end), (errors(matches([[cannot add field 'foo' to state machine]]))), tostring("shunt/state.yue") .. ":" .. tostring(585)) -- shunt/state.yue:585
    end) -- shunt/state.yue:583
    describe('.state', function() -- shunt/state.yue:587
      it('exposes table data at its toplevel', function() -- shunt/state.yue:588
        local test_sm = make_test_sm() -- shunt/state.yue:589
        test_sm["goto"](test_sm, 'state_2', { -- shunt/state.yue:591
          hello = 'asdf', -- shunt/state.yue:591
          world = 4321 -- shunt/state.yue:592
        }); -- shunt/state.yue:590
        require('shunt.spec')._expect_that([=[test_sm.state.hello]=], test_sm.state.hello, (eq('asdf')), tostring("shunt/state.yue") .. ":" .. tostring(593)); -- shunt/state.yue:593
        return require('shunt.spec')._expect_that([=[test_sm.state.world]=], test_sm.state.world, (eq(4321)), tostring("shunt/state.yue") .. ":" .. tostring(594)) -- shunt/state.yue:594
      end) -- shunt/state.yue:588
      it('exposes non-table data in the .data field', function() -- shunt/state.yue:596
        local test_sm = make_test_sm() -- shunt/state.yue:597
        test_sm["goto"](test_sm, 'state_3', 123); -- shunt/state.yue:598
        return require('shunt.spec')._expect_that([=[test_sm.state.value]=], test_sm.state.value, (eq(123)), tostring("shunt/state.yue") .. ":" .. tostring(599)) -- shunt/state.yue:599
      end) -- shunt/state.yue:596
      return it('rejects assignment', function() -- shunt/state.yue:601
        local test_sm = make_test_sm() -- shunt/state.yue:602
        test_sm["goto"](test_sm, 'state_2', { -- shunt/state.yue:604
          hello = 'asdf', -- shunt/state.yue:604
          world = 4321 -- shunt/state.yue:605
        }); -- shunt/state.yue:603
        require('shunt.spec')._expect_that([==[(-> test_sm.state.absent = 'foo')]==], (function() -- shunt/state.yue:606
          test_sm.state.absent = 'foo' -- shunt/state.yue:606
        end), (errors(matches('cannot directly assign state fields'))), tostring("shunt/state.yue") .. ":" .. tostring(606)); -- shunt/state.yue:606
        require('shunt.spec')._expect_that([==[(-> test_sm.state.hello = nil)]==], (function() -- shunt/state.yue:607
          test_sm.state.hello = nil -- shunt/state.yue:607
        end), (errors(matches('cannot directly assign state fields'))), tostring("shunt/state.yue") .. ":" .. tostring(607)); -- shunt/state.yue:607
        return require('shunt.spec')._expect_that([==[(-> test_sm.state.hello = 'bar')]==], (function() -- shunt/state.yue:608
          test_sm.state.hello = 'bar' -- shunt/state.yue:608
        end), (errors(matches('cannot directly assign state fields'))), tostring("shunt/state.yue") .. ":" .. tostring(608)) -- shunt/state.yue:608
      end) -- shunt/state.yue:608
    end) -- shunt/state.yue:587
    describe('\\goto', function() -- shunt/state.yue:610
      it('requires at least one argument', function() -- shunt/state.yue:611
        local test_sm = make_test_sm(); -- shunt/state.yue:612
        return require('shunt.spec')._expect_that([=[(-> test_sm\goto!)]=], (function() -- shunt/state.yue:613
          return test_sm["goto"](test_sm) -- shunt/state.yue:613
        end), (errors(anything())), tostring("shunt/state.yue") .. ":" .. tostring(613)) -- shunt/state.yue:613
      end) -- shunt/state.yue:611
      it('correctly transitions states', function() -- shunt/state.yue:615
        local test_sm = make_test_sm(); -- shunt/state.yue:616
        require('shunt.spec')._expect_that([=[test_sm.state.name]=], test_sm.state.name, (eq('state_1')), tostring("shunt/state.yue") .. ":" .. tostring(617)) -- shunt/state.yue:617
        test_sm["goto"](test_sm, 'state_2', { -- shunt/state.yue:620
          hello = 'asdf', -- shunt/state.yue:620
          world = 4321 -- shunt/state.yue:621
        }); -- shunt/state.yue:619
        require('shunt.spec')._expect_that([=[test_sm.state.name]=], test_sm.state.name, (eq('state_2')), tostring("shunt/state.yue") .. ":" .. tostring(622)); -- shunt/state.yue:622
        require('shunt.spec')._expect_that([=[test_sm.state.hello]=], test_sm.state.hello, (eq('asdf')), tostring("shunt/state.yue") .. ":" .. tostring(623)); -- shunt/state.yue:623
        require('shunt.spec')._expect_that([=[test_sm.state.world]=], test_sm.state.world, (eq(4321)), tostring("shunt/state.yue") .. ":" .. tostring(624)); -- shunt/state.yue:624
        require('shunt.spec')._expect_that([=[test_sm.state.optional]=], test_sm.state.optional, (eq(nil)), tostring("shunt/state.yue") .. ":" .. tostring(625)) -- shunt/state.yue:625
        test_sm["goto"](test_sm, 'state_1'); -- shunt/state.yue:627
        require('shunt.spec')._expect_that([=[test_sm.state.name]=], test_sm.state.name, (eq('state_1')), tostring("shunt/state.yue") .. ":" .. tostring(628)); -- shunt/state.yue:628
        require('shunt.spec')._expect_that([=[test_sm.state.hello]=], test_sm.state.hello, (eq(nil)), tostring("shunt/state.yue") .. ":" .. tostring(629)); -- shunt/state.yue:629
        require('shunt.spec')._expect_that([=[test_sm.state.world]=], test_sm.state.world, (eq(nil)), tostring("shunt/state.yue") .. ":" .. tostring(630)); -- shunt/state.yue:630
        return require('shunt.spec')._expect_that([=[test_sm.state.optional]=], test_sm.state.optional, (eq(nil)), tostring("shunt/state.yue") .. ":" .. tostring(631)) -- shunt/state.yue:631
      end) -- shunt/state.yue:615
      it('rejects invalid transitions', function() -- shunt/state.yue:633
        local test_sm = make_test_sm(); -- shunt/state.yue:634
        require('shunt.spec')._expect_that([=[(-> test_sm\goto 'invalid')]=], (function() -- shunt/state.yue:635
          return test_sm["goto"](test_sm, 'invalid') -- shunt/state.yue:635
        end), (errors(matches('no such transition: state_1 %-> invalid'))), tostring("shunt/state.yue") .. ":" .. tostring(635)) -- shunt/state.yue:635
        test_sm["goto"](test_sm, 'state_3', 123); -- shunt/state.yue:637
        return require('shunt.spec')._expect_that([=[(-> test_sm\goto 'state_1')]=], (function() -- shunt/state.yue:638
          return test_sm["goto"](test_sm, 'state_1') -- shunt/state.yue:638
        end), (errors(matches('no such transition: state_3 %-> state_1'))), tostring("shunt/state.yue") .. ":" .. tostring(638)) -- shunt/state.yue:638
      end) -- shunt/state.yue:633
      it('rejects transitions with missing data', function() -- shunt/state.yue:640
        local test_sm = make_test_sm(); -- shunt/state.yue:641
        require('shunt.spec')._expect_that([=[(-> test_sm\goto 'state_2')]=], (function() -- shunt/state.yue:642
          return test_sm["goto"](test_sm, 'state_2') -- shunt/state.yue:642
        end), (errors(matches('incorrect type: expected table but got nil'))), tostring("shunt/state.yue") .. ":" .. tostring(642)); -- shunt/state.yue:642
        require('shunt.spec')._expect_that([=[(-> test_sm\goto 'state_2', hello: 'asdf')]=], (function() -- shunt/state.yue:643
          return test_sm["goto"](test_sm, 'state_2', { -- shunt/state.yue:643
            hello = 'asdf' -- shunt/state.yue:643
          }) -- shunt/state.yue:643
        end), (errors(matches('incorrect type: expected number but got nil'))), tostring("shunt/state.yue") .. ":" .. tostring(643)); -- shunt/state.yue:643
        return require('shunt.spec')._expect_that([=[(-> test_sm\goto 'state_2', world: 123)]=], (function() -- shunt/state.yue:644
          return test_sm["goto"](test_sm, 'state_2', { -- shunt/state.yue:644
            world = 123 -- shunt/state.yue:644
          }) -- shunt/state.yue:644
        end), (errors(matches('incorrect type: expected string but got nil'))), tostring("shunt/state.yue") .. ":" .. tostring(644)) -- shunt/state.yue:644
      end) -- shunt/state.yue:640
      it('validates state fields', function() -- shunt/state.yue:646
        local test_sm = make_test_sm(); -- shunt/state.yue:647
        return require('shunt.spec')._expect_that([=[(-> test_sm\goto 'state_2', hello: 'asdf', world: 'fdsa')]=], (function() -- shunt/state.yue:648
          return test_sm["goto"](test_sm, 'state_2', { -- shunt/state.yue:648
            hello = 'asdf', -- shunt/state.yue:648
            world = 'fdsa' -- shunt/state.yue:648
          }) -- shunt/state.yue:648
        end), (errors(matches('incorrect type: expected number but got string'))), tostring("shunt/state.yue") .. ":" .. tostring(648)) -- shunt/state.yue:648
      end) -- shunt/state.yue:646
      it('rejects extra state fields', function() -- shunt/state.yue:650
        local test_sm = make_test_sm(); -- shunt/state.yue:651
        return require('shunt.spec')._expect_that([=[(-> test_sm\goto 'state_3', spare: 'spare')]=], (function() -- shunt/state.yue:652
          return test_sm["goto"](test_sm, 'state_3', { -- shunt/state.yue:652
            spare = 'spare' -- shunt/state.yue:652
          }) -- shunt/state.yue:652
        end), (errors(matches('incorrect type'))), tostring("shunt/state.yue") .. ":" .. tostring(652)) -- shunt/state.yue:652
      end) -- shunt/state.yue:650
      return it('rejects transition of ended state machine', function() -- shunt/state.yue:654
        local test_sm = make_test_sm() -- shunt/state.yue:655
        test_sm["end"](test_sm); -- shunt/state.yue:656
        return require('shunt.spec')._expect_that([=[(-> test_sm\goto 'state_2', hello: 'asdf', world: 123)]=], (function() -- shunt/state.yue:657
          return test_sm["goto"](test_sm, 'state_2', { -- shunt/state.yue:657
            hello = 'asdf', -- shunt/state.yue:657
            world = 123 -- shunt/state.yue:657
          }) -- shunt/state.yue:657
        end), (errors(matches('cannot transition ended state machine'))), tostring("shunt/state.yue") .. ":" .. tostring(657)) -- shunt/state.yue:657
      end) -- shunt/state.yue:657
    end) -- shunt/state.yue:610
    describe('\\end', function() -- shunt/state.yue:659
      it('accepts valid end state', function() -- shunt/state.yue:660
        local state_machine = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):declare_end_state()) -- shunt/state.yue:661
      end) -- shunt/state.yue:660
      return it('rejects invalid end state', function() -- shunt/state.yue:666
        local state_machine = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):add_transition_to('state_2')):add((State('state_2')):declare_end_state()):build(); -- shunt/state.yue:667
        return require('shunt.spec')._expect_that([=[state_machine\end]=], (function() -- shunt/state.yue:674
          local _base_0 = state_machine -- shunt/state.yue:674
          local _fn_0 = _base_0["end"] -- shunt/state.yue:674
          return _fn_0 and function(...) -- shunt/state.yue:674
            return _fn_0(_base_0, ...) -- shunt/state.yue:674
          end -- shunt/state.yue:674
        end)(), (errors(matches('state_1 is not a valid end state'))), tostring("shunt/state.yue") .. ":" .. tostring(674)) -- shunt/state.yue:674
      end) -- shunt/state.yue:674
    end) -- shunt/state.yue:659
    describe('\\recover_to', function() -- shunt/state.yue:676
      it('allows recovery from any state to any state', function() -- shunt/state.yue:677
        local state_machine = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):add_transition_to('state_2')):add((State('state_2')):declare_end_state():set_data_type([[{
              data: string,
            }]])):build() -- shunt/state.yue:678
        state_machine:recover_to('state_2', { -- shunt/state.yue:689
          data = 'asdf' -- shunt/state.yue:689
        }); -- shunt/state.yue:688
        require('shunt.spec')._assert_that([=[state_machine.state.name]=], state_machine.state.name, (eq('state_2')), tostring("shunt/state.yue") .. ":" .. tostring(690)); -- shunt/state.yue:690
        require('shunt.spec')._assert_that([=[state_machine.state.data]=], state_machine.state.data, (eq('asdf')), tostring("shunt/state.yue") .. ":" .. tostring(691)) -- shunt/state.yue:691
        state_machine:recover_to('state_1'); -- shunt/state.yue:693
        require('shunt.spec')._assert_that([=[state_machine.state.name]=], state_machine.state.name, (eq('state_1')), tostring("shunt/state.yue") .. ":" .. tostring(694)); -- shunt/state.yue:694
        return require('shunt.spec')._assert_that([=[state_machine.state.data]=], state_machine.state.data, (eq(nil)), tostring("shunt/state.yue") .. ":" .. tostring(695)) -- shunt/state.yue:695
      end) -- shunt/state.yue:677
      return it('allows recovery after end', function() -- shunt/state.yue:697
        local state_machine = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):add((State('state_1')):declare_end_state():add_transition_to('state_1')):build() -- shunt/state.yue:698
        state_machine["end"](state_machine) -- shunt/state.yue:704
        state_machine:recover_to('state_1') -- shunt/state.yue:705
        return state_machine["goto"](state_machine, 'state_1') -- shunt/state.yue:706
      end) -- shunt/state.yue:706
    end) -- shunt/state.yue:676
    describe('set_reporter', function() -- shunt/state.yue:708
      return it('is respected by state machines', function() -- shunt/state.yue:709
        local states = { } -- shunt/state.yue:710
        local test_sm = (StateMachineBuilder('test_sm')):set_initial_state('state_1'):set_reporter(function(self, prev_state, state) -- shunt/state.yue:713
          states[#states + 1] = { -- shunt/state.yue:714
            prev_state = prev_state, -- shunt/state.yue:714
            state = state -- shunt/state.yue:714
          } -- shunt/state.yue:714
        end):add((State('state_1')):add_transition_to('state_2')):add((State('state_2')):declare_end_state():add_transition_to('state_1'):set_data_type([[{
              hello: string,
              world: number
            }]])):build() -- shunt/state.yue:711
        local data = { -- shunt/state.yue:727
          hello = 'asdf', -- shunt/state.yue:727
          world = 123 -- shunt/state.yue:728
        } -- shunt/state.yue:726
        test_sm["goto"](test_sm, 'state_2', data); -- shunt/state.yue:730
        require('shunt.spec')._expect_that([=[states]=], states, (deep_eq({ -- shunt/state.yue:732
          { -- shunt/state.yue:732
            prev_state = { -- shunt/state.yue:732
              name = 'state_1' -- shunt/state.yue:732
            }, -- shunt/state.yue:732
            state = (function() -- shunt/state.yue:732
              local _tab_0 = { -- shunt/state.yue:732
                name = 'state_2' -- shunt/state.yue:732
              } -- shunt/state.yue:732
              local _idx_0 = 1 -- shunt/state.yue:732
              for _key_0, _value_0 in pairs(data) do -- shunt/state.yue:732
                if _idx_0 == _key_0 then -- shunt/state.yue:732
                  _tab_0[#_tab_0 + 1] = _value_0 -- shunt/state.yue:732
                  _idx_0 = _idx_0 + 1 -- shunt/state.yue:732
                else -- shunt/state.yue:732
                  _tab_0[_key_0] = _value_0 -- shunt/state.yue:732
                end -- shunt/state.yue:732
              end -- shunt/state.yue:732
              return _tab_0 -- shunt/state.yue:732
            end)() -- shunt/state.yue:732
          } -- shunt/state.yue:732
        })), tostring("shunt/state.yue") .. ":" .. tostring(732)) -- shunt/state.yue:732
        test_sm["goto"](test_sm, 'state_1') -- shunt/state.yue:736
        test_sm["goto"](test_sm, 'state_2', data) -- shunt/state.yue:737
        test_sm["goto"](test_sm, 'state_1') -- shunt/state.yue:738
        test_sm["goto"](test_sm, 'state_2', data); -- shunt/state.yue:739
        return require('shunt.spec')._expect_that([=[[ state for state in *states ]]=], (function() -- shunt/state.yue:741
          local _accum_0 = { } -- shunt/state.yue:741
          local _len_0 = 1 -- shunt/state.yue:741
          for _index_0 = 1, #states do -- shunt/state.yue:741
            local state = states[_index_0] -- shunt/state.yue:741
            _accum_0[_len_0] = state -- shunt/state.yue:741
            _len_0 = _len_0 + 1 -- shunt/state.yue:741
          end -- shunt/state.yue:741
          return _accum_0 -- shunt/state.yue:741
        end)(), (deep_eq({ -- shunt/state.yue:741
          { -- shunt/state.yue:741
            prev_state = { -- shunt/state.yue:741
              name = 'state_1' -- shunt/state.yue:741
            }, -- shunt/state.yue:741
            state = (function() -- shunt/state.yue:741
              local _tab_0 = { -- shunt/state.yue:741
                name = 'state_2' -- shunt/state.yue:741
              } -- shunt/state.yue:741
              local _idx_0 = 1 -- shunt/state.yue:741
              for _key_0, _value_0 in pairs(data) do -- shunt/state.yue:741
                if _idx_0 == _key_0 then -- shunt/state.yue:741
                  _tab_0[#_tab_0 + 1] = _value_0 -- shunt/state.yue:741
                  _idx_0 = _idx_0 + 1 -- shunt/state.yue:741
                else -- shunt/state.yue:741
                  _tab_0[_key_0] = _value_0 -- shunt/state.yue:741
                end -- shunt/state.yue:741
              end -- shunt/state.yue:741
              return _tab_0 -- shunt/state.yue:741
            end)() -- shunt/state.yue:741
          }, -- shunt/state.yue:741
          { -- shunt/state.yue:741
            prev_state = (function() -- shunt/state.yue:741
              local _tab_0 = { -- shunt/state.yue:741
                name = 'state_2' -- shunt/state.yue:741
              } -- shunt/state.yue:741
              local _idx_0 = 1 -- shunt/state.yue:741
              for _key_0, _value_0 in pairs(data) do -- shunt/state.yue:741
                if _idx_0 == _key_0 then -- shunt/state.yue:741
                  _tab_0[#_tab_0 + 1] = _value_0 -- shunt/state.yue:741
                  _idx_0 = _idx_0 + 1 -- shunt/state.yue:741
                else -- shunt/state.yue:741
                  _tab_0[_key_0] = _value_0 -- shunt/state.yue:741
                end -- shunt/state.yue:741
              end -- shunt/state.yue:741
              return _tab_0 -- shunt/state.yue:741
            end)(), -- shunt/state.yue:741
            state = { -- shunt/state.yue:741
              name = 'state_1' -- shunt/state.yue:741
            } -- shunt/state.yue:741
          }, -- shunt/state.yue:741
          { -- shunt/state.yue:741
            prev_state = { -- shunt/state.yue:741
              name = 'state_1' -- shunt/state.yue:741
            }, -- shunt/state.yue:741
            state = (function() -- shunt/state.yue:741
              local _tab_0 = { -- shunt/state.yue:741
                name = 'state_2' -- shunt/state.yue:741
              } -- shunt/state.yue:741
              local _idx_0 = 1 -- shunt/state.yue:741
              for _key_0, _value_0 in pairs(data) do -- shunt/state.yue:741
                if _idx_0 == _key_0 then -- shunt/state.yue:741
                  _tab_0[#_tab_0 + 1] = _value_0 -- shunt/state.yue:741
                  _idx_0 = _idx_0 + 1 -- shunt/state.yue:741
                else -- shunt/state.yue:741
                  _tab_0[_key_0] = _value_0 -- shunt/state.yue:741
                end -- shunt/state.yue:741
              end -- shunt/state.yue:741
              return _tab_0 -- shunt/state.yue:741
            end)() -- shunt/state.yue:741
          }, -- shunt/state.yue:741
          { -- shunt/state.yue:741
            prev_state = (function() -- shunt/state.yue:741
              local _tab_0 = { -- shunt/state.yue:741
                name = 'state_2' -- shunt/state.yue:741
              } -- shunt/state.yue:741
              local _idx_0 = 1 -- shunt/state.yue:741
              for _key_0, _value_0 in pairs(data) do -- shunt/state.yue:741
                if _idx_0 == _key_0 then -- shunt/state.yue:741
                  _tab_0[#_tab_0 + 1] = _value_0 -- shunt/state.yue:741
                  _idx_0 = _idx_0 + 1 -- shunt/state.yue:741
                else -- shunt/state.yue:741
                  _tab_0[_key_0] = _value_0 -- shunt/state.yue:741
                end -- shunt/state.yue:741
              end -- shunt/state.yue:741
              return _tab_0 -- shunt/state.yue:741
            end)(), -- shunt/state.yue:741
            state = { -- shunt/state.yue:741
              name = 'state_1' -- shunt/state.yue:741
            } -- shunt/state.yue:741
          }, -- shunt/state.yue:741
          { -- shunt/state.yue:741
            prev_state = { -- shunt/state.yue:741
              name = 'state_1' -- shunt/state.yue:741
            }, -- shunt/state.yue:741
            state = (function() -- shunt/state.yue:741
              local _tab_0 = { -- shunt/state.yue:741
                name = 'state_2' -- shunt/state.yue:741
              } -- shunt/state.yue:741
              local _idx_0 = 1 -- shunt/state.yue:741
              for _key_0, _value_0 in pairs(data) do -- shunt/state.yue:741
                if _idx_0 == _key_0 then -- shunt/state.yue:741
                  _tab_0[#_tab_0 + 1] = _value_0 -- shunt/state.yue:741
                  _idx_0 = _idx_0 + 1 -- shunt/state.yue:741
                else -- shunt/state.yue:741
                  _tab_0[_key_0] = _value_0 -- shunt/state.yue:741
                end -- shunt/state.yue:741
              end -- shunt/state.yue:741
              return _tab_0 -- shunt/state.yue:741
            end)() -- shunt/state.yue:741
          } -- shunt/state.yue:741
        })), tostring("shunt/state.yue") .. ":" .. tostring(741)) -- shunt/state.yue:751
      end) -- shunt/state.yue:751
    end) -- shunt/state.yue:708
    return describe('.states', function() -- shunt/state.yue:753
      it('contains all states', function() -- shunt/state.yue:754
        local test_sm = make_test_sm() -- shunt/state.yue:755
        local expected_states = { -- shunt/state.yue:757
          'state_1', -- shunt/state.yue:757
          'state_2', -- shunt/state.yue:758
          'state_3' -- shunt/state.yue:759
        } -- shunt/state.yue:756
        for _index_0 = 1, #expected_states do -- shunt/state.yue:760
          local expected_state = expected_states[_index_0] -- shunt/state.yue:760
          require('shunt.spec')._expect_that([=[test_sm.states[expected_state]]=], test_sm.states[expected_state], (eq(expected_state)), tostring("shunt/state.yue") .. ":" .. tostring(761)) -- shunt/state.yue:761
        end -- shunt/state.yue:761
      end) -- shunt/state.yue:754
      it('rejects unknown states', function() -- shunt/state.yue:763
        local test_sm = make_test_sm(); -- shunt/state.yue:764
        return require('shunt.spec')._expect_that([=[(-> test_sm.states.unknown)]=], (function() -- shunt/state.yue:765
          return test_sm.states.unknown -- shunt/state.yue:765
        end), (errors(matches("cannot get state 'unknown': no such state"))), tostring("shunt/state.yue") .. ":" .. tostring(765)) -- shunt/state.yue:765
      end) -- shunt/state.yue:763
      return it('rejects modifications', function() -- shunt/state.yue:767
        local test_sm = make_test_sm(); -- shunt/state.yue:768
        return require('shunt.spec')._expect_that([==[(-> test_sm.states.state_1 = nil)]==], (function() -- shunt/state.yue:769
          test_sm.states.state_1 = nil -- shunt/state.yue:769
        end), (errors(matches('cannot set fields in states'))), tostring("shunt/state.yue") .. ":" .. tostring(769)) -- shunt/state.yue:769
      end) -- shunt/state.yue:769
    end) -- shunt/state.yue:769
  end) -- shunt/state.yue:582
  return describe('StateResponsesBuilder', function() -- shunt/state.yue:771
    it('builds response', function() -- shunt/state.yue:772
      local calls = { } -- shunt/state.yue:773
      local builder -- shunt/state.yue:774
      do -- shunt/state.yue:774
        local _with_0 = StateResponsesBuilder(make_test_sm()) -- shunt/state.yue:774
        local _list_0 = { -- shunt/state.yue:775
          'state_1', -- shunt/state.yue:775
          'state_2', -- shunt/state.yue:775
          'state_3' -- shunt/state.yue:775
        } -- shunt/state.yue:775
        for _index_0 = 1, #_list_0 do -- shunt/state.yue:775
          local name = _list_0[_index_0] -- shunt/state.yue:775
          _with_0:add(name, F('() -> <>', function() -- shunt/state.yue:776
            calls[#calls + 1] = { -- shunt/state.yue:777
              name = name -- shunt/state.yue:777
            } -- shunt/state.yue:777
          end)) -- shunt/state.yue:776
        end -- shunt/state.yue:777
        builder = _with_0 -- shunt/state.yue:774
      end -- shunt/state.yue:774
      local responses = builder:build() -- shunt/state.yue:779
      responses.state_1() -- shunt/state.yue:780
      responses.state_2() -- shunt/state.yue:781
      responses.state_3(); -- shunt/state.yue:782
      require('shunt.spec')._expect_that([=[calls]=], calls, (len(eq(3))), tostring("shunt/state.yue") .. ":" .. tostring(783)); -- shunt/state.yue:783
      require('shunt.spec')._expect_that([=[calls[1]]=], calls[1], (has_fields({ -- shunt/state.yue:784
        name = eq('state_1') -- shunt/state.yue:784
      })), tostring("shunt/state.yue") .. ":" .. tostring(784)); -- shunt/state.yue:784
      require('shunt.spec')._expect_that([=[calls[2]]=], calls[2], (has_fields({ -- shunt/state.yue:786
        name = eq('state_2') -- shunt/state.yue:786
      })), tostring("shunt/state.yue") .. ":" .. tostring(786)); -- shunt/state.yue:786
      return require('shunt.spec')._expect_that([=[calls[3]]=], calls[3], (has_fields({ -- shunt/state.yue:788
        name = eq('state_3') -- shunt/state.yue:788
      })), tostring("shunt/state.yue") .. ":" .. tostring(788)) -- shunt/state.yue:789
    end) -- shunt/state.yue:772
    it('rejects unknown states', function() -- shunt/state.yue:791
      local _with_0 = StateResponsesBuilder(make_test_sm()) -- shunt/state.yue:792
      require('shunt.spec')._expect_that([=[(-> \add 'fribib', ->)]=], (function() -- shunt/state.yue:793
        return _with_0:add('fribib', function() end) -- shunt/state.yue:793
      end), (errors(matches("no such state"))), tostring("shunt/state.yue") .. ":" .. tostring(793)) -- shunt/state.yue:793
      return _with_0 -- shunt/state.yue:792
    end) -- shunt/state.yue:791
    it('rejects redefinition', function() -- shunt/state.yue:795
      local _with_0 = StateResponsesBuilder(make_test_sm()) -- shunt/state.yue:796
      _with_0:add('state_1', function() end); -- shunt/state.yue:797
      require('shunt.spec')._expect_that([=[(-> \add 'state_1', ->)]=], (function() -- shunt/state.yue:798
        return _with_0:add('state_1', function() end) -- shunt/state.yue:798
      end), (errors(matches("response for 'state_1' already defined"))), tostring("shunt/state.yue") .. ":" .. tostring(798)) -- shunt/state.yue:798
      return _with_0 -- shunt/state.yue:796
    end) -- shunt/state.yue:795
    return it('rejects incomplete coverage', function() -- shunt/state.yue:800
      local _with_0 = StateResponsesBuilder(make_test_sm()) -- shunt/state.yue:801
      require('shunt.spec')._expect_that([=[\build]=], (function() -- shunt/state.yue:802
        local _base_0 = _with_0 -- shunt/state.yue:802
        local _fn_0 = _base_0.build -- shunt/state.yue:802
        return _fn_0 and function(...) -- shunt/state.yue:802
          return _fn_0(_base_0, ...) -- shunt/state.yue:802
        end -- shunt/state.yue:802
      end)(), (errors(matches('no response: state_1, state_2, state_3'))), tostring("shunt/state.yue") .. ":" .. tostring(802)) -- shunt/state.yue:802
      return _with_0 -- shunt/state.yue:801
    end) -- shunt/state.yue:802
  end) -- shunt/state.yue:802
end) -- shunt/state.yue:364
return _module_0 -- shunt/state.yue:802
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
  ['libshunt.state'] = function() -- libshunt.yue:5
    return require('shunt.state') -- libshunt.yue:5
  end -- libshunt.yue:5
} -- libshunt.yue:1
for lib, src_fn in pairs(re_exports) do -- libshunt.yue:6
  package.preload[lib] = src_fn -- libshunt.yue:7
end -- libshunt.yue:7
return setmetatable({ }, { -- libshunt.yue:9
  __index = function(self) -- libshunt.yue:9
    local lib_names -- libshunt.yue:10
    do -- libshunt.yue:10
      local _accum_0 = { } -- libshunt.yue:10
      local _len_0 = 1 -- libshunt.yue:10
      for lib_name, _ in pairs(re_exports) do -- libshunt.yue:10
        _accum_0[_len_0] = lib_name -- libshunt.yue:10
        _len_0 = _len_0 + 1 -- libshunt.yue:10
      end -- libshunt.yue:10
      lib_names = _accum_0 -- libshunt.yue:10
    end -- libshunt.yue:10
    table.sort(lib_names) -- libshunt.yue:11
    return error("libshunt modules are accessed by calling `require'\navailable modules:\n  " .. tostring(table.concat(lib_names, '\n  '))) -- libshunt.yue:12
  end -- libshunt.yue:9
}) -- libshunt.yue:12
