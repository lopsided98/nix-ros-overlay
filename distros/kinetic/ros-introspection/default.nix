
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslint, rosmsg }:
buildRosPackage {
  pname = "ros-kinetic-ros-introspection";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/kinetic/ros_introspection/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "75fb94a80296f042faf47233152dc7a651b7f910a62ee3f0c4de9b99e302451d";
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
