
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, unique-id, uuid-msgs }:
buildRosPackage {
  pname = "ros-kinetic-unique-identifier";
  version = "1.0.5";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/unique_identifier-release/archive/release/kinetic/unique_identifier/1.0.5-0.tar.gz";
    name = "1.0.5-0.tar.gz";
    sha256 = "96ac4f491b59d0d3dc724d4707a04b3c6a91358f416476e616090954734bfd51";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ unique-id uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages and interfaces for universally unique identifiers.

    Not needed for wet packages, use only to resolve dry stack
    dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
