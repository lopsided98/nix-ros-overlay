
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-kdl }:
buildRosPackage {
  pname = "ros-jazzy-tobas-pose-pid";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_pose_pid/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "f6dbf9917d8b980bbcbd86fdca3cb5e547d9d8c332cb144943ae1282c56fe762";
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
