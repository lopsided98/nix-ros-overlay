
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, roseus, collada-urdf, catkin, pythonPackages, rostest }:
buildRosPackage {
  pname = "ros-kinetic-eusurdf";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_model_tools-release/archive/release/kinetic/eusurdf/0.4.2-0.tar.gz;
    sha256 = "918ffb3836ea2109887da5f3b0e49ca435efd0a338766e0ffcc5efa252dca3d1";
  };

  propagatedBuildInputs = [ gazebo-ros rostest collada-urdf pythonPackages.lxml ];
  nativeBuildInputs = [ roseus rostest gazebo-ros collada-urdf pythonPackages.lxml catkin ];

  meta = {
    description = ''urdf models converted from euslisp'';
    #license = lib.licenses.BSD;
  };
}
