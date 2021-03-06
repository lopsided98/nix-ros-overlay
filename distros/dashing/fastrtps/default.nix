
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, cmake, fastcdr, openssl, tinyxml-2 }:
buildRosPackage {
  pname = "ros-dashing-fastrtps";
  version = "1.8.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastrtps-release/archive/release/dashing/fastrtps/1.8.4-3.tar.gz";
    name = "1.8.4-3.tar.gz";
    sha256 = "824613176c8bf6fd47fe37c4d3a7a9181eda87e5db22b651886a87338141ddba";
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
