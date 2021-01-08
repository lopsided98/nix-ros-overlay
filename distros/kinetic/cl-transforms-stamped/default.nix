
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cl-transforms, geometry-msgs, roslisp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cl-transforms-stamped";
  version = "0.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_transforms_stamped/0.2.13-1.tar.gz";
    name = "0.2.13-1.tar.gz";
    sha256 = "e27c4d5cbc02b124f938350e41bd4cba2dbc354dce5d0d5c34f43d14b8a82c2c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cl-transforms geometry-msgs roslisp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of TF datatypes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
