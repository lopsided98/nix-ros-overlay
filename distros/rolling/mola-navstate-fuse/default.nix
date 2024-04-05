
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-imu-preintegration, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-navstate-fuse";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_navstate_fuse/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "e993a7b4cca97224cea9b4c0a45598e0ed97944d5cfe065fdca58d468ad32b22";
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
