
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, trac-ik-kinematics-plugin, trac-ik-lib }:
buildRosPackage {
  pname = "ros-lyrical-trac-ik";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/trac_ik-release/archive/release/lyrical/trac_ik/2.2.0-3.tar.gz";
    name = "2.2.0-3.tar.gz";
    sha256 = "6352c149716f3086abdbdc2e3bba375aa3c2ea01d01095954fb0f28d8db930e5";
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
