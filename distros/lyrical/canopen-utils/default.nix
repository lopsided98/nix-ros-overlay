
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, canopen-interfaces, lifecycle-msgs, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-canopen-utils";
  version = "0.3.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/lyrical/canopen_utils/0.3.2-3.tar.gz";
    name = "0.3.2-3.tar.gz";
    sha256 = "6a33e57f64e16c30f8a74b3fc7bc6b5b698e6fd19c3c9f0245aa836432b0bcdf";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ canopen-interfaces lifecycle-msgs rclpy std-msgs ];

  meta = {
    description = "Utils for working with ros2_canopen.";
    license = with lib.licenses; [ asl20 ];
  };
}
