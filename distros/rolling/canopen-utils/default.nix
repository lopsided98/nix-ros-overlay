
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, canopen-interfaces, lifecycle-msgs, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-canopen-utils";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_utils/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "223ced34a40d7f3071bcbbf9f03ce94f0cdb6d35b3457415044f5ab30bfc1c51";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ canopen-interfaces lifecycle-msgs rclpy std-msgs ];

  meta = {
    description = ''Utils for working with ros2_canopen.'';
    license = with lib.licenses; [ asl20 ];
  };
}
