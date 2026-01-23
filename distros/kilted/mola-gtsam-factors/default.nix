
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtsam, mola-common, mrpt-libposes }:
buildRosPackage {
  pname = "ros-kilted-mola-gtsam-factors";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/kilted/mola_gtsam_factors/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "408dc702001dbb3405cdb3c2d19778959829a0793c4ea78dd17669932e5eed23";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtsam mola-common mrpt-libposes ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ library with reusable GTSAM Factors useful in georeferencing and state-estimation MOLA modules";
    license = with lib.licenses; [ gpl3Only ];
  };
}
