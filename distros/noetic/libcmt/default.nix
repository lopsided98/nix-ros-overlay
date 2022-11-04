
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cacert, cmake, cv-bridge, git, openssl }:
buildRosPackage {
  pname = "ros-noetic-libcmt";
  version = "2.1.21-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/libcmt/2.1.21-2.tar.gz";
    name = "2.1.21-2.tar.gz";
    sha256 = "5460174b56e8eedb403a1f24883e4da4ba5f86e50d57cc0fa95e18084694c092";
  };

  buildType = "cmake";
  buildInputs = [ cacert cmake git openssl ];
  propagatedBuildInputs = [ cv-bridge ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libCMT ROS Wrapper'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
