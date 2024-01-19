
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-config-msgs, catkin, cv-bridge, gtest, message-filters, pcl-conversions, pcl-ros, qt5, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf, tf2, tf2-eigen, tf2-ros, velodyne-pcl, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-points-preprocessor";
  version = "1.14.14-r3";

  src = fetchurl {
    url = "https://github.com/nobleo/core_perception-release/archive/release/noetic/points_preprocessor/1.14.14-3.tar.gz";
    name = "1.14.14-3.tar.gz";
    sha256 = "467ca95fcfe2d11039984820c368b26d6f212c051347dcd2d31843939e2767ac";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ autoware-config-msgs cv-bridge gtest message-filters pcl-conversions pcl-ros qt5.qtbase roscpp roslint rostest sensor-msgs std-msgs tf tf2 tf2-eigen tf2-ros velodyne-pcl yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The points_preprocessor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
