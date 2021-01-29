
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost }:
buildRosPackage {
  pname = "ros-noetic-async-comm";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/dpkoch/async_comm-release/archive/release/noetic/async_comm/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "3d1a92c6a273016b8d5b6f7b220ca0947483abd605324c72b7ae3cf152212f03";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ boost ];

  meta = {
    description = ''A C++ library for asynchronous serial communication'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
