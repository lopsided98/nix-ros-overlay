
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp }:
buildRosPackage {
  pname = "ros-melodic-roslisp-utilities";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/roslisp_utilities/0.2.10-0.tar.gz;
    sha256 = "8ba55d5f2be13e9efc3be9f7ab4d78897f917e388d291f75f627642034621103";
  };

  propagatedBuildInputs = [ roslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Some utility functionality to interact with ROS using roslisp.'';
    #license = lib.licenses.BSD;
  };
}
