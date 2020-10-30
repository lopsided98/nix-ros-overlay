
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslint, rosmsg }:
buildRosPackage {
  pname = "ros-kinetic-ros-introspection";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/kinetic/ros_introspection/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "40103621911e9b795a4215fca7cdfb8667b513b9ffc1a6fec251555d83829679";
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
