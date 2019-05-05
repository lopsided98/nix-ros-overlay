
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuid-msgs, catkin, unique-id }:
buildRosPackage {
  pname = "ros-lunar-unique-identifier";
  version = "1.0.6";

  src = fetchurl {
    url = https://github.com/ros-geographic-info/unique_identifier-release/archive/release/lunar/unique_identifier/1.0.6-0.tar.gz;
    sha256 = "666bceb4c7e46d8f3c2dc2cf4f42769949659fb86d1c4dc5091a01efeeaafe23";
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
