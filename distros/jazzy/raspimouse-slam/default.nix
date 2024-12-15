
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, hls-lfcd-lds-driver, joint-state-publisher, joy-linux, nav2-map-server, raspimouse, raspimouse-description, raspimouse-ros2-examples, robot-state-publisher, rplidar-ros, rviz2, slam-toolbox, urg-node, xacro }:
buildRosPackage {
  pname = "ros-jazzy-raspimouse-slam";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_slam_navigation_ros2-release/archive/release/jazzy/raspimouse_slam/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "c5204a784814f20d4993ca695844ab4870d2097cbd17bfc99d8c5a4766aa845d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ hls-lfcd-lds-driver joint-state-publisher joy-linux nav2-map-server raspimouse raspimouse-description raspimouse-ros2-examples robot-state-publisher rplidar-ros rviz2 slam-toolbox urg-node xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "SLAM package for Raspberry Pi Mouse";
    license = with lib.licenses; [ asl20 ];
  };
}
