
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-math }:
buildRosPackage {
  pname = "ros-jazzy-tobas-trajectory-generation";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_trajectory_generation/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "46ba6441d108c8b4204d727a7f7ce6b977f3599697083cc7dfdbc474b68100a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-math ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Online and offline trajectory generators with velocity, acceleration, and jerk constraints.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
