require "/scripts/vec2.lua"

function init()
	projectile.setPower(projectile.power() / projectile.powerMultiplier()) --bruh

	self.rotationRate = config.getParameter("rotationRate", 1)
end

function update(dt)
	local velocity = mcontroller.velocity()
	local direction = velocity[1] > 0 and 1 or -1
	local rotation = (vec2.mag(velocity) / 180 * math.pi) * -direction * dt * self.rotationRate
	mcontroller.setRotation(mcontroller.rotation() + rotation)
end
