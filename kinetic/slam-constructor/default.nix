
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, geometry-msgs, std-msgs, rosbag-storage, tf, catkin, roscpp, gtest, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-slam-constructor";
  version = "0.9.3";

  src = fetchurl {
    url = "https://github.com/OSLL/slam_constructor-release/archive/release/kinetic/slam_constructor/0.9.3-0.tar.gz";
    name = "0.9.3-0.tar.gz";
    sha256 = "87b75373121fee8d6ecc36e9d3336f948cb16e99bdca089907e1b72c00c83ab2";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters geometry-msgs std-msgs rosbag-storage tf roscpp nav-msgs ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs std-msgs rosbag-storage tf roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package provides implementation of several 2D laser-based simultaneous
    localization and mapping (SLAM) algorithms (tinySLAM, vinySLAM, GMapping)
    created with the SLAM constructor framework. The framework provides common
    SLAM components that may help to develop custom SLAM algorithms and can be
    accessed by provided links.'';
    license = with lib.licenses; [ mit ];
  };
}
