
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuid-msgs, catkin, unique-id }:
buildRosPackage {
  pname = "ros-kinetic-unique-identifier";
  version = "1.0.5";

  src = fetchurl {
    url = https://github.com/ros-geographic-info/unique_identifier-release/archive/release/kinetic/unique_identifier/1.0.5-0.tar.gz;
    sha256 = "96ac4f491b59d0d3dc724d4707a04b3c6a91358f416476e616090954734bfd51";
  };

  propagatedBuildInputs = [ uuid-msgs unique-id ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages and interfaces for universally unique identifiers.

    Not needed for wet packages, use only to resolve dry stack
    dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
