
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-config-msgs, catkin, cv-bridge, gtest, libyamlcpp, message-filters, pcl-conversions, pcl-ros, qt5, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf, tf2, tf2-eigen, tf2-ros, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-melodic-points-preprocessor";
  version = "1.14.15-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/core_perception-release/archive/release/melodic/points_preprocessor/1.14.15-1.tar.gz";
    name = "1.14.15-1.tar.gz";
    sha256 = "ee99435ac069adf5eec07434497732d6206558dcde942241b331d44cd478c17b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ autoware-config-msgs cv-bridge gtest libyamlcpp message-filters pcl-conversions pcl-ros qt5.qtbase roscpp roslint rostest sensor-msgs std-msgs tf tf2 tf2-eigen tf2-ros velodyne-pointcloud ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The points_preprocessor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
