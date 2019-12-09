
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, catkin, tf2-msgs, rostime, console-bridge }:
buildRosPackage {
  pname = "ros-melodic-tf2";
  version = "0.6.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2/0.6.5-0.tar.gz";
    name = "0.6.5-0.tar.gz";
    sha256 = "f6776b600f397998cef387bfa57b6ad3e1e396f7a0015521ba7389ce2ca211c4";
  };

  buildType = "catkin";
  buildInputs = [ rostime geometry-msgs console-bridge tf2-msgs ];
  propagatedBuildInputs = [ rostime geometry-msgs console-bridge tf2-msgs ];
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
