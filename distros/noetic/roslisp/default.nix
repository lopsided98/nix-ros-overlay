
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-environment, rosgraph-msgs, roslang, rospack, sbcl, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-roslisp";
  version = "1.9.24-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp-release/archive/release/noetic/roslisp/1.9.24-1.tar.gz";
    name = "1.9.24-1.tar.gz";
    sha256 = "492d41924b9264c0018534e86d7dce746a595410e01c27708fd1529931c9883b";
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
