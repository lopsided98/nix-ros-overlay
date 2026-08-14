
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-humble-mola-input-lidar-bin-dataset";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_input_lidar_bin_dataset/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "801c68c5a446b96c447fb26d9dbaaf9fdbf85362c5ac4e7e0d9853119f947956";
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
