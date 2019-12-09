
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, rosmsg, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-ros-introspection";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/melodic/ros_introspection/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "becacb2e9cb821bffb018fe5bb49612b59152cd46067ab47a1fa5fbce2d9443a";
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
