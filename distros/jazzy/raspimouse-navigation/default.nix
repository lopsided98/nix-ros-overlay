
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, hls-lfcd-lds-driver, nav2-bringup, raspimouse, raspimouse-slam, rplidar-ros, rviz2, urg-node }:
buildRosPackage {
  pname = "ros-jazzy-raspimouse-navigation";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_slam_navigation_ros2-release/archive/release/jazzy/raspimouse_navigation/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "a2f446f36ec5dcd4271050ded705ed15ccb78f7d9bd8d6a49990fe926541d324";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ hls-lfcd-lds-driver nav2-bringup raspimouse raspimouse-slam rplidar-ros rviz2 urg-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Navigation package for Raspberry Pi Mouse";
    license = with lib.licenses; [ asl20 ];
  };
}
