
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, eigen, flatbuffers, libpng, libtins, libzip, mola-kernel, mola-yaml, mrpt-maps, mrpt-obs, openssl, zstd }:
buildRosPackage {
  pname = "ros-rolling-mola-input-ouster";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_input_ouster-release/archive/release/rolling/mola_input_ouster/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "4fc8084fd0e38a5e7a56c86f4feef31ac4836858d440e49837844a6bc537c718";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen flatbuffers libpng libtins libzip openssl zstd ];
  propagatedBuildInputs = [ curl mola-kernel mola-yaml mrpt-maps mrpt-obs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "MOLA input module for Ouster LiDAR sensors using the native Ouster C++ SDK.
    Provides direct sensor connection and PCAP replay without ROS middleware.";
    license = with lib.licenses; [ gpl3 ];
  };
}
