
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-uos-common-urdf";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/melodic/uos_common_urdf/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "41c678b2d59e49d1eb379276f10f0a81a48bb3b8d8c0057ff523311efcf74712";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-plugins urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains URDF descriptions of the UOS robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
