
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, canopen-interfaces, lifecycle-msgs, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-canopen-utils";
  version = "0.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_utils/0.2.7-1.tar.gz";
    name = "0.2.7-1.tar.gz";
    sha256 = "f1562e5cba4aa619eae425d6af7f4a9a0613a4f1ce49ff06b75c01f4f9df5ad3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ canopen-interfaces lifecycle-msgs rclpy std-msgs ];

  meta = {
    description = ''Utils for working with ros2_canopen.'';
    license = with lib.licenses; [ asl20 ];
  };
}
