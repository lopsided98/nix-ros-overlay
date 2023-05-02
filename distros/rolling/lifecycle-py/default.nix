
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, lifecycle, lifecycle-msgs, rclpy, ros-testing, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-lifecycle-py";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/lifecycle_py/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "ea71aebf8c53ae7c7aa9446c660a6b2ee65799ad9f0398026d76f8cf988ebd8f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common lifecycle ros-testing ];
  propagatedBuildInputs = [ lifecycle-msgs rclpy std-msgs ];

  meta = {
    description = ''Package containing demos for rclpy lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
