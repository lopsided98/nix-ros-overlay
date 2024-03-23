
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-imu-preintegration, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-navstate-fuse";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_navstate_fuse/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "2483fde2c9f4f21265623fb57d70951e4eca5660c677f9b69d9f4a935064df6d";
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
