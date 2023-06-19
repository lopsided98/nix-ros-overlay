
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-melodic-khi-duaro-gazebo";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/melodic/khi_duaro_gazebo/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "b02ecab06404597fb3d32e4ebb726e66adaadab98ec10470457f832977dd656d";
  };

  buildType = "catkin";
  buildInputs = [ catkin gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_duaro_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
