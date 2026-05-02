
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-rolling-mola-input-lidar-bin-dataset";
  version = "2.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_lidar_bin_dataset/2.7.0-2.tar.gz";
    name = "2.7.0-2.tar.gz";
    sha256 = "d0440403622710ed355ea69572f339e69326aa70da87ad2116d08d57a675496e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt-libmaps ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from LiDAR datasets stored as `.bin` files in the Kitti binary format";
    license = with lib.licenses; [ gpl3Only ];
  };
}
