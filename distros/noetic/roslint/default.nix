
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-roslint";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslint-release/archive/release/noetic/roslint/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "94a1e257cf7fafc84cfdce9e330aa032ba58c14461cc3f96625605973b5eea43";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake lint commands for ROS packages.

    The lint commands perform static checking of Python or C++ source
    code for errors and standards compliance.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
