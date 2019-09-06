
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-genmsg";
  version = "0.5.12";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genmsg-release/archive/release/melodic/genmsg/0.5.12-0.tar.gz";
    name = "0.5.12-0.tar.gz";
    sha256 = "6398881d14a9653d5fccff7733c2162513814bb14350bd7958c5cc2c36201e9e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin pythonPackages.empy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Standalone Python library for generating ROS message and service data structures for various languages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
