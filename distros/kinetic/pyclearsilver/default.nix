
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-pyclearsilver";
  version = "1.0.7";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/web_interface-release/archive/release/kinetic/pyclearsilver/1.0.7-0.tar.gz";
    name = "1.0.7-0.tar.gz";
    sha256 = "875e4c83d801c10d9fe1ec2e2df07b04a4792854e4aa50fadbdf03e7ec4fcb89";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A bunch of libraries to interface clearsilver with python and many databases.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
