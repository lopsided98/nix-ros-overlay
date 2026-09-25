
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-math }:
buildRosPackage {
  pname = "ros-jazzy-tobas-trajectory-generation";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_trajectory_generation/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "e8852ffeb200274e53b9a15ba2b6f03c0abf264efb2ebd9a38d92fc427608e76";
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
