
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, cmake, fastcdr, foonathan-memory-vendor, openssl, tinyxml-2 }:
buildRosPackage {
  pname = "ros-foxy-fastrtps";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastrtps-release/archive/release/foxy/fastrtps/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "16b983d6018e778aa240cc2430f17561c5415b7466cf067faea850065b5a716f";
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
