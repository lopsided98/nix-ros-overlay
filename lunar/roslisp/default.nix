
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rospack, catkin, sbcl, rosgraph-msgs, roslang }:
buildRosPackage {
  pname = "ros-lunar-roslisp";
  version = "1.9.21";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp-release/archive/release/lunar/roslisp/1.9.21-0.tar.gz;
    sha256 = "be8e2166d143607ddd870f74793668f22053a40575878a571a3f897bddd50bba";
  };

  propagatedBuildInputs = [ std-srvs rospack sbcl rosgraph-msgs roslang ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Lisp client library for ROS, the Robot Operating System.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
