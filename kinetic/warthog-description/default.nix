
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, robot-state-publisher, roslaunch, xacro }:
buildRosPackage {
  pname = "ros-kinetic-warthog-description";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/warthog-release/archive/release/kinetic/warthog_description/0.1.0-0.tar.gz;
    sha256 = "5074f3fe72d4156c322f59a28874ca9636d3ce2b2ec76048532f6d1a00832cc5";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ urdf xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Warthog'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
