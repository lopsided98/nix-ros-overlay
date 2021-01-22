
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, recordit, rviz-recorder-buttons }:
buildRosPackage {
  pname = "ros-kinetic-robot-recorder";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/ipa-jfh/robot_recorder-release/archive/release/kinetic/robot_recorder/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "c777f0279eb31ea57d63fc158a3f0c541c7dfdaf0810add126bb1d75a366529d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ recordit rviz-recorder-buttons ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains all essential packages for the robot recorder.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
