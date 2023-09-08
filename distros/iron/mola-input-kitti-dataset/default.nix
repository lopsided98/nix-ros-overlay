
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-input-kitti-dataset";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_input_kitti_dataset/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "fa4aa64b8d33dc80590cf071dfa51fb8eacac506f53f1adfd9026e32288d1711";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Offline RawDataSource from Kitti odometry/SLAM datasets'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
