
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, catkin, console-bridge, rostime, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-tf2";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/lunar/tf2/0.5.20-0.tar.gz;
    sha256 = "cd6de6dd35c0de5a438dffe72740414d51a985536b556270b3f4a3c1fad2ff29";
  };

  buildInputs = [ console-bridge tf2-msgs rostime geometry-msgs ];
  propagatedBuildInputs = [ console-bridge tf2-msgs rostime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2 is the second generation of the transform library, which lets
    the user keep track of multiple coordinate frames over time. tf2
    maintains the relationship between coordinate frames in a tree
    structure buffered in time, and lets the user transform points,
    vectors, etc between any two coordinate frames at any desired
    point in time.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
