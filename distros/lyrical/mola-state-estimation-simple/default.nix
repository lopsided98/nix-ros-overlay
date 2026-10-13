
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mola-imu-preintegration, mola-kernel, mola-yaml, mrpt-obs }:
buildRosPackage {
  pname = "ros-lyrical-mola-state-estimation-simple";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/lyrical/mola_state_estimation_simple/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "2529347f2d13b5c4c832cc0bc5084f0ed6547b173733f2999e078a9789158408";
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
