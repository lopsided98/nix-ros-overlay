
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, lifecycle, lifecycle-msgs, rclpy, ros-testing, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-lifecycle-py";
  version = "0.33.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/lifecycle_py/0.33.1-2.tar.gz";
    name = "0.33.1-2.tar.gz";
    sha256 = "fb7c632cee14d88cc7ac44f1152d7a2268ab48592bf3c2ebfdd77b9cbb8b152b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common lifecycle ros-testing ];
  propagatedBuildInputs = [ lifecycle-msgs rclpy std-msgs ];

  meta = {
    description = ''Package containing demos for rclpy lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
