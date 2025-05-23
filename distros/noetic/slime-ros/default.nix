
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosemacs, roslisp, sbcl, slime-wrapper }:
buildRosPackage {
  pname = "ros-noetic-slime-ros";
  version = "0.4.18-r1";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/noetic/slime_ros/0.4.18-1.tar.gz";
    name = "0.4.18-1.tar.gz";
    sha256 = "4a1041139d4964558e2dd9af6ab9273b1d624d37da266e604473003d9bd11097";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosemacs roslisp sbcl slime-wrapper ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Extensions for slime to assist in working with ROS packages";
    license = with lib.licenses; [ publicDomain ];
  };
}
