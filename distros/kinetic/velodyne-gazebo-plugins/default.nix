
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-velodyne-gazebo-plugins";
  version = "1.0.9";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/kinetic/velodyne_gazebo_plugins/1.0.9-0.tar.gz";
    name = "1.0.9-0.tar.gz";
    sha256 = "9366456f31e82a1abd305fb89722153c3ae43fe52a486e5de4a64b8c9f82273c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo plugin to provide simulated data from Velodyne laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
