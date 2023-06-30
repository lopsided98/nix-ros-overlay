
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, canopen-interfaces, lifecycle-msgs, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-canopen-utils";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_utils/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "ac06faf52a1ada2f0df5034f55416402e54aefa9048763f5e4e0ddb529de39f8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ canopen-interfaces lifecycle-msgs rclpy std-msgs ];

  meta = {
    description = ''Utils for working with ros2_canopen.'';
    license = with lib.licenses; [ asl20 ];
  };
}
