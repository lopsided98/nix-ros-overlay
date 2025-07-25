
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, openssl, protobuf, spdlog }:
buildRosPackage {
  pname = "ros-kilted-protobuf-comm";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/protobuf_comm-release/archive/release/kilted/protobuf_comm/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "30dd980197aa4055aec71461f5b290d85060b9f5cdda49cebc223ce32300aca8";
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
