
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtsam, mola-common, mrpt-libbase, mrpt-libmath, mrpt-libposes }:
buildRosPackage {
  pname = "ros-lyrical-gtsam2mrpt-serial";
  version = "0.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam2mrpt_serial-release/archive/release/lyrical/gtsam2mrpt_serial/0.2.0-3.tar.gz";
    name = "0.2.0-3.tar.gz";
    sha256 = "4ff40c41d5c1d195f441bf9a6e3ce41d833d970f5b90f3b94eb312d564bc2600";
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
