
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, openssl, protobuf, spdlog }:
buildRosPackage {
  pname = "ros-jazzy-protobuf-comm";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/protobuf_comm-release/archive/release/jazzy/protobuf_comm/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "f9ca4fd13424a2cafaff2d8519e716ede42794a7e122f6c18054b2b7a3796f17";
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
