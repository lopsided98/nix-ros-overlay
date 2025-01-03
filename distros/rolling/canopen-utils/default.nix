
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, canopen-interfaces, lifecycle-msgs, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-canopen-utils";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_utils/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "5fdc9f177b2bed1b7e6d723315b7e3fd2f686c64ac9267a77cef979081942997";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ canopen-interfaces lifecycle-msgs rclpy std-msgs ];

  meta = {
    description = "Utils for working with ros2_canopen.";
    license = with lib.licenses; [ asl20 ];
  };
}
