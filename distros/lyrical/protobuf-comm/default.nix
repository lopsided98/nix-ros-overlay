
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, openssl, protobuf, spdlog }:
buildRosPackage {
  pname = "ros-lyrical-protobuf-comm";
  version = "0.9.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/protobuf_comm-release/archive/release/lyrical/protobuf_comm/0.9.3-3.tar.gz";
    name = "0.9.3-3.tar.gz";
    sha256 = "ab9c3c81651c50c473dbad7278a24964d4379fae86dc1aa305b9af3d97061459";
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
