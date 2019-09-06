
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, roslisp, message-runtime, cl-utils }:
buildRosPackage {
  pname = "ros-kinetic-actionlib-lisp";
  version = "0.2.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/actionlib_lisp/0.2.12-1.tar.gz";
    name = "0.2.12-1.tar.gz";
    sha256 = "944509127f9f9bcb3feec5235c98617635f3ed829cb0a86416ba92e71af2abe0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cl-utils roslisp message-runtime actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''actionlib_lisp is a native implementation of the famous actionlib
   in Common Lisp. It provides a client and a simple server.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
