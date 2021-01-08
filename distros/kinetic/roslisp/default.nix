
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-environment, rosgraph-msgs, roslang, rospack, sbcl, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-roslisp";
  version = "1.9.23-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp-release/archive/release/kinetic/roslisp/1.9.23-1.tar.gz";
    name = "1.9.23-1.tar.gz";
    sha256 = "e87b1ece09a86e140c6a4f65df89589c4535f97f1b52975dfca36638513a8b9f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ros-environment rosgraph-msgs roslang rospack sbcl std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Lisp client library for ROS, the Robot Operating System.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
