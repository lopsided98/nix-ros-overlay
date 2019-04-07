
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-four-wheel-steering-msgs";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/four_wheel_steering_msgs-release/archive/release/melodic/four_wheel_steering_msgs/1.0.0-0.tar.gz;
    sha256 = "4089701e5cb0a7f06d6e42aef2863cd985f8e43d46d7aca46f5c0e01caaead86";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for robots using FourWheelSteering.'';
    #license = lib.licenses.BSD;
  };
}
