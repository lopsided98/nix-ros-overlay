
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rospack, catkin, sbcl, rosgraph-msgs, roslang }:
buildRosPackage {
  pname = "ros-kinetic-roslisp";
  version = "1.9.21";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp-release/archive/release/kinetic/roslisp/1.9.21-0.tar.gz";
    name = "1.9.21-0.tar.gz";
    sha256 = "7c1461d993cfbadccec208f5d806d10c146c9387ebfa15c5d8427b89261b92c7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ std-srvs rospack sbcl rosgraph-msgs roslang ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Lisp client library for ROS, the Robot Operating System.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
