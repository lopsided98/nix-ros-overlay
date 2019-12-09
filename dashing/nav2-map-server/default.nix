
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, yaml-cpp-vendor, rclcpp-lifecycle, ament-cmake-pytest, launch, std-msgs, launch-testing, launch-ros, ament-lint-common, ament-cmake, ament-cmake-gtest, nav2-common, tf2, graphicsmagick, nav2-util, rclcpp, nav-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-map-server";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_map_server/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "09ef2918fdfb1f13924241ea52a87ec278970316416f8ee0a217acc95c66d183";
  };

  buildType = "ament_cmake";
  buildInputs = [ yaml-cpp-vendor rclcpp-lifecycle launch-testing std-msgs launch-ros nav2-common tf2 graphicsmagick nav2-util rclcpp nav-msgs ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ yaml-cpp-vendor rclcpp-lifecycle std-msgs launch-testing launch-ros tf2 graphicsmagick nav2-util rclcpp nav-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Refactored map server for ROS2 Navigation'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
