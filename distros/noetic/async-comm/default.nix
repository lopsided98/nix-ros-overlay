
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-noetic-async-comm";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/dpkoch/async_comm-release/archive/release/noetic/async_comm/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "630becd7f8b1606e501f863e02617f7f3898dca05bfee506cc7eac7681f3b16d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A C++ library for asynchronous serial communication'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
