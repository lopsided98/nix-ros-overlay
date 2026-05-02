
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtsam, mola-common, mrpt-libbase, mrpt-libmath, mrpt-libposes }:
buildRosPackage {
  pname = "ros-rolling-gtsam2mrpt-serial";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam2mrpt_serial-release/archive/release/rolling/gtsam2mrpt_serial/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "4d45e61661aa530d0cb4cfc6f1cb8515dd472838b81f1ec7c7f6ef3b06877200";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtsam mola-common mrpt-libbase mrpt-libmath mrpt-libposes ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A C++ library offering a GTSAM ⇆ mrpt-serialization bridge.";
    license = with lib.licenses; [ mit ];
  };
}
