
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, trajectory-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-control-msgs";
  version = "1.4.0-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/control_msgs-release/archive/release/lunar/control_msgs/1.4.0-1.tar.gz;
    sha256 = "3e3bb7111fae456f04d1abdeb8f0bdebd4f1548ae34796bea6d917f7b20e4835";
  };

  buildInputs = [ message-generation actionlib-msgs std-msgs trajectory-msgs geometry-msgs ];
  propagatedBuildInputs = [ message-runtime actionlib-msgs std-msgs trajectory-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''control_msgs contains base messages and actions useful for
    controlling robots.  It provides representations for controller
    setpoints and joint and cartesian trajectories.'';
    #license = lib.licenses.BSD;
  };
}
