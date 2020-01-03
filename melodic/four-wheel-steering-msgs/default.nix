
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-four-wheel-steering-msgs";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/four_wheel_steering_msgs-release/archive/release/melodic/four_wheel_steering_msgs/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "4089701e5cb0a7f06d6e42aef2863cd985f8e43d46d7aca46f5c0e01caaead86";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for robots using FourWheelSteering.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
