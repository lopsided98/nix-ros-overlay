
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-velodyne-gazebo-plugins";
  version = "1.0.12-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/melodic/velodyne_gazebo_plugins/1.0.12-1.tar.gz";
    name = "1.0.12-1.tar.gz";
    sha256 = "eed8811150667a592172088751c437c0594c629fb47b8aef52ab646e0572a562";
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
