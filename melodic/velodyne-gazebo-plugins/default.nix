
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, tf, sensor-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-velodyne-gazebo-plugins";
  version = "1.0.9";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/melodic/velodyne_gazebo_plugins/1.0.9-0.tar.gz;
    sha256 = "894c7ae31607b6f889b86f2ab0d7c13d0d40c291fb09c73c93f394b96b73cf72";
  };

  propagatedBuildInputs = [ gazebo-ros sensor-msgs tf roscpp ];
  nativeBuildInputs = [ gazebo-ros catkin sensor-msgs tf roscpp ];

  meta = {
    description = ''Gazebo plugin to provide simulated data from Velodyne laser scanners.'';
    #license = lib.licenses.BSD;
  };
}
