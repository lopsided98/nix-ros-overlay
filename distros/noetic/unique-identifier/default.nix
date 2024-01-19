
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, unique-id, uuid-msgs }:
buildRosPackage {
  pname = "ros-noetic-unique-identifier";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/unique_identifier-release/archive/release/noetic/unique_identifier/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "8e57df192afc4bee7a46c3f9e80251bf4b8c555f96b36154ea15474ab1d2848f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ unique-id uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages and interfaces for universally unique identifiers.

    Not needed for wet packages, use only to resolve dry stack
    dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
