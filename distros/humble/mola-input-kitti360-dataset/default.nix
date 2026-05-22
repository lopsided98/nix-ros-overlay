
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-humble-mola-input-kitti360-dataset";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/humble/mola_input_kitti360_dataset/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "fab162e3ef2e62cbdd5f8825181cdc098692cdf8d3c221e2ed84a1ae39354588";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt-libmaps ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from Kitti-360 datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
