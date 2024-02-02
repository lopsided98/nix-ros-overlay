
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-behavior-tree, nav2-core, nav2-msgs, nav2-util, opennav-coverage, opennav-coverage-bt, opennav-coverage-msgs, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-iron-opennav-coverage-navigator";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/open-navigation/opennav_coverage-release/archive/release/iron/opennav_coverage_navigator/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "1a0ade5ce875717574bf2f6268d523644b0299a7f169422a0ea5b7b934f73aef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common opennav-coverage opennav-coverage-bt ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2-behavior-tree nav2-core nav2-msgs nav2-util opennav-coverage opennav-coverage-bt opennav-coverage-msgs rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A navigator plugin for BT Navigator for coverage planning'';
    license = with lib.licenses; [ asl20 ];
  };
}
