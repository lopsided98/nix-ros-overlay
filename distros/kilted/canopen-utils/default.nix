
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, canopen-interfaces, lifecycle-msgs, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-canopen-utils";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/kilted/canopen_utils/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "94b0e6808d3823d9a2794dbe2b8e4e42c871a464661afa3b362de57eb5dc961d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ canopen-interfaces lifecycle-msgs rclpy std-msgs ];

  meta = {
    description = "Utils for working with ros2_canopen.";
    license = with lib.licenses; [ asl20 ];
  };
}
