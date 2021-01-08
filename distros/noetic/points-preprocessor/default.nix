
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-config-msgs, catkin, cv-bridge, gtest, libyamlcpp, message-filters, pcl-conversions, pcl-ros, qt5, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf, tf2, tf2-eigen, tf2-ros, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-noetic-points-preprocessor";
  version = "1.14.9-r3";

  src = fetchurl {
    url = "https://github.com/nobleo/core_perception-release/archive/release/noetic/points_preprocessor/1.14.9-3.tar.gz";
    name = "1.14.9-3.tar.gz";
    sha256 = "a9a726bd85254c09eb5f8a13733b46d8172003354b4ec894437b03ca5f49724e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ autoware-config-msgs cv-bridge gtest libyamlcpp message-filters pcl-conversions pcl-ros qt5.qtbase roscpp roslint rostest sensor-msgs std-msgs tf tf2 tf2-eigen tf2-ros velodyne-pointcloud ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The points_preprocessor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
