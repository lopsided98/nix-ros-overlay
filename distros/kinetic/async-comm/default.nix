
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost }:
buildRosPackage {
  pname = "ros-kinetic-async-comm";
  version = "0.2.1-r3";

  src = fetchurl {
    url = "https://github.com/dpkoch/async_comm-release/archive/release/kinetic/async_comm/0.2.1-3.tar.gz";
    name = "0.2.1-3.tar.gz";
    sha256 = "0b3fc077144c8f24707843c9383e4269443ec931bd56133fe6b7545be70f98fd";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ boost ];

  meta = {
    description = ''A C++ library for asynchronous serial communication'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
