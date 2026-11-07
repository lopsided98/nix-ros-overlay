
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mola-yaml, mrpt-core, mrpt-maps, mrpt-obs, mrpt-system }:
buildRosPackage {
  pname = "ros-rolling-mola-input-lidar-bin-dataset";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_lidar_bin_dataset/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "60da902a935417dd618d541c83c8f24589188c38e8f225b2e729df0c3ea741af";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mola-yaml mrpt-core mrpt-maps mrpt-obs mrpt-system ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from LiDAR datasets stored as `.bin` files in the Kitti binary format";
    license = with lib.licenses; [ gpl3Only ];
  };
}
