
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-rolling-mola-input-paris-luco-dataset";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_paris_luco_dataset/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "04ba42be4bbe1b7de2e2188f39eb4a23f81d9a0e03b194ff7708ec273f52cf7b";
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
