
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sbcl, std-srvs, catkin, roslang, rosgraph-msgs, rospack }:
buildRosPackage {
  pname = "ros-melodic-roslisp";
  version = "1.9.22";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp-release/archive/release/melodic/roslisp/1.9.22-0.tar.gz";
    name = "1.9.22-0.tar.gz";
    sha256 = "83844af11c1d8a5baf84efcef5a107629966d66b14973723446cd8803fc9781a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sbcl std-srvs roslang rosgraph-msgs rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Lisp client library for ROS, the Robot Operating System.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
