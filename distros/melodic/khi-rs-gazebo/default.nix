
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-melodic-khi-rs-gazebo";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/melodic/khi_rs_gazebo/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "5f8d1aca50da477a7b8f95fbc542d51f37acf6c9bd6df5e090e1f994554cd00a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
