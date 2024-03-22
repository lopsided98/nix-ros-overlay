
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-imu-preintegration, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-navstate-fuse";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_navstate_fuse/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "15f7f83ae875be8b7f33f51919a1dc3373df543a6b5582284e2c98112617685f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-imu-preintegration mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''SE(3) pose and twist path data fusion estimator'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
