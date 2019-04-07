
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-wamv-description";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/vmrc-release/archive/release/kinetic/wamv_description/0.3.2-0.tar.gz;
    sha256 = "6400f010d080b918b2a71ab699acf137ec1bb4cbf90c9aa0d12a992ed30dd6fc";
  };

  buildInputs = [ xacro ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a URDF model of WAM-V'';
    #license = lib.licenses.Apache 2.0;
  };
}
