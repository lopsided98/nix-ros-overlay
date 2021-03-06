
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-config-msgs, catkin, cv-bridge, gtest, libyamlcpp, message-filters, pcl-conversions, pcl-ros, qt5, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf, tf2, tf2-eigen, tf2-ros, velodyne-pcl }:
buildRosPackage {
  pname = "ros-noetic-points-preprocessor";
  version = "1.14.11-r2";

  src = fetchurl {
    url = "https://github.com/nobleo/core_perception-release/archive/release/noetic/points_preprocessor/1.14.11-2.tar.gz";
    name = "1.14.11-2.tar.gz";
    sha256 = "08ac3278a045c28b3fc6763c035db7479b739c4cdd126f18b14cf793fabf9b3e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ autoware-config-msgs cv-bridge gtest libyamlcpp message-filters pcl-conversions pcl-ros qt5.qtbase roscpp roslint rostest sensor-msgs std-msgs tf tf2 tf2-eigen tf2-ros velodyne-pcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The points_preprocessor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
