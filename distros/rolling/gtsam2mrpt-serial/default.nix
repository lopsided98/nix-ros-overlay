
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtsam, mola-common, mrpt-libbase, mrpt-libmath, mrpt-libposes }:
buildRosPackage {
  pname = "ros-rolling-gtsam2mrpt-serial";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam2mrpt_serial-release/archive/release/rolling/gtsam2mrpt_serial/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "2400b767c162d2a85e528f423666979a93088922ea34ec1d371fcc14c24d3b8f";
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
