
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, cmake, fastcdr, foonathan-memory-vendor, openssl, tinyxml-2 }:
buildRosPackage {
  pname = "ros-foxy-fastrtps";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastrtps-release/archive/release/foxy/fastrtps/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "ed5b0af5ca9257b9b83f527ff2e835da45153e74f405d64a08be2980deaee420";
  };

  buildType = "cmake";
  buildInputs = [ asio ];
  propagatedBuildInputs = [ fastcdr foonathan-memory-vendor openssl tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Implementation of RTPS standard.'';
    license = with lib.licenses; [ asl20 ];
  };
}
