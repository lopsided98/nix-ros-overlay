
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-imu-preintegration, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-navstate-fuse";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_navstate_fuse/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "562c77dc49d5d4de608679b71170f79f12ad8d3651c41966f2bf2326a1c75c6a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-imu-preintegration mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "SE(3) pose and twist path data fusion estimator";
    license = with lib.licenses; [ gpl3Only ];
  };
}
