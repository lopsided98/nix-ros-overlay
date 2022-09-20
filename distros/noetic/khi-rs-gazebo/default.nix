
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-noetic-khi-rs-gazebo";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/noetic/khi_rs_gazebo/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "26191af79756afa3964934a023f720205ede62cc2203746726d0cfada5312fb7";
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
