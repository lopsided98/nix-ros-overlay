
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, roslisp, message-runtime, cl-utils }:
buildRosPackage {
  pname = "ros-lunar-actionlib-lisp";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/lunar/actionlib_lisp/0.2.10-0.tar.gz;
    sha256 = "4d8ea2860d1c41ca68647762403b4c42b0a1faf9261a204b1f6d437616403224";
  };

  propagatedBuildInputs = [ roslisp message-runtime cl-utils actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''actionlib_lisp is a native implementation of the famous actionlib
   in Common Lisp. It provides a client and a simple server.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
