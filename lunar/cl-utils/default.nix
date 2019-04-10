
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sbcl }:
buildRosPackage {
  pname = "ros-lunar-cl-utils";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/lunar/cl_utils/0.2.10-0.tar.gz;
    sha256 = "bb9412d530fea9d634f10af0a6af6f3cc59b2d585e32a16e13f2be74d257caab";
  };

  propagatedBuildInputs = [ sbcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common Lisp utility libraries'';
    #license = lib.licenses.BSD;
  };
}
