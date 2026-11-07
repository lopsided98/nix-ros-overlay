
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mola-kernel, mrpt-math, mrpt-obs }:
buildRosPackage {
  pname = "ros-lyrical-mola-input-euroc-dataset";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/lyrical/mola_input_euroc_dataset/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "9a44e15f8d4931c17ae503bfab2f855a3ccc452434db0eb72a0444b20cd67c9d";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt-math mrpt-obs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from EUROC SLAM datasets";
    license = with lib.licenses; [ bsd3 ];
  };
}
