
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, cmake, fastcdr, foonathan-memory-vendor, openssl, tinyxml-2 }:
buildRosPackage {
  pname = "ros-foxy-fastrtps";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastrtps-release/archive/release/foxy/fastrtps/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "d2ab33b5abb26344f38b80fcb9e5d8de7d79ff4a9ec965e9607aeea5dfec5a68";
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
