
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, slime-wrapper, rosemacs, catkin, roslisp, sbcl, slime-ros }:
buildRosPackage {
  pname = "ros-melodic-roslisp-repl";
  version = "0.4.13";

  src = fetchurl {
    url = https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/melodic/roslisp_repl/0.4.13-0.tar.gz;
    sha256 = "8a3c6a1532c2cda1967b880e2a26474c04966c606d4cf5ef5a1fcbe65f2ccc7f";
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
