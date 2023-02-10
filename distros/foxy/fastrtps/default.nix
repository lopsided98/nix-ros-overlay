
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, cmake, fastcdr, foonathan-memory-vendor, openssl, tinyxml-2 }:
buildRosPackage {
  pname = "ros-foxy-fastrtps";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastrtps-release/archive/release/foxy/fastrtps/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "0f329b8b2fc87f34500a4b25c56aea61075914323fa8a4b3b9ecf7183a362077";
  };

  buildType = "cmake";
  buildInputs = [ asio cmake ];
  propagatedBuildInputs = [ fastcdr foonathan-memory-vendor openssl tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Implementation of RTPS standard.'';
    license = with lib.licenses; [ asl20 ];
  };
}
