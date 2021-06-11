
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, graphicsmagick, launch, launch-ros, launch-testing, nav-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp, rclcpp-lifecycle, std-msgs, tf2, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-galactic-nav2-map-server";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_map_server/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "0ef80058086975dd9fcaf14b1f3d989123af53d181e4e53ce52bd3f4769a78c5";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ graphicsmagick launch-ros launch-testing nav-msgs nav2-msgs nav2-util rclcpp rclcpp-lifecycle std-msgs tf2 yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Refactored map server for ROS2 Navigation'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
