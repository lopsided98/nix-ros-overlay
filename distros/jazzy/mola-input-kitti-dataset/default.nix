
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-kitti-dataset";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/jazzy/mola_input_kitti_dataset/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "5b12bb82be150bd7fb35867c48564203e9bb917a413a0956d6d310b16c4497ab";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt-libmaps ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from Kitti odometry/SLAM datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
