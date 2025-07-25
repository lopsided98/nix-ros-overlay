
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, openssl, protobuf, spdlog }:
buildRosPackage {
  pname = "ros-rolling-protobuf-comm";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/protobuf_comm-release/archive/release/rolling/protobuf_comm/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "3031769e2a9240deb80dd406026c9186a3bf5aafb7887c84adb8a1ada14c145d";
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
