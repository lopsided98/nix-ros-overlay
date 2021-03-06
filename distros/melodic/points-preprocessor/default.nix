
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-config-msgs, catkin, cv-bridge, gtest, libyamlcpp, message-filters, pcl-conversions, pcl-ros, qt5, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf, tf2, tf2-eigen, tf2-ros, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-melodic-points-preprocessor";
  version = "1.14.13-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/core_perception-release/archive/release/melodic/points_preprocessor/1.14.13-1.tar.gz";
    name = "1.14.13-1.tar.gz";
    sha256 = "e43cbb9152646cf440ff29a36b6b6107eb1ae8ebfa8ff182bc42c4847733547b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ autoware-config-msgs cv-bridge gtest libyamlcpp message-filters pcl-conversions pcl-ros qt5.qtbase roscpp roslint rostest sensor-msgs std-msgs tf tf2 tf2-eigen tf2-ros velodyne-pointcloud ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The points_preprocessor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
