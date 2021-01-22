
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, roslint, rosmsg }:
buildRosPackage {
  pname = "ros-noetic-ros-introspection";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/noetic/ros_introspection/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "db2142d1299b69593e49230abe2a4cff055b0d140e63710d982f57b58a245196";
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
