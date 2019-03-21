
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-rosclean";
  version = "1.14.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/melodic/rosclean/1.14.6-0.tar.gz;
    sha256 = "f9c6f91fd318a4471c630ba841eca82ee54033ed62be5e7187255f79a51a83c8";
  };

  propagatedBuildInputs = [ pythonPackages.rospkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosclean: cleanup filesystem resources (e.g. log files).'';
    #license = lib.licenses.BSD;
  };
}
