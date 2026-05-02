
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, canopen-interfaces, lifecycle-msgs, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-canopen-utils";
  version = "0.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_utils/0.3.2-2.tar.gz";
    name = "0.3.2-2.tar.gz";
    sha256 = "6bee80108729388bf9693876b52e07d7caecc2cb1225d2145164ee0fa507e659";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ canopen-interfaces lifecycle-msgs rclpy std-msgs ];

  meta = {
    description = "Utils for working with ros2_canopen.";
    license = with lib.licenses; [ asl20 ];
  };
}
