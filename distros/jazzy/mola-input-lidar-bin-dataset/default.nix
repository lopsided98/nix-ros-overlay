
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mola-yaml, mrpt-core, mrpt-maps, mrpt-obs, mrpt-system }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-lidar-bin-dataset";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_lidar_bin_dataset/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "363970ea3e7e2dd60f8a99863686464981c9c333c79370418959e92475734561";
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
