
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-test-datasets, mp2p-icp, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-relocalization";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_relocalization/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "455740bcd476cbd8c445b3d12a79f830391da3871f092c86b70660b8b47a6e81";
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
