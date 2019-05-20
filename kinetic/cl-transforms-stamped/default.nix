
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp, cl-transforms, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cl-transforms-stamped";
  version = "0.2.11-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_transforms_stamped/0.2.11-1.tar.gz;
    sha256 = "aa7146524a610d85b63b4007a44177fad3262c769268aef08e43e6bed674e77e";
  };

  propagatedBuildInputs = [ std-msgs roslisp cl-transforms geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of TF datatypes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
