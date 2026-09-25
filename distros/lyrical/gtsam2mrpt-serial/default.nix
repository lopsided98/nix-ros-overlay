
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtsam, mola-common, mrpt-containers, mrpt-io, mrpt-math, mrpt-poses, mrpt-random, mrpt-rtti, mrpt-serialization, mrpt-system }:
buildRosPackage {
  pname = "ros-lyrical-gtsam2mrpt-serial";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam2mrpt_serial-release/archive/release/lyrical/gtsam2mrpt_serial/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "1d78914000239d0c86e198a80876de35a09b98153c0494bf99db99ad43a77178";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtsam mola-common mrpt-containers mrpt-io mrpt-math mrpt-poses mrpt-random mrpt-rtti mrpt-serialization mrpt-system ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A C++ library offering a GTSAM ⇆ mrpt-serialization bridge.";
    license = with lib.licenses; [ mit ];
  };
}
