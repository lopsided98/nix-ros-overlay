
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-rosclean";
  version = "1.14.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/rosclean/1.14.9-1.tar.gz";
    name = "1.14.9-1.tar.gz";
    sha256 = "69d89a7d3199d11214c208c177f56e7cbcc42fb349fe76df6992c869ceca5bbe";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  propagatedBuildInputs = [ pythonPackages.rospkg ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''rosclean: cleanup filesystem resources (e.g. log files).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
