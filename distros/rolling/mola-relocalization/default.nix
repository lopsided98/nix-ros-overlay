
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-test-datasets, mp2p-icp, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-relocalization";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_relocalization/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "374ddad2bd295c905f4e402cee8bc45e46f7850a90bd68079a8e231b6d582fc2";
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
