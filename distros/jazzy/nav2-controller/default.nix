
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, angles, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nav2-controller";
  version = "1.3.11-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_controller/1.3.11-1.tar.gz";
    name = "1.3.11-1.tar.gz";
    sha256 = "3016f958071f491c9f97698bd5e8dc14d170af16482cb4b914a7932f75b5a486";
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
