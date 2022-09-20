
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-noetic-khi-duaro-gazebo";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/noetic/khi_duaro_gazebo/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "3b9c35cc2850ce1f3b7b7686ddc507688b73c7f1555d17aa9fadc7c859b4657d";
  };

  buildType = "catkin";
  buildInputs = [ catkin gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_duaro_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
