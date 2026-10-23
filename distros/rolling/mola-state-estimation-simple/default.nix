
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mola-imu-preintegration, mola-kernel, mola-yaml, mrpt-obs }:
buildRosPackage {
  pname = "ros-rolling-mola-state-estimation-simple";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/rolling/mola_state_estimation_simple/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "daad949e1b8048d2ff185eb8c475848bbc158a411dd8ae532a804920908abedd";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mola-common mola-imu-preintegration mola-kernel mola-yaml mrpt-obs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "SE(3) pose and twist path data fusion estimator";
    license = with lib.licenses; [ gpl3Only ];
  };
}
