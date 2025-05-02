
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-humble-mola-input-kitti360-dataset";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_input_kitti360_dataset/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "94ee5c4fd3b9f7a17c7084a9a5a7276d23827b89712d55637ed8d9d8a7800a31";
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
