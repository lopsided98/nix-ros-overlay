
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, behaviortree-cpp-v3, geometry-msgs, nav-msgs, nav2-behavior-tree, nav2-core, nav2-msgs, nav2-util, opennav-docking-msgs, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-humble-opennav-docking-bt";
  version = "0.0.2-r4";

  src = fetchurl {
    url = "https://github.com/open-navigation/opennav_docking-release/archive/release/humble/opennav_docking_bt/0.0.2-4.tar.gz";
    name = "0.0.2-4.tar.gz";
    sha256 = "8b3ceca8c432f6af42eda654e8dd0dc801373fffa2f34bfee152d32a5d2e1325";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ behaviortree-cpp-v3 geometry-msgs nav-msgs nav2-behavior-tree nav2-core nav2-msgs nav2-util opennav-docking-msgs rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A set of BT nodes and XMLs for docking";
    license = with lib.licenses; [ asl20 ];
  };
}
