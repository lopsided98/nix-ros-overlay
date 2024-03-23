
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, hls-lfcd-lds-driver, joint-state-publisher, joy-linux, nav2-map-server, raspimouse, raspimouse-description, raspimouse-ros2-examples, robot-state-publisher, rplidar-ros, rviz2, slam-toolbox, urg-node, xacro }:
buildRosPackage {
  pname = "ros-humble-raspimouse-slam";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_slam_navigation_ros2-release/archive/release/humble/raspimouse_slam/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "783dfc6c4ac4cf0c97a22bcb9960f20a9603a9f4c76fe23a658e93d222a16ab1";
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
