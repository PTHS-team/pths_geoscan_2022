local boardNumber = boardNumber
local unpack = table.unpack
local points = {
{0.0, 1.0, 0.5},
{0.25881904510252074, 0.9659258262890683, 0.5},
{0.49999999999999994, 0.8660254037844387, 0.5},
{0.7071067811865475, 0.7071067811865476, 0.5},
{0.8660254037844386, 0.5000000000000001, 0.5},
{0.9659258262890682, 0.25881904510252096, 0.5},
{1.0, 2.83276944882399e-16, 0.5},
{0.9659258262890684, -0.2588190451025204, 0.5},
{0.8660254037844387, -0.49999999999999983, 0.5},
{0.7071067811865476, -0.7071067811865475, 0.5},
{0.49999999999999994, -0.8660254037844387, 0.5},
{0.2588190451025206, -0.9659258262890683, 0.5},
{-3.216245299353273e-16, -1.0, 0.5},
{-0.2588190451025212, -0.9659258262890682, 0.5},
{-0.5000000000000006, -0.8660254037844384, 0.5},
{-0.707106781186548, -0.707106781186547, 0.5},
{-0.8660254037844388, -0.4999999999999996, 0.5},
{-0.9659258262890683, -0.25881904510252063, 0.5},
{-1.0, -1.8369701987210297e-16, 0.5},
{-0.9659258262890684, 0.2588190451025203, 0.5},

}

local curr_point = 1

local function nextPoint()
    if(#points >= curr_point) then
        ap.goToLocalPoint(unpack(points[curr_point]))
        curr_point = curr_point + 1
    else
        ap.push(Ev.MCE_LANDING)
    end
end

function callback(event)
    if(event == Ev.POINT_REACHED) then
        nextPoint()
    end
end
nextPoint()
