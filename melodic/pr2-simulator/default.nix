
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-gazebo-plugins, pr2-gazebo, catkin, pr2-controller-configuration-gazebo }:
buildRosPackage {
  pname = "ros-melodic-pr2-simulator";
  version = "2.0.13-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_simulator-release/archive/release/melodic/pr2_simulator/2.0.13-1.tar.gz;
    sha256 = "b414fbc0bca2d0e478d22a680fdb89b6b678525c8f8bf9e9032d210bb06ab35c";
  };

  propagatedBuildInputs = [ pr2-gazebo-plugins pr2-gazebo pr2-controller-configuration-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_simulator package'';
    #license = lib.licenses.BSD;
  };
}
