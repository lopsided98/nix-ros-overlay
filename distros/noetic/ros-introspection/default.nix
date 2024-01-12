
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, roslint, rosmsg }:
buildRosPackage {
  pname = "ros-noetic-ros-introspection";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/noetic/ros_introspection/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "d19b2656c443929ac3bb3d3da82fdd78c34633dee543ba6b58065fe30098dcdf";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ python3Packages.pyyaml python3Packages.requests python3Packages.rospkg rosmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_introspection package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
