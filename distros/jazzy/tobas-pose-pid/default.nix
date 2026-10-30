
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-kdl }:
buildRosPackage {
  pname = "ros-jazzy-tobas-pose-pid";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_pose_pid/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "0890e5d376f44e0385c539ec4d76a96097eaf015578a486b70076e22d6f1fe7d";
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
