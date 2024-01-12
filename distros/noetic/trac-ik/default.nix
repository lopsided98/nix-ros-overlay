
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, trac-ik-examples, trac-ik-kinematics-plugin, trac-ik-lib, trac-ik-python }:
buildRosPackage {
  pname = "ros-noetic-trac-ik";
  version = "1.6.6-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/noetic/trac_ik/1.6.6-1.tar.gz";
    name = "1.6.6-1.tar.gz";
    sha256 = "14bc7e8cc907b126ef1c5aadf458709569f07d2f3a9831a75f47ced763996e52";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ trac-ik-examples trac-ik-kinematics-plugin trac-ik-lib trac-ik-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS packages in this repository were created to provide an improved
    alternative Inverse Kinematics solver to the popular inverse Jacobian
    methods in KDL.  TRAC-IK handles joint-limited chains better than KDL
    without increasing solve time.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
