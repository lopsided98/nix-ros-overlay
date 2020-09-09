
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cacert, cmake, cv-bridge, git, openssl }:
buildRosPackage {
  pname = "ros-noetic-libcmt";
  version = "2.1.21-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/libcmt/2.1.21-1.tar.gz";
    name = "2.1.21-1.tar.gz";
    sha256 = "168a8a530f900a9654605d00b3a6d31d4c310223cdf2851745e3064aeff36224";
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
