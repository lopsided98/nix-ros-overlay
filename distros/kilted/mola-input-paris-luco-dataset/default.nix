
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-kilted-mola-input-paris-luco-dataset";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_input_paris_luco_dataset/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "6169d912489dfcaf503c23a518c527f3abe53a81f1116d5786f6bc245c13b673";
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
