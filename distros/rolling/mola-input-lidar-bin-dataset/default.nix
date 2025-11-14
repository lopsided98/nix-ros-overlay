
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-rolling-mola-input-lidar-bin-dataset";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_lidar_bin_dataset/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "95fc7d537a02a17c2842f223b8691261d26b683e8a0cfa40007c82df29b91ad3";
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
