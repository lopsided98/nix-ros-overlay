
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-hector-imu-tools";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_imu_tools/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "d86151fc628ce031cdf17872cc156a40fc99d7035cab67845ed996b68258674d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_imu_tools provides some tools for processing IMU messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
