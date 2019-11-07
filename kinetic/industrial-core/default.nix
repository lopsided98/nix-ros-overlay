
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, industrial-deprecated, industrial-utils, catkin, industrial-robot-client, industrial-msgs, simple-message, industrial-trajectory-filters, industrial-robot-simulator }:
buildRosPackage {
  pname = "ros-kinetic-industrial-core";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/kinetic/industrial_core/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "d186c95618083b6d61d477140f19fcf8f373d0e4c9c1ad56a9d802555d8ab814";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ industrial-deprecated industrial-utils industrial-robot-client industrial-msgs simple-message industrial-trajectory-filters industrial-robot-simulator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-Industrial core stack contains packages and libraries for supporing industrial systems'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
