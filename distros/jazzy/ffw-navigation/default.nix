
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, behaviortree-cpp, geometry-msgs, nav-msgs, nav2-bringup, nav2-simple-commander, navigation2, rclcpp, rviz2, slam-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-ffw-navigation";
  version = "1.1.21-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_navigation/1.1.21-1.tar.gz";
    name = "1.1.21-1.tar.gz";
    sha256 = "71d94bdf22eff07ee6232c264f6db7bec5eb72112a4bb2fd8772ac75fd44ae94";
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
