
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, raspimouse-navigation, raspimouse-slam }:
buildRosPackage {
  pname = "ros-humble-raspimouse-slam-navigation";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_slam_navigation_ros2-release/archive/release/humble/raspimouse_slam_navigation/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "32722e53ba88069bdcfb9ac83203c56daaddc07e2113f52c4ba63d542475e541";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ raspimouse-navigation raspimouse-slam ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''SLAM and navigation packages for Raspberry Pi Mouse V3'';
    license = with lib.licenses; [ asl20 ];
  };
}
