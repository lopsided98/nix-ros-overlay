
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, console-bridge, geometry-msgs, rostime, tf2-msgs }:
buildRosPackage {
  pname = "ros-noetic-tf2";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "3b4387986182e964b836145360181a67b1b1a4e6e3e4f29fe77b0ac791bbefe2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ console-bridge geometry-msgs rostime tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "tf2 is the second generation of the transform library, which lets
    the user keep track of multiple coordinate frames over time. tf2
    maintains the relationship between coordinate frames in a tree
    structure buffered in time, and lets the user transform points,
    vectors, etc between any two coordinate frames at any desired
    point in time.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
