
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-velodyne-gazebo-plugins";
  version = "1.0.13-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/noetic/velodyne_gazebo_plugins/1.0.13-1.tar.gz";
    name = "1.0.13-1.tar.gz";
    sha256 = "0f5d1abda7b2692281380e50b0446399718898b4ac4f49ec35253f411eafb812";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo plugin to provide simulated data from Velodyne laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
