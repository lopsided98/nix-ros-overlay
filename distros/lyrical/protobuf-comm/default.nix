
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, openssl, protobuf, spdlog }:
buildRosPackage {
  pname = "ros-lyrical-protobuf-comm";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/protobuf_comm-release/archive/release/lyrical/protobuf_comm/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "524936abef4c55969a81cee1ad1929c8b6afdc9b8fbcb7ff7c21d1736bce3381";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost openssl protobuf spdlog ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Wrapper for protobuf communication using c++";
    license = with lib.licenses; [ gpl2Plus ];
  };
}
