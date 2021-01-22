
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-rosclean";
  version = "1.14.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/kinetic/rosclean/1.14.6-1.tar.gz";
    name = "1.14.6-1.tar.gz";
    sha256 = "8d686af0c855858a4ea352a6bb3f733c970c36478358385e4cede44ff1eb825d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.rospkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosclean: cleanup filesystem resources (e.g. log files).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
