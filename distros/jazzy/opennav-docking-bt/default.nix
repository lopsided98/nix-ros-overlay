
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, behaviortree-cpp, geometry-msgs, nav-msgs, nav2-behavior-tree, nav2-core, nav2-msgs, nav2-util, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-jazzy-opennav-docking-bt";
  version = "1.3.5-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/opennav_docking_bt/1.3.5-1.tar.gz";
    name = "1.3.5-1.tar.gz";
    sha256 = "3310267a756c83ddc6511d53e781e1e3b7744d6605ad8d362573ba5430632baa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ behaviortree-cpp geometry-msgs nav-msgs nav2-behavior-tree nav2-core nav2-msgs nav2-util rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A set of BT nodes and XMLs for docking";
    license = with lib.licenses; [ asl20 ];
  };
}
