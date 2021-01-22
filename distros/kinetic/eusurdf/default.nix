
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, collada-urdf, gazebo-ros, pythonPackages, roseus, rostest }:
buildRosPackage {
  pname = "ros-kinetic-eusurdf";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/kinetic/eusurdf/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "918ffb3836ea2109887da5f3b0e49ca435efd0a338766e0ffcc5efa252dca3d1";
  };

  buildType = "catkin";
  buildInputs = [ roseus ];
  propagatedBuildInputs = [ collada-urdf gazebo-ros pythonPackages.lxml rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''urdf models converted from euslisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
