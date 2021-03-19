
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, trac-ik-examples, trac-ik-kinematics-plugin, trac-ik-lib, trac-ik-python }:
buildRosPackage {
  pname = "ros-noetic-trac-ik";
  version = "1.6.1-r6";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/noetic/trac_ik/1.6.1-6.tar.gz";
    name = "1.6.1-6.tar.gz";
    sha256 = "042fe38815ad645a4c75974238ef30c8da3cc4b13a4e1217d4a2e71aa55c956b";
  };

  buildType = "catkin";
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
