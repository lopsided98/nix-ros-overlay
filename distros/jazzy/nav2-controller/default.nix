
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, angles, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nav2-controller";
  version = "1.3.5-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_controller/1.3.5-1.tar.gz";
    name = "1.3.5-1.tar.gz";
    sha256 = "2e6deb23d4b4232a988d1fc66e75f6050d3d67f6752e0a5bf800663b98b19c2b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles nav-2d-msgs nav-2d-utils nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp rclcpp-action std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller action interface";
    license = with lib.licenses; [ asl20 ];
  };
}
