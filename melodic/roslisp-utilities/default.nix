
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp }:
buildRosPackage {
  pname = "ros-melodic-roslisp-utilities";
  version = "0.2.11-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/roslisp_utilities/0.2.11-1.tar.gz;
    sha256 = "9261f37c05225cce75c7c02df2302b893ca72ab8be02a4d7c2ba6b884167eb37";
  };

  propagatedBuildInputs = [ roslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Some utility functionality to interact with ROS using roslisp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
