
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trac-ik-kinematics-plugin, catkin, trac-ik-python, trac-ik-lib, trac-ik-examples }:
buildRosPackage {
  pname = "ros-melodic-trac-ik";
  version = "1.5.0-r1";

  src = fetchurl {
    url = https://github.com/traclabs/trac_ik-release/archive/release/melodic/trac_ik/1.5.0-1.tar.gz;
    sha256 = "c985213ab2ea13f1d77ffd934d03abb7f1cd6364f98247d8ce9d483161cd6b32";
  };

  propagatedBuildInputs = [ trac-ik-lib trac-ik-examples trac-ik-kinematics-plugin trac-ik-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS packages in this repository were created to provide an improved
    alternative Inverse Kinematics solver to the popular inverse Jacobian
    methods in KDL.  TRAC-IK handles joint-limited chains better than KDL
    without increasing solve time.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
