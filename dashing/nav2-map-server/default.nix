
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, yaml-cpp-vendor, ament-cmake-pytest, ament-cmake, rclcpp-lifecycle, launch-ros, ament-lint-common, launch-testing, ament-cmake-gtest, launch, nav2-util, graphicsmagick, nav2-common, tf2, nav-msgs, rclcpp, std-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-map-server";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_map_server/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "09ef2918fdfb1f13924241ea52a87ec278970316416f8ee0a217acc95c66d183";
  };

  buildType = "ament_cmake";
  buildInputs = [ yaml-cpp-vendor rclcpp-lifecycle launch-ros launch-testing nav2-util graphicsmagick nav2-common tf2 nav-msgs rclcpp std-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ yaml-cpp-vendor rclcpp-lifecycle launch-ros launch-testing nav2-util graphicsmagick tf2 nav-msgs rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Refactored map server for ROS2 Navigation'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
