
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, cmake, fastcdr, openssl, tinyxml-2 }:
buildRosPackage {
  pname = "ros-dashing-fastrtps";
  version = "1.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastrtps-release/archive/release/dashing/fastrtps/1.8.4-1.tar.gz";
    name = "1.8.4-1.tar.gz";
    sha256 = "33b7d2d637ca29c50429d2dd8f44f7acff7583a5762780c13819cc0eebc496ab";
  };

  buildType = "cmake";
  buildInputs = [ asio ];
  propagatedBuildInputs = [ fastcdr openssl tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Implementation of RTPS standard.'';
    license = with lib.licenses; [ asl20 ];
  };
}
