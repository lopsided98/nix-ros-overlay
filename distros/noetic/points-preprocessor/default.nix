
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-config-msgs, catkin, cv-bridge, gtest, libyamlcpp, message-filters, pcl-conversions, pcl-ros, qt5, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf, tf2, tf2-eigen, tf2-ros, velodyne-pcl }:
buildRosPackage {
  pname = "ros-noetic-points-preprocessor";
  version = "1.14.10-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/core_perception-release/archive/release/noetic/points_preprocessor/1.14.10-1.tar.gz";
    name = "1.14.10-1.tar.gz";
    sha256 = "6e5c22a3dc855829fb1b62ed64d9031ddb35193ffec0ae4073028393350d3a07";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ autoware-config-msgs cv-bridge gtest libyamlcpp message-filters pcl-conversions pcl-ros qt5.qtbase roscpp roslint rostest sensor-msgs std-msgs tf tf2 tf2-eigen tf2-ros velodyne-pcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The points_preprocessor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
