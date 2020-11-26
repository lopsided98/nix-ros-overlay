
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-config-msgs, catkin, cv-bridge, gtest, libyamlcpp, message-filters, pcl-conversions, pcl-ros, qt5, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf, tf2, tf2-eigen, tf2-ros, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-noetic-points-preprocessor";
  version = "1.14.9-r2";

  src = fetchurl {
    url = "https://github.com/nobleo/core_perception-release/archive/release/noetic/points_preprocessor/1.14.9-2.tar.gz";
    name = "1.14.9-2.tar.gz";
    sha256 = "94638e27cf0a363e87e96b3212b926c00a5ea37dfd470f41330e243879c299d1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ autoware-config-msgs cv-bridge gtest libyamlcpp message-filters pcl-conversions pcl-ros qt5.qtbase roscpp roslint rostest sensor-msgs std-msgs tf tf2 tf2-eigen tf2-ros velodyne-pointcloud ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The points_preprocessor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
