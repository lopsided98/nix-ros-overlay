
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cacert, cmake, cv-bridge, git, openssl }:
buildRosPackage {
  pname = "ros-noetic-libcmt";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/libcmt/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "498ae578ab3b3c00c5ed5aac566767570314edbbaef72711e229b8fbee88c783";
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
