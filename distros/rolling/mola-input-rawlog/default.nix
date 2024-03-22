
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-input-rawlog";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_rawlog/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ef733a69a853d6d36cf7a0a7ee84dd2bd78e5e6c87ba766f14c19c83982aded3";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Offline RawDataSource from MRPT rawlog datasets'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
