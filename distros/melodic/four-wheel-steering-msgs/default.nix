
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-four-wheel-steering-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/four_wheel_steering_msgs-release/archive/release/melodic/four_wheel_steering_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "e1021982b9dfb4c4f80c680fda3349e9295561f9d8b52e28b63c501e0779684c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for robots using FourWheelSteering.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
