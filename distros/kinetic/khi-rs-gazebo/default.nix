
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-khi-rs-gazebo";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_rs_gazebo/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "20ac49b5b30593e669743da9e1520e57cf71154bcd6895413bf5c0072eb937bb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
