
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosemacs, roslisp-repl, slime-ros, slime-wrapper }:
buildRosPackage {
  pname = "ros-melodic-ros-emacs-utils";
  version = "0.4.14-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/melodic/ros_emacs_utils/0.4.14-1.tar.gz";
    name = "0.4.14-1.tar.gz";
    sha256 = "16c4f4392ebf6bdd5bbf145fe60fe6829255850fa1502dd1926572e44f9be447";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosemacs roslisp-repl slime-ros slime-wrapper ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage of Emacs utils for ROS.
    Only there for simplifying the release process.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
