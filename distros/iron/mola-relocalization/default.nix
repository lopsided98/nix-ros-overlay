
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-pose-list, mola-test-datasets, mp2p-icp, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-relocalization";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_relocalization/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "5e103d3c5233dc4d8586ea2470196bad7a734db2866d149caf8f91c33bde05fc";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-pose-list mola-test-datasets mp2p-icp mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ library with algorithms for relocalization, global localization, or pose estimation given a large initial uncertainty";
    license = with lib.licenses; [ gpl3Only ];
  };
}
