
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mola-kernel, mrpt-maps, mrpt-math }:
buildRosPackage {
  pname = "ros-lyrical-mola-input-paris-luco-dataset";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/lyrical/mola_input_paris_luco_dataset/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "87b4ad10af701ca5dcd398f84fa10aef8d605e6cb863af48bdd36ddbfccd3e70";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt-maps mrpt-math ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from Paris LUCO (CT-ICP) odometry/SLAM datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
