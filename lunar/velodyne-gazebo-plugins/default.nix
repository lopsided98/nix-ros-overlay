
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, sensor-msgs, catkin, roscpp, tf }:
buildRosPackage {
  pname = "ros-lunar-velodyne-gazebo-plugins";
  version = "1.0.9";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/lunar/velodyne_gazebo_plugins/1.0.9-0.tar.gz;
    sha256 = "4f1ecfcf91ff9700afbdb914175d4a9191e38dd0d865b6cdbe185bdc6c090688";
  };

  buildInputs = [ gazebo-ros sensor-msgs tf roscpp ];
  propagatedBuildInputs = [ gazebo-ros sensor-msgs tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo plugin to provide simulated data from Velodyne laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
