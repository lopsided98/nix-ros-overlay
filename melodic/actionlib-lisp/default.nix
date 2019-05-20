
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, roslisp, message-runtime, cl-utils }:
buildRosPackage {
  pname = "ros-melodic-actionlib-lisp";
  version = "0.2.11-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/actionlib_lisp/0.2.11-1.tar.gz;
    sha256 = "5046f94d69a0b3d61c7f7faef39d7c9c17b182dec698f7308512c6668ab083d9";
  };

  propagatedBuildInputs = [ roslisp message-runtime cl-utils actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''actionlib_lisp is a native implementation of the famous actionlib
   in Common Lisp. It provides a client and a simple server.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
