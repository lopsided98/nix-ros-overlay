
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, hls-lfcd-lds-driver, nav2-bringup, raspimouse, raspimouse-slam, rplidar-ros, rviz2, urg-node }:
buildRosPackage {
  pname = "ros-humble-raspimouse-navigation";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_slam_navigation_ros2-release/archive/release/humble/raspimouse_navigation/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "075eb97a30504017edb643f751ae63d458668c8548159d4c097b5f45e074d189";
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
