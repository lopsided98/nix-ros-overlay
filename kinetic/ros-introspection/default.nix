
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslint, rosmsg }:
buildRosPackage {
  pname = "ros-kinetic-ros-introspection";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/wu-robotics/roscompile-release/archive/release/kinetic/ros_introspection/1.0.1-0.tar.gz;
    sha256 = "63dedc31de3bbaa2b47341ab8d220120175f509a1d967878a560d4adcd0901da";
  };

  checkInputs = [ roslint ];
  propagatedBuildInputs = [ pythonPackages.requests rosmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_introspection package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
