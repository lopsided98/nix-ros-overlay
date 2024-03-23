
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, nav2-bringup, nav2-util, opennav-coverage, opennav-coverage-bt, opennav-coverage-msgs, opennav-coverage-navigator, opennav-row-coverage, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-iron-opennav-coverage-demo";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/open-navigation/opennav_coverage-release/archive/release/iron/opennav_coverage_demo/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "edec5efc782dd938d1de22a10a9df8eb0ad5f2277b43ad52e7d2b73bf1654170";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-bringup nav2-util opennav-coverage opennav-coverage-bt opennav-coverage-msgs opennav-coverage-navigator opennav-row-coverage rclcpp rclcpp-action ];

  meta = {
    description = "A demo using the Coverage Server, BT Nodes, and Coverage Navigator";
    license = with lib.licenses; [ asl20 ];
  };
}
