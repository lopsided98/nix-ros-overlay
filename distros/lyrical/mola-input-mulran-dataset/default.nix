
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mola-kernel, mrpt-maps, mrpt-math, mrpt-poses }:
buildRosPackage {
  pname = "ros-lyrical-mola-input-mulran-dataset";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/lyrical/mola_input_mulran_dataset/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "8f98582f5372bb45786959e9651abd383a143de1274797d0fea749ab62dfb419";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt-maps mrpt-math mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from MulRan datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
