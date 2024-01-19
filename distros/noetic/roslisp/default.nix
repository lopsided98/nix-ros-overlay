
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-environment, rosgraph-msgs, roslang, rospack, sbcl, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-roslisp";
  version = "1.9.25-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp-release/archive/release/noetic/roslisp/1.9.25-1.tar.gz";
    name = "1.9.25-1.tar.gz";
    sha256 = "b451a7a128bff305054ccdd48bab22b79ce442db1181e7920644ba666973256a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ros-environment rosgraph-msgs roslang rospack sbcl std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Lisp client library for ROS, the Robot Operating System.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
