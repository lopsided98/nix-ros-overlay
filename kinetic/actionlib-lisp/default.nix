
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, roslisp, message-runtime, cl-utils }:
buildRosPackage {
  pname = "ros-kinetic-actionlib-lisp";
  version = "0.2.11-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/actionlib_lisp/0.2.11-1.tar.gz;
    sha256 = "4991335eba22df6f868f0199f7a93aaebc4657c553495a486d3d769d9b426ee8";
  };

  propagatedBuildInputs = [ roslisp message-runtime cl-utils actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''actionlib_lisp is a native implementation of the famous actionlib
   in Common Lisp. It provides a client and a simple server.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
