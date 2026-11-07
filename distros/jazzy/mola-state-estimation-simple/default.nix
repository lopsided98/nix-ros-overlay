
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mola-imu-preintegration, mola-kernel, mola-yaml, mrpt-obs }:
buildRosPackage {
  pname = "ros-jazzy-mola-state-estimation-simple";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/jazzy/mola_state_estimation_simple/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "291b4c31164517d510948b0175a1beef8d57880ec252ad414bd320a6ac3413d0";
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
