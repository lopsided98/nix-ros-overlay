
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, hls-lfcd-lds-driver, joint-state-publisher, joy-linux, nav2-map-server, raspimouse, raspimouse-description, raspimouse-ros2-examples, robot-state-publisher, rplidar-ros, rviz2, slam-toolbox, urg-node, xacro }:
buildRosPackage {
  pname = "ros-foxy-raspimouse-slam";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_slam_navigation_ros2-release/archive/release/foxy/raspimouse_slam/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e80cc0f7774846930638958c87e802bfbd1f03c9a7b8753616e7902d36e35fa9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ hls-lfcd-lds-driver joint-state-publisher joy-linux nav2-map-server raspimouse raspimouse-description raspimouse-ros2-examples robot-state-publisher rplidar-ros rviz2 slam-toolbox urg-node xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''SLAM package for Raspberry Pi Mouse'';
    license = with lib.licenses; [ asl20 ];
  };
}
