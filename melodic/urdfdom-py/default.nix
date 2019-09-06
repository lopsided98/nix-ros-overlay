
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-urdfdom-py";
  version = "0.4.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdfdom_py-release/archive/release/melodic/urdfdom_py/0.4.0-0.tar.gz";
    name = "0.4.0-0.tar.gz";
    sha256 = "9d0663d9bde7a548ba4df458423922d7d1e326a786e50cc33846f0835c4843f6";
  };

  buildType = "catkin";
  buildInputs = [ python ];
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ python pythonPackages.lxml pythonPackages.pyyaml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python implementation of the URDF parser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
