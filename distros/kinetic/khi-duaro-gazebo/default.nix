
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-khi-duaro-gazebo";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_duaro_gazebo/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "3c620509b6f309b8d95b095318db45c3d2148a8289aaffb3394e93b7b9ce8425";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_duaro_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
