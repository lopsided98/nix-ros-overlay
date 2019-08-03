
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, cacert, openssl, cmake, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-libcmt";
  version = "2.1.13-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/libcmt/2.1.13-1.tar.gz;
    sha256 = "fc88273a96f7202d3f0e1a45cbbcb6c891fc8c2240d2a7db90b135b06267e02a";
  };

  buildInputs = [ openssl cacert git opencv3 ];
  propagatedBuildInputs = [ opencv3 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libCMT ROS Wrapper'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
