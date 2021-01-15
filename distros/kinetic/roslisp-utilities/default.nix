
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp }:
buildRosPackage {
  pname = "ros-kinetic-roslisp-utilities";
  version = "0.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/roslisp_utilities/0.2.13-1.tar.gz";
    name = "0.2.13-1.tar.gz";
    sha256 = "b6f9ac5f043171e5e72fed7a21c4e99d805f92875e465701aaa386b3d9246666";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Some utility functionality to interact with ROS using roslisp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
