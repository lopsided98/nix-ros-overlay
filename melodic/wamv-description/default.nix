
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-wamv-description";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/melodic/wamv_description/1.0.1-0.tar.gz;
    sha256 = "5bbe5d0b1c2b60abcab2525119219cf28f20b962132593003c885efddb0bbbeb";
  };

  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin xacro ];

  meta = {
    description = ''This package provides a URDF model of WAM-V'';
    #license = lib.licenses.Apache 2.0;
  };
}
