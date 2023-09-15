
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-input-rawlog";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_rawlog/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "38e26bc2191fe0bb68df7e55724726bb13f619eaf7ee7d292ccbe6998102be6e";
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
