
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp }:
buildRosPackage {
  pname = "ros-kinetic-roslisp-utilities";
  version = "0.2.11-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/roslisp_utilities/0.2.11-1.tar.gz;
    sha256 = "73d47efe9aa655d16e63c6f512d74f6d65cafdad76092307055042f4dfa08244";
  };

  propagatedBuildInputs = [ roslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Some utility functionality to interact with ROS using roslisp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
