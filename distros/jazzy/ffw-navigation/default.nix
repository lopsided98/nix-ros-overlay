
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, behaviortree-cpp, geometry-msgs, nav-msgs, nav2-bringup, nav2-simple-commander, navigation2, rclcpp, rviz2, slam-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-ffw-navigation";
  version = "1.1.20-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_navigation/1.1.20-1.tar.gz";
    name = "1.1.20-1.tar.gz";
    sha256 = "53a9a62b26b81295fae363efbd83f3d2f0a7c21ab80197d7dde510753caa84b3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ behaviortree-cpp geometry-msgs nav-msgs nav2-bringup nav2-simple-commander navigation2 rclcpp rviz2 slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ffw_navigation";
    license = with lib.licenses; [ asl20 ];
  };
}
