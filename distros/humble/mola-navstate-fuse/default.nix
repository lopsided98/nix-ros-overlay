
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-imu-preintegration, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-navstate-fuse";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_navstate_fuse/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "8f5317cbe17cad7c4ee82f65e0dacffb6fafa4e1911e1549164c3aac68aad4d4";
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
