
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-test-datasets, mp2p-icp, mrpt2 }:
buildRosPackage {
  pname = "ros-jazzy-mola-relocalization";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_relocalization/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "5994ddd6f882975b8e496182d330956bae51471c31b38dfe39240a7423d4994e";
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
