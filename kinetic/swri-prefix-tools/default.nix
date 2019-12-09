
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, catkin }:
buildRosPackage {
  pname = "ros-kinetic-swri-prefix-tools";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_prefix_tools/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "e762b1dae0e87496ef9e97a651a37bbeb4682eea1cfb4508b1a02b1b71eca49b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.psutil ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains scripts that are useful as prefix commands for nodes
    started by roslaunch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
