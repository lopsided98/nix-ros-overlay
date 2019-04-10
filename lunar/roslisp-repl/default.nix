
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, slime-wrapper, rosemacs, catkin, roslisp, sbcl, slime-ros }:
buildRosPackage {
  pname = "ros-lunar-roslisp-repl";
  version = "0.4.12";

  src = fetchurl {
    url = https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/lunar/roslisp_repl/0.4.12-0.tar.gz;
    sha256 = "2339692320aac6817207ed426fba85fb3d7a8bba2534c1e0568df92e63cbbcb9";
  };

  propagatedBuildInputs = [ slime-wrapper sbcl rosemacs roslisp slime-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a script that launches Emacs with Slime (the
    Superior Lisp Interaction Mode) ready for Lisp development and
    roslisp.'';
    #license = lib.licenses.Public domain;
  };
}
