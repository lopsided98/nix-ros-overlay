
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-kdl }:
buildRosPackage {
  pname = "ros-jazzy-tobas-pose-pid";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_pose_pid/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "85702efb794f53109504897242cd9c511aa1908d4a5731c93f8f7769b2624b73";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-kdl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Position and orientation PID-family controllers for vehicle pose control.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
