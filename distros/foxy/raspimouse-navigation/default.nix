
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, hls-lfcd-lds-driver, nav2-bringup, raspimouse, raspimouse-slam, rplidar-ros, rviz2, urg-node }:
buildRosPackage {
  pname = "ros-foxy-raspimouse-navigation";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_slam_navigation_ros2-release/archive/release/foxy/raspimouse_navigation/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "3d43298d5944eb355eaa6c0b8fac39b46be71d4ab337ca22dfcaef7cd19f374c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ hls-lfcd-lds-driver nav2-bringup raspimouse raspimouse-slam rplidar-ros rviz2 urg-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Navigation package for Raspberry Pi Mouse'';
    license = with lib.licenses; [ asl20 ];
  };
}
