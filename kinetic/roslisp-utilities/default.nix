
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp }:
buildRosPackage {
  pname = "ros-kinetic-roslisp-utilities";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/roslisp_utilities/0.2.10-0.tar.gz;
    sha256 = "cd6e49104a91f3b656d4b320983a1fcaa252b42d7667df6b752c8c71aa0e1eca";
  };

  propagatedBuildInputs = [ roslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Some utility functionality to interact with ROS using roslisp.'';
    #license = lib.licenses.BSD;
  };
}
