
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, geometry-msgs, launch, launch-testing, nav-msgs, nav2-common, nav2-costmap-2d, nav2-util, pluginlib, rclcpp, rclcpp-lifecycle, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-nav2-core";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_core/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "1c7a899db880e4d15e28a5fa7e37a8d0a815e987ce90583eea8341995535253f";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2-costmap-2d nav2-util pluginlib rclcpp rclcpp-lifecycle std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A set of headers for plugins core to the Nav2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
