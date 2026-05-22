
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-humble-mola-input-paris-luco-dataset";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/humble/mola_input_paris_luco_dataset/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "de29b899a03f03513159e1d081d5826557102966cfb89136b263d9c8609c8f3f";
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
