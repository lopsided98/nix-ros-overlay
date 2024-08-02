
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, gtsam, mola-common, mola-imu-preintegration, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-navstate-fg";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_navstate_fg/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "e032ba6898e40bd9b0eb43fa4031806f3c407bdf6cac668189f899b6a0a9ece1";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake gtsam ];
  propagatedBuildInputs = [ mola-common mola-imu-preintegration mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "SE(3) pose and twist path data fusion estimator";
    license = with lib.licenses; [ gpl3Only ];
  };
}
