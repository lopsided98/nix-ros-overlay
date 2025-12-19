
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-paris-luco-dataset";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_paris_luco_dataset/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "ea69e0c41f54b8a0c61e056d8a0579a2f7c1f16ec851a69167fcb84bd01918d8";
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
