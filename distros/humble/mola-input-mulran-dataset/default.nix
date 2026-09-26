
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mola-kernel, mrpt-maps, mrpt-math, mrpt-poses }:
buildRosPackage {
  pname = "ros-humble-mola-input-mulran-dataset";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/humble/mola_input_mulran_dataset/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "7e52cd51759b3d1139f1f19eb46efc9b645cb8a2262d1733cdfb3c09c8b5b9cb";
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
