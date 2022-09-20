
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-ros-planning-interface, roscpp, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-pincher-arm-moveit-demos";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/pincher_arm-release/archive/release/melodic/pincher_arm_moveit_demos/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "71db59332ad1cd4687367377a52827753a0b625b2dfa4f8bef31d53440daec93";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-core moveit-ros-planning-interface roscpp tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Moveit demos for the PhantomX Pincher arm.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
