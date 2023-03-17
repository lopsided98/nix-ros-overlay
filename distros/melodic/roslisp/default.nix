
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-environment, rosgraph-msgs, roslang, rospack, sbcl, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-roslisp";
  version = "1.9.25-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp-release/archive/release/melodic/roslisp/1.9.25-1.tar.gz";
    name = "1.9.25-1.tar.gz";
    sha256 = "14236c6e826b23e353bb391ac0325a29466319078d51104ea7401017381beea8";
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
