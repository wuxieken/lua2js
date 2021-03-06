-- #! /usr/bin/lua
--
-- lua-TestMore : <http://fperrad.github.com/lua-TestMore/>
--
-- Copyright (C) 2009, Perrad Francois
--
-- This code is licensed under the terms of the MIT/X11 license,
-- like Lua itself.
--

--[[

=head1 Lua repeat statement

=head2 Synopsis

    % prove 012-repeat.t

=head2 Description

See "Lua 5.1 Reference Manual", section 2.4.4 "Control Structures",
L<http://www.lua.org/manual/5.1/manual.html#2.4.4>.

See "Programming in Lua", section 4.3 "Control Structures".

=cut

]]

print("1..7")

a = {"ok 1 - repeat", "ok 2", "ok 3"}
local i = 0
repeat
    i = i + 1
    if a[i] then
        print(a[i])
    end
until not a[i]
if i == 4 then
    print("ok 4")
else
    print("not ok 4 - " .. i)
end

a = {"ok 5 - with break", "ok 6", 'stop', 'more'}
local i = 0
repeat
    i = i + 1
    if a[i] == 'stop' then break end
    print(a[i])
until not a[i]
if a[i] == 'stop' then
    print("ok 7 - break")
else
    print("not ok 7 - " .. a[i])
end

-- Local Variables:
--   mode: lua
--   lua-indent-level: 4
--   fill-column: 100
-- End:
-- vim: ft=lua expandtab shiftwidth=4:
