
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-humble-mola-input-paris-luco-dataset";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_input_paris_luco_dataset/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "ed29c54f4c62f0c3ef0bbd3de77a63c56b64b441ca1cb03d63c4695ee03d9594";
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
