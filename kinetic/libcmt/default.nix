
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, cacert, openssl, cmake, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-libcmt";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/libcmt/2.1.11-0.tar.gz;
    sha256 = "3856e8fa93ddc1aaf7b2e4c2095b23f8190bc0c70f3c3f8825d4e2b16872d044";
  };

  buildInputs = [ openssl cacert git opencv3 ];
  propagatedBuildInputs = [ opencv3 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libCMT ROS Wrapper'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
