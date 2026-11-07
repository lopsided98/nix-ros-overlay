
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mola-kernel, mrpt-maps, mrpt-math }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-kitti-dataset";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/jazzy/mola_input_kitti_dataset/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "8d82f0baa7f7081e4a815905948539fc6800ba5f8f0fb4a58c0e1da73a7895f2";
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
