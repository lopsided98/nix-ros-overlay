
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cras-cpp-common, geometry-msgs, nav-msgs, nodelet, sensor-msgs, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-cras-imu-tools";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/cras_imu_tools/-/archive/release/melodic/cras_imu_tools/1.0.1-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "9b817cebe3bb0d2d3b3a982edab8497eedb9a4f8f19c91120480c5fc2f510e0f";
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
