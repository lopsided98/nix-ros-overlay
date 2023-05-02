
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, cl-utils, message-runtime, roslisp }:
buildRosPackage {
  pname = "ros-melodic-actionlib-lisp";
  version = "0.2.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/actionlib_lisp/0.2.15-1.tar.gz";
    name = "0.2.15-1.tar.gz";
    sha256 = "8d97ff9db12b2edae18e66bfad7c8b369878e1328ba87973aed37649cabb6df7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib-msgs cl-utils message-runtime roslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''actionlib_lisp is a native implementation of the famous actionlib
   in Common Lisp. It provides a client and a simple server.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
