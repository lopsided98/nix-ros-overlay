
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, graphicsmagick, launch, launch-ros, launch-testing, nav-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp, rclcpp-lifecycle, std-msgs, tf2, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-nav2-map-server";
  version = "1.1.14-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_map_server/1.1.14-1.tar.gz";
    name = "1.1.14-1.tar.gz";
    sha256 = "f1465a9720b9d908c3fe33e7fd464ed7221701e7a019b38ae24c5bf0d9a1d41c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ graphicsmagick launch-ros launch-testing nav-msgs nav2-msgs nav2-util rclcpp rclcpp-lifecycle std-msgs tf2 yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Refactored map server for ROS2 Navigation";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
