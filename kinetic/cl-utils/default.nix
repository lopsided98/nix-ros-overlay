
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sbcl }:
buildRosPackage {
  pname = "ros-kinetic-cl-utils";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_utils/0.2.10-0.tar.gz;
    sha256 = "c77d00e1fad1eea33dae2d1554f3ddfe1bb426392a96007dd42e1ad6fbf07fcc";
  };

  propagatedBuildInputs = [ sbcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common Lisp utility libraries'';
    #license = lib.licenses.BSD;
  };
}
