
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtsam, mola-common, mrpt-containers, mrpt-io, mrpt-math, mrpt-poses, mrpt-random, mrpt-rtti, mrpt-serialization, mrpt-system }:
buildRosPackage {
  pname = "ros-kilted-gtsam2mrpt-serial";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam2mrpt_serial-release/archive/release/kilted/gtsam2mrpt_serial/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "c0c678047d6fff81990cf5c2c106b28a51f71e3439c68aad02e94bdda4d18e05";
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
