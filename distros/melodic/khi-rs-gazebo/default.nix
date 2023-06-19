
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-melodic-khi-rs-gazebo";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/melodic/khi_rs_gazebo/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "35a7b635f92903ef6eabfe0a4cf8d41c8bfdcb47dd12f662f6781c2529b487c5";
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
