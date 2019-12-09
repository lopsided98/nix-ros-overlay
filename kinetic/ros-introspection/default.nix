
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, rosmsg, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-ros-introspection";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/kinetic/ros_introspection/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "63dedc31de3bbaa2b47341ab8d220120175f509a1d967878a560d4adcd0901da";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ rosmsg pythonPackages.requests ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_introspection package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
