
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trac-ik-kinematics-plugin, catkin, trac-ik-python, trac-ik-lib, trac-ik-examples }:
buildRosPackage {
  pname = "ros-kinetic-trac-ik";
  version = "1.5.0";

  src = fetchurl {
    url = https://github.com/traclabs/trac_ik-release/archive/release/kinetic/trac_ik/1.5.0-0.tar.gz;
    sha256 = "520f17235b2676e318335aea4ce7dcd3376c637dd180efc3fa505d81dd121c71";
  };

  propagatedBuildInputs = [ trac-ik-lib trac-ik-examples trac-ik-kinematics-plugin trac-ik-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS packages in this repository were created to provide an improved
    alternative Inverse Kinematics solver to the popular inverse Jacobian
    methods in KDL.  TRAC-IK handles joint-limited chains better than KDL
    without increasing solve time.'';
    #license = lib.licenses.BSD;
  };
}
