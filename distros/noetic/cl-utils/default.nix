
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sbcl }:
buildRosPackage {
  pname = "ros-noetic-cl-utils";
  version = "0.2.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/noetic/cl_utils/0.2.14-1.tar.gz";
    name = "0.2.14-1.tar.gz";
    sha256 = "9c25d5cbd6698016c63fa549b6a6079574ceb5a8f784ae80134232f7df0872fa";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ sbcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common Lisp utility libraries'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
