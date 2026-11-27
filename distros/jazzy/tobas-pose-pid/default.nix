
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-kdl }:
buildRosPackage {
  pname = "ros-jazzy-tobas-pose-pid";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_pose_pid/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "9d7b359d9c8ed8125e384a43440f9162cf605fa48f12783c76f23ce2c52e2eb0";
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
