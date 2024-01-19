
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosemacs, roslisp, sbcl, slime-ros, slime-wrapper }:
buildRosPackage {
  pname = "ros-noetic-roslisp-repl";
  version = "0.4.17-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/noetic/roslisp_repl/0.4.17-1.tar.gz";
    name = "0.4.17-1.tar.gz";
    sha256 = "53a135a265136bbda3ff95f351383138781e1e76f61f6fe0701c09312ec6ed09";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosemacs roslisp sbcl slime-ros slime-wrapper ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a script that launches Emacs with Slime (the
    Superior Lisp Interaction Mode) ready for Lisp development and
    roslisp.'';
    license = with lib.licenses; [ publicDomain ];
  };
}
