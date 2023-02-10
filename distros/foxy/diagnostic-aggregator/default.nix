
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, diagnostic-msgs, launch-testing-ament-cmake, launch-testing-ros, pluginlib, rclcpp, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-diagnostic-aggregator";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/foxy/diagnostic_aggregator/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "f4c2d2af57b3fe8e22d6eee193b78986e7e598f948821eb36d9d8648d1ddb3f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python diagnostic-msgs pluginlib rclcpp std-msgs ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''diagnostic_aggregator'';
    license = with lib.licenses; [ bsd3 ];
  };
}
