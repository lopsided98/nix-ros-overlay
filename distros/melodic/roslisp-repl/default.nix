
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosemacs, roslisp, sbcl, slime-ros, slime-wrapper }:
buildRosPackage {
  pname = "ros-melodic-roslisp-repl";
  version = "0.4.14-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/melodic/roslisp_repl/0.4.14-1.tar.gz";
    name = "0.4.14-1.tar.gz";
    sha256 = "cefb6b7478f0354353b231bd85e2c31fa82dc803833acebb4038f4521e67507f";
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
