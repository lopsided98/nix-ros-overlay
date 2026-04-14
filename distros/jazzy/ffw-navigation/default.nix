
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, behaviortree-cpp, geometry-msgs, nav-msgs, nav2-bringup, nav2-simple-commander, navigation2, rclcpp, rviz2, slam-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-ffw-navigation";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_navigation/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "0784e8564a48781ba5f1f26de0c7daebfcf3580adaf71e7cbfb5ce0e47b6dd9d";
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
