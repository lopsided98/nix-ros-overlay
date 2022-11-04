
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-genmsg";
  version = "0.5.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genmsg-release/archive/release/melodic/genmsg/0.5.17-1.tar.gz";
    name = "0.5.17-1.tar.gz";
    sha256 = "cd554bd374a82c88486fed47a82330e40b6046097bde80e9ff02e15d796a3b45";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.setuptools ];
  propagatedBuildInputs = [ catkin pythonPackages.empy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Standalone Python library for generating ROS message and service data structures for various languages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
