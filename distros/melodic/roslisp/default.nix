
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-environment, rosgraph-msgs, roslang, rospack, sbcl, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-roslisp";
  version = "1.9.24-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp-release/archive/release/melodic/roslisp/1.9.24-1.tar.gz";
    name = "1.9.24-1.tar.gz";
    sha256 = "86906499473238efd1de66d1cb4749973e1b5fc2965b3d6b6096fabc0bc601b7";
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
