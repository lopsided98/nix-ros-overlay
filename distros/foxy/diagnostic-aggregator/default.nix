
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, diagnostic-msgs, launch-testing-ament-cmake, launch-testing-ros, pluginlib, rclcpp, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-diagnostic-aggregator";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/foxy/diagnostic_aggregator/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "36f9ceeb869ae722d3f1ba5c8c486fe7165e4b963d8a28e17d653a3049795c43";
  };

  buildType = "ament_cmake";
  buildInputs = [ diagnostic-msgs pluginlib rclcpp std-msgs ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''diagnostic_aggregator'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
