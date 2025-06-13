
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-rolling-mola-input-paris-luco-dataset";
  version = "1.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_paris_luco_dataset/1.8.1-1.tar.gz";
    name = "1.8.1-1.tar.gz";
    sha256 = "de4b90331044bae0d3bb23807c9cefadc5f07a6e5d8cdb19c62317e210bc60dd";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt-libmaps ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from Paris LUCO (CT-ICP) odometry/SLAM datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
