
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, roslint, rosmsg }:
buildRosPackage {
  pname = "ros-noetic-ros-introspection";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/noetic/ros_introspection/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "6ac7e259bd429f21e55947434a3965e9646af9ad2dfbecc66528a389f7cc1e01";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ python3Packages.pyyaml python3Packages.requests python3Packages.rospkg rosmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_introspection package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
