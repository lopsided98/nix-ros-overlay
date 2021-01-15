
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cl-transforms, roslisp }:
buildRosPackage {
  pname = "ros-kinetic-cl-urdf";
  version = "0.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_urdf/0.2.13-1.tar.gz";
    name = "0.2.13-1.tar.gz";
    sha256 = "70ffc640db6202786e1648cbc731e37279be559d5a51eb1826224f8fc0605a29";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cl-transforms roslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cl_urdf'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
