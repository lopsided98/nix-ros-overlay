
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, canopen-interfaces, lifecycle-msgs, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-canopen-utils";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/jazzy/canopen_utils/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "b4aa8b1c0d3239b7d819cdb5e76a29a3b80f485ee0be366bee34f7ea350ed746";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ canopen-interfaces lifecycle-msgs rclpy std-msgs ];

  meta = {
    description = "Utils for working with ros2_canopen.";
    license = with lib.licenses; [ asl20 ];
  };
}
