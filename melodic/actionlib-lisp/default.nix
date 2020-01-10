
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, cl-utils, message-runtime, roslisp }:
buildRosPackage {
  pname = "ros-melodic-actionlib-lisp";
  version = "0.2.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/actionlib_lisp/0.2.12-1.tar.gz";
    name = "0.2.12-1.tar.gz";
    sha256 = "3002af2921ba296af1c5e75037094a24ae484f5cddae30abc5e6ff681669b280";
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
