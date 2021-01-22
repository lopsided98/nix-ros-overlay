
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-four-wheel-steering-msgs";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/four_wheel_steering_msgs-release/archive/release/kinetic/four_wheel_steering_msgs/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "263c1ae8938996b3c43a53b1c6f1d33e3576d32f2bd2258c703341bce6b3eb4e";
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
