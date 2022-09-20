
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-genmsg";
  version = "0.5.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genmsg-release/archive/release/melodic/genmsg/0.5.16-1.tar.gz";
    name = "0.5.16-1.tar.gz";
    sha256 = "8f9ec18a26b026d0eeb1ae55d7da9c3f3edcf0968cadff6799fc11da62415fef";
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
