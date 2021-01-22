
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-uos-common-urdf";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/kinetic/uos_common_urdf/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "a5f8126702edd3fca2341e78613c2d6bbc777689ece6e9a3cc3a1542e90fa5ed";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-plugins urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains URDF descriptions of the UOS robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
