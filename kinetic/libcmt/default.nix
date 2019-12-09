
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, cmake, cacert, openssl, cv-bridge }:
buildRosPackage {
  pname = "ros-kinetic-libcmt";
  version = "2.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/libcmt/2.1.14-1.tar.gz";
    name = "2.1.14-1.tar.gz";
    sha256 = "cc83273954285ef9ce2393ba5e23a8d77ca7d73db8cc91a8bf7b89feb13eb65d";
  };

  buildType = "cmake";
  buildInputs = [ git openssl cacert cv-bridge ];
  propagatedBuildInputs = [ cv-bridge ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libCMT ROS Wrapper'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
