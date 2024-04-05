
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, lifecycle, lifecycle-msgs, rclpy, ros-testing, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-lifecycle-py";
  version = "0.33.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/lifecycle_py/0.33.2-1.tar.gz";
    name = "0.33.2-1.tar.gz";
    sha256 = "194bbfccb63404baf7e21dd2766db0572e593957cc4af3d4e9d0e8ebcf19a21c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common lifecycle ros-testing ];
  propagatedBuildInputs = [ lifecycle-msgs rclpy std-msgs ];

  meta = {
    description = "Package containing demos for rclpy lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
