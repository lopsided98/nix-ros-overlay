
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, cmake, fastcdr, foonathan-memory-vendor, openssl, tinyxml-2 }:
buildRosPackage {
  pname = "ros-eloquent-fastrtps";
  version = "1.9.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastrtps-release/archive/release/eloquent/fastrtps/1.9.3-2.tar.gz";
    name = "1.9.3-2.tar.gz";
    sha256 = "467fc5509c30ff9c1328ef57f9a582008e3cf5d8a4c5bf77949609fb47e722cb";
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
