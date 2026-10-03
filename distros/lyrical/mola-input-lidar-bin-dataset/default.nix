
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mola-yaml, mrpt-core, mrpt-maps, mrpt-obs, mrpt-system }:
buildRosPackage {
  pname = "ros-lyrical-mola-input-lidar-bin-dataset";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_input_lidar_bin_dataset/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "b98d465580723614e157cf4f23f5a6cb5e001949f8d9625d8fd333da653d301a";
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
