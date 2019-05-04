
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, roslisp, message-runtime, cl-utils }:
buildRosPackage {
  pname = "ros-kinetic-actionlib-lisp";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/actionlib_lisp/0.2.10-0.tar.gz;
    sha256 = "6d9ffe69dbe4239939f00b42cfd20944b4f7705cb6d3f1de999d9350a98a4f5f";
  };

  propagatedBuildInputs = [ roslisp message-runtime cl-utils actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''actionlib_lisp is a native implementation of the famous actionlib
   in Common Lisp. It provides a client and a simple server.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
