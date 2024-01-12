
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, graphicsmagick, launch, launch-ros, launch-testing, nav-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp, rclcpp-lifecycle, std-msgs, tf2, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-nav2-map-server";
  version = "1.1.12-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_map_server/1.1.12-1.tar.gz";
    name = "1.1.12-1.tar.gz";
    sha256 = "a456f8b30e775a48adde7ee72b16aabc7ae2efbbdf450629642e638dae5c0f5f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ graphicsmagick launch-ros launch-testing nav-msgs nav2-msgs nav2-util rclcpp rclcpp-lifecycle std-msgs tf2 yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Refactored map server for ROS2 Navigation'';
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
