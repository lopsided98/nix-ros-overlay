
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cacert, cmake, cv-bridge, git, openssl }:
buildRosPackage {
  pname = "ros-kinetic-libcmt";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/libcmt/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "8fb43569e4b19197cc46d0294e8d1071d95d617b66b8346f782d1ca9f51112cd";
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
