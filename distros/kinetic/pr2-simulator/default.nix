
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-controller-configuration-gazebo, pr2-gazebo, pr2-gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-pr2-simulator";
  version = "2.0.11";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_simulator-release/archive/release/kinetic/pr2_simulator/2.0.11-0.tar.gz";
    name = "2.0.11-0.tar.gz";
    sha256 = "2c99e6d201c071f9f039991138dada3a18c31dc85bda8a0deab93084d25c5e3e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-controller-configuration-gazebo pr2-gazebo pr2-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_simulator package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
