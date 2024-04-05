
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, trac-ik-kinematics-plugin, trac-ik-lib }:
buildRosPackage {
  pname = "ros-rolling-trac-ik";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/trac_ik-release/archive/release/rolling/trac_ik/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "6da5c6310521c5e6be52f6927be39a151020f5e6c9d5cd7679dc23301611e319";
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
