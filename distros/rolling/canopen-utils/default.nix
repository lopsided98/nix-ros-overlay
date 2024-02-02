
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, canopen-interfaces, lifecycle-msgs, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-canopen-utils";
  version = "0.2.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_utils/0.2.8-1.tar.gz";
    name = "0.2.8-1.tar.gz";
    sha256 = "b0698327c381b12c61014e86a2b7e2e4a711e2c6daf54b181452d4d0a9093c72";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ canopen-interfaces lifecycle-msgs rclpy std-msgs ];

  meta = {
    description = ''Utils for working with ros2_canopen.'';
    license = with lib.licenses; [ asl20 ];
  };
}
