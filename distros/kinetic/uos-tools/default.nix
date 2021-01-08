
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, uos-common-urdf, uos-diffdrive-teleop, uos-freespace, uos-gazebo-worlds, uos-maps }:
buildRosPackage {
  pname = "ros-kinetic-uos-tools";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/kinetic/uos_tools/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "b0adc72c49218352d9f60d21a2aa6d2f98d1fa0e0910e9acf0d53538220716f0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ uos-common-urdf uos-diffdrive-teleop uos-freespace uos-gazebo-worlds uos-maps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various helper utilities not associated with a particular stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
