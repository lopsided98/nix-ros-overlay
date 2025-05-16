
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cacert, cmake, cv-bridge, git, openssl }:
buildRosPackage {
  pname = "ros-noetic-libcmt";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/libcmt/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "a77eea466ebe6cd6188054e778a7116b266dc976de44507e6decf909d1c11213";
  };

  buildType = "cmake";
  buildInputs = [ cacert cmake git openssl ];
  propagatedBuildInputs = [ cv-bridge ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "libCMT ROS Wrapper";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
