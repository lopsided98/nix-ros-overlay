
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, catkin }:
buildRosPackage {
  pname = "ros-melodic-rosclean";
  version = "1.14.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/rosclean/1.14.7-1.tar.gz";
    name = "1.14.7-1.tar.gz";
    sha256 = "9c7d4ae5d38c790a8cf65e1110cc0f08a8a667a71627679fc258fafc9d986e85";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.rospkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosclean: cleanup filesystem resources (e.g. log files).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
