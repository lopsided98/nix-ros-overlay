
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-kinetic-async-comm";
  version = "0.2.1-r4";

  src = fetchurl {
    url = "https://github.com/dpkoch/async_comm-release/archive/release/kinetic/async_comm/0.2.1-4.tar.gz";
    name = "0.2.1-4.tar.gz";
    sha256 = "bbe8a4aac77772754cdf131152179bee94aba9bed87755614eb34725835d9e0d";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A C++ library for asynchronous serial communication'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
