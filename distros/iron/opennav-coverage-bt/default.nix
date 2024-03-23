
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, behaviortree-cpp-v3, geometry-msgs, nav-msgs, nav2-behavior-tree, nav2-core, nav2-msgs, nav2-util, opennav-coverage-msgs, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-iron-opennav-coverage-bt";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/open-navigation/opennav_coverage-release/archive/release/iron/opennav_coverage_bt/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "341f9a534b2a5e747826b7612ad11189aa58b399766b79f6db47d91872f96ffd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ behaviortree-cpp-v3 geometry-msgs nav-msgs nav2-behavior-tree nav2-core nav2-msgs nav2-util opennav-coverage-msgs rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A set of BT nodes and XMLs for complete coverage planning";
    license = with lib.licenses; [ asl20 ];
  };
}
