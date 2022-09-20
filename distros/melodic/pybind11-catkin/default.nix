
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-pybind11-catkin";
  version = "2.4.3-r1";

  src = fetchurl {
    url = "https://github.com/wxmerkt/pybind11_catkin-release/archive/release/melodic/pybind11_catkin/2.4.3-1.tar.gz";
    name = "2.4.3-1.tar.gz";
    sha256 = "3a64a46a9f2ab342f823f98a3efa8fff416d34d9e86f322cdbe0d2cf8055958d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen python pythonPackages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pybind11 package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
