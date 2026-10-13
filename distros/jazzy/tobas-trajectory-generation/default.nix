
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-math }:
buildRosPackage {
  pname = "ros-jazzy-tobas-trajectory-generation";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_trajectory_generation/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "fecc3effc749ae22ffe3016b4909c5751e6009cbd5f8c58845bc7f80da510330";
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
