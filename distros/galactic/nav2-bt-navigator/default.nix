
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, behaviortree-cpp-v3, geometry-msgs, nav-msgs, nav2-behavior-tree, nav2-common, nav2-core, nav2-msgs, nav2-util, rclcpp, rclcpp-action, rclcpp-lifecycle, std-msgs, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-nav2-bt-navigator";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_bt_navigator/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "cda90ff60ed8e37868ec51fadd5e05ea842dcd59370dd84e5b89c4ec2d94363f";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common std-srvs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ behaviortree-cpp-v3 geometry-msgs nav-msgs nav2-behavior-tree nav2-core nav2-msgs nav2-util rclcpp rclcpp-action rclcpp-lifecycle std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
