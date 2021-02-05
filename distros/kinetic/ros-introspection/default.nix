
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslint, rosmsg }:
buildRosPackage {
  pname = "ros-kinetic-ros-introspection";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/kinetic/ros_introspection/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "b8bd7d851010bd2cda0652a4dc29f463ab60c11c3b524e0809bf5eb62d04181a";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ pythonPackages.pyyaml pythonPackages.requests pythonPackages.rospkg rosmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_introspection package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
