
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, slime-wrapper, rosemacs, catkin, roslisp, sbcl, slime-ros }:
buildRosPackage {
  pname = "ros-kinetic-roslisp-repl";
  version = "0.4.12";

  src = fetchurl {
    url = https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/kinetic/roslisp_repl/0.4.12-0.tar.gz;
    sha256 = "4eec338f5e19d53dbaf34c7403cfab7e253982bca4f367418828e0ec3441dee3";
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
