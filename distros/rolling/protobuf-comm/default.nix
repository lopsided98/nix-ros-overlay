
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, openssl, protobuf, spdlog }:
buildRosPackage {
  pname = "ros-rolling-protobuf-comm";
  version = "0.9.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/protobuf_comm-release/archive/release/rolling/protobuf_comm/0.9.3-2.tar.gz";
    name = "0.9.3-2.tar.gz";
    sha256 = "df8b4d5481f816e6565f3e67aa72f8d2785d9f6e4ce76ca36dc5872ea8951eaa";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost openssl protobuf spdlog ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Wrapper for protobuf communication using c++";
    license = with lib.licenses; [ "GPL-2.0-or-later" ];
  };
}
