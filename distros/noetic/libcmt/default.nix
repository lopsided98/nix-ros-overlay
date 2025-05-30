
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cacert, cmake, cv-bridge, git, openssl }:
buildRosPackage {
  pname = "ros-noetic-libcmt";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/libcmt/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "79e9357b679884673aa2e32e559d90c0f83e1058cc5867741701a4e72856c4ba";
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
