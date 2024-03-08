
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, canopen-interfaces, lifecycle-msgs, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-canopen-utils";
  version = "0.2.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_utils/0.2.8-2.tar.gz";
    name = "0.2.8-2.tar.gz";
    sha256 = "2d5fa791702eda94e24a34cd850c532f6a3deba8be23e1b120d1886447feb4e0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ canopen-interfaces lifecycle-msgs rclpy std-msgs ];

  meta = {
    description = ''Utils for working with ros2_canopen.'';
    license = with lib.licenses; [ asl20 ];
  };
}
