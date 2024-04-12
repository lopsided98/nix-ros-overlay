
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-test-datasets, mp2p-icp, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-relocalization";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_relocalization/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "48edac8a2f2fa19cb42f0f58f8ec468a81c9e4bde4a36f78cc512142c9523fc3";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-test-datasets mp2p-icp mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ library with algorithms for relocalization, global localization, or pose estimation given a large initial uncertainty";
    license = with lib.licenses; [ gpl3Only ];
  };
}
