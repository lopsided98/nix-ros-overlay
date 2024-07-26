
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-pose-list, mola-test-datasets, mp2p-icp, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-relocalization";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_relocalization/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "29d55e319a3f9d6446cff3f3b7953fc083c0ff0bbe8f45e1f99811c33799eb3f";
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
