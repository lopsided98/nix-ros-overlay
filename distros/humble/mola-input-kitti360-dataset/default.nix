
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-input-kitti360-dataset";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_input_kitti360_dataset/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "43816c3d6b449f9838e0ed65c94e4ef2f9f3c4d37d732cb41c79a7dc86815c7f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from Kitti-360 datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
