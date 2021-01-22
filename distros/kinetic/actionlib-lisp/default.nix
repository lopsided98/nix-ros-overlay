
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, cl-utils, message-runtime, roslisp }:
buildRosPackage {
  pname = "ros-kinetic-actionlib-lisp";
  version = "0.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/actionlib_lisp/0.2.13-1.tar.gz";
    name = "0.2.13-1.tar.gz";
    sha256 = "f8cf0b2aa6507254ba07dc32ed65a95798af11fe4fd7ef3ff96a749ccf3306e7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib-msgs cl-utils message-runtime roslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''actionlib_lisp is a native implementation of the famous actionlib
   in Common Lisp. It provides a client and a simple server.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
