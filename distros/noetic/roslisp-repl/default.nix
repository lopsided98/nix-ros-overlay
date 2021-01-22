
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosemacs, roslisp, sbcl, slime-ros, slime-wrapper }:
buildRosPackage {
  pname = "ros-noetic-roslisp-repl";
  version = "0.4.15-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/noetic/roslisp_repl/0.4.15-1.tar.gz";
    name = "0.4.15-1.tar.gz";
    sha256 = "e4f3cce9f9fab5757e030e3b2f62823aa548aca633284d677be17078ca6d9805";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosemacs roslisp sbcl slime-ros slime-wrapper ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a script that launches Emacs with Slime (the
    Superior Lisp Interaction Mode) ready for Lisp development and
    roslisp.'';
    license = with lib.licenses; [ publicDomain ];
  };
}
