
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, uos-common-urdf, uos-diffdrive-teleop, uos-freespace, uos-gazebo-worlds, uos-maps }:
buildRosPackage {
  pname = "ros-melodic-uos-tools";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/melodic/uos_tools/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "ab16981ee26882e551d9587b934b63e5eb7f255f726013d5b5f6bf3c6a3b0c0b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ uos-common-urdf uos-diffdrive-teleop uos-freespace uos-gazebo-worlds uos-maps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various helper utilities not associated with a particular stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
