
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, warthog-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-warthog-simulator";
  version = "0.1.0-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/warthog_simulator-release/archive/release/kinetic/warthog_simulator/0.1.0-1.tar.gz;
    sha256 = "1166245e532598c6b1c52f21a649b31e043bb255283beacfc85f8ed073d9e173";
  };

  propagatedBuildInputs = [ warthog-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Warthog'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
