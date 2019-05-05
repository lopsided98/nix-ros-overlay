
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-four-wheel-steering-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/four_wheel_steering_msgs-release/archive/release/lunar/four_wheel_steering_msgs/1.0.0-1.tar.gz;
    sha256 = "500e698a3f3fd865b42bb980b5a1ceed3226a28532b1c480a2ab06041b6cd886";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for robots using FourWheelSteering.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
