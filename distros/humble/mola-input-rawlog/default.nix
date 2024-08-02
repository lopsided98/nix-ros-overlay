
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-input-rawlog";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_input_rawlog/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "e70502a549078ce41710bc504d2788d2925a9d5ae1a60c1f3f40045020b25daa";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from MRPT rawlog datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
