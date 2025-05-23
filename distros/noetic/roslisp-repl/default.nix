
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosemacs, roslisp, sbcl, slime-ros, slime-wrapper }:
buildRosPackage {
  pname = "ros-noetic-roslisp-repl";
  version = "0.4.18-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/noetic/roslisp_repl/0.4.18-1.tar.gz";
    name = "0.4.18-1.tar.gz";
    sha256 = "45e705d76e5e1db1a34be614ec8effbbadadc2d7d8bd0fb8489271b47e07f541";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosemacs roslisp sbcl slime-ros slime-wrapper ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package provides a script that launches Emacs with Slime (the
    Superior Lisp Interaction Mode) ready for Lisp development and
    roslisp.";
    license = with lib.licenses; [ publicDomain ];
  };
}
