
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, roslisp, message-runtime, cl-utils }:
buildRosPackage {
  pname = "ros-melodic-actionlib-lisp";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/actionlib_lisp/0.2.10-0.tar.gz;
    sha256 = "f7d69b33db5ed3ca13e17699bb8ec2fb18612b3f193f7bbaa46b9be73877a7bc";
  };

  propagatedBuildInputs = [ roslisp message-runtime cl-utils actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''actionlib_lisp is a native implementation of the famous actionlib
   in Common Lisp. It provides a client and a simple server.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
