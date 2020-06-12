
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, cmake, fastcdr, foonathan-memory-vendor, openssl, tinyxml-2 }:
buildRosPackage {
  pname = "ros-foxy-fastrtps";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastrtps-release/archive/release/foxy/fastrtps/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "bd1251c65311656f1b5e0447c67cc396352abb09fd39b9080a392f3e1f2cbeca";
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
