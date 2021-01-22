
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, python, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-pybind11-catkin";
  version = "2.4.3-r1";

  src = fetchurl {
    url = "https://github.com/wxmerkt/pybind11_catkin-release/archive/release/kinetic/pybind11_catkin/2.4.3-1.tar.gz";
    name = "2.4.3-1.tar.gz";
    sha256 = "0a578dbe4899f50fad1ef655e0c0eab0fbfa0d0e03dd407aefbf71faa3c2d5ca";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen python pythonPackages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pybind11 package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
