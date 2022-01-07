
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cacert, cmake, cv-bridge, git, openssl }:
buildRosPackage {
  pname = "ros-melodic-libcmt";
  version = "2.1.24-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/libcmt/2.1.24-1.tar.gz";
    name = "2.1.24-1.tar.gz";
    sha256 = "e0ece8617dc15630f1584003705c73484db1f27123b3dc943d31d2878bd0cfc4";
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
