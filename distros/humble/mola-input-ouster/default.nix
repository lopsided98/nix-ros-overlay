
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, eigen, flatbuffers, libpng, libtins, libzip, mola-kernel, mola-yaml, mrpt-maps, mrpt-obs, openssl, zstd }:
buildRosPackage {
  pname = "ros-humble-mola-input-ouster";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_input_ouster-release/archive/release/humble/mola_input_ouster/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "0b157ff82148edf8d1949b407168d7d59d4204e962fec0244a42f9038b67056c";
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
