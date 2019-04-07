
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-four-wheel-steering-msgs";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/four_wheel_steering_msgs-release/archive/release/kinetic/four_wheel_steering_msgs/1.0.0-0.tar.gz;
    sha256 = "263c1ae8938996b3c43a53b1c6f1d33e3576d32f2bd2258c703341bce6b3eb4e";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for robots using FourWheelSteering.'';
    #license = lib.licenses.BSD;
  };
}
