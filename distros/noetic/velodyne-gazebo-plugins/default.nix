
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-velodyne-gazebo-plugins";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/noetic/velodyne_gazebo_plugins/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "756f181dd70579c0923f254a8031d73ed71f21fb9a24316abdc35b0bfff98d52";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo plugin to provide simulated data from Velodyne laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
