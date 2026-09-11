
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, lifecycle, lifecycle-msgs, rclpy, ros-testing, std-msgs }:
buildRosPackage {
  pname = "ros-humble-lifecycle-py";
  version = "0.20.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/lifecycle_py/0.20.10-1.tar.gz";
    name = "0.20.10-1.tar.gz";
    sha256 = "a44b60de28d0f75c1137c4b9513fb646d4c7db2eae797874bfa0d86d265a0f87";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common lifecycle ros-testing ];
  propagatedBuildInputs = [ lifecycle-msgs rclpy std-msgs ];

  meta = {
    description = "Package containing demos for rclpy lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
