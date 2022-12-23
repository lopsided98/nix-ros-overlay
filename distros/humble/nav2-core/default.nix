
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, geometry-msgs, launch, launch-testing, nav-msgs, nav2-common, nav2-costmap-2d, nav2-util, pluginlib, rclcpp, rclcpp-lifecycle, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-nav2-core";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_core/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "2029c85aae39bdd9798812ea2cd42b2df6bd5b24583c8baa9370c625b11879ae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2-costmap-2d nav2-util pluginlib rclcpp rclcpp-lifecycle std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A set of headers for plugins core to the Nav2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
