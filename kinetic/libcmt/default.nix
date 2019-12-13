
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cacert, cmake, cv-bridge, git, openssl }:
buildRosPackage {
  pname = "ros-kinetic-libcmt";
  version = "2.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/libcmt/2.1.15-1.tar.gz";
    name = "2.1.15-1.tar.gz";
    sha256 = "a507cf8d5a41c64a96d6f0ca51d0a4af13b76b101d48ab8b41624ca1f40ee7b4";
  };

  buildType = "cmake";
  buildInputs = [ cacert git openssl ];
  propagatedBuildInputs = [ cv-bridge ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libCMT ROS Wrapper'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
