
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, uos-common-urdf, uos-diffdrive-teleop, uos-freespace, uos-gazebo-worlds, uos-maps }:
buildRosPackage {
  pname = "ros-melodic-uos-tools";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/melodic/uos_tools/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "9344f44a6c6c074f29f225c67b60535d298d9b7301bce5c589809df92ed0b7d1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ uos-common-urdf uos-diffdrive-teleop uos-freespace uos-gazebo-worlds uos-maps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various helper utilities not associated with a particular stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
