
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cras-cpp-common, geometry-msgs, nav-msgs, nodelet, sensor-msgs, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-cras-imu-tools";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/cras_imu_tools/-/archive/release/noetic/cras_imu_tools/1.0.1-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "1ca6633c70f3038c7ab5796510653e977a6f25f7fd9669c960a63c5e7750295c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cras-cpp-common geometry-msgs nav-msgs nodelet sensor-msgs std-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools for working with IMU data'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
