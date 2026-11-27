
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-math }:
buildRosPackage {
  pname = "ros-jazzy-tobas-trajectory-generation";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_trajectory_generation/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "cc0693c001d266550b222ca5e89ace8e46539af728bd4665891e51252db47c26";
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
