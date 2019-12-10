
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, geometry-msgs, launch, launch-ros, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-crystal-keystroke";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics/ros2-keystroke-release/archive/release/crystal/keystroke/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "7f8f328829b31d38c84025fc2e56eaa55c6e194ee25bcb9b8487fcc67fd19cc1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs launch launch-ros rclpy std-msgs ];

  meta = {
    description = ''Capture keyboard input from the local computer and publish it to ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
