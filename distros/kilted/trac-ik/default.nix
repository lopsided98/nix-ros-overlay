
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, trac-ik-kinematics-plugin, trac-ik-lib }:
buildRosPackage {
  pname = "ros-kilted-trac-ik";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/trac_ik-release/archive/release/kilted/trac_ik/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "e5581db7dea6211c4c238d22cd58dd18f1987cdb4a0649a4f971ab0a2efee6ae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ trac-ik-kinematics-plugin trac-ik-lib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The ROS packages in this repository were created to provide an improved
    alternative Inverse Kinematics solver to the popular inverse Jacobian
    methods in KDL.  TRAC-IK handles joint-limited chains better than KDL
    without increasing solve time.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
