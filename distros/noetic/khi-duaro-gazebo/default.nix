
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-noetic-khi-duaro-gazebo";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/noetic/khi_duaro_gazebo/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "139be37089db658702cbacf8d0c4ba718969d515d04f2b88b2d5ac96e65c1035";
  };

  buildType = "catkin";
  buildInputs = [ catkin gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_duaro_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
