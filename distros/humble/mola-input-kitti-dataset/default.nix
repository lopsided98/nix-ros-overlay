
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mola-kernel, mrpt-maps, mrpt-math }:
buildRosPackage {
  pname = "ros-humble-mola-input-kitti-dataset";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/humble/mola_input_kitti_dataset/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "1049fca6c689e2bb522055a6c49948b0c2e51e93b37808ef2ad1c85dfaa2530f";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt-maps mrpt-math ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from Kitti odometry/SLAM datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
