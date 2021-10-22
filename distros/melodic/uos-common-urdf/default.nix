
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-uos-common-urdf";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/melodic/uos_common_urdf/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "649e62977084896ee211f71a8dfe3771d6a1e20846242c172a190539a27d25c3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-plugins urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains URDF descriptions of the UOS robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
