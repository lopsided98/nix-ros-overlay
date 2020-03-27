
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake }:
buildRosPackage {
  pname = "ros-kinetic-async-comm";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/dpkoch/async_comm-release/archive/release/kinetic/async_comm/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "83a1e27066268408f24d54f213701b538c1f722c2c5f6b36c7e6addbddbbd21a";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A C++ library for asynchronous serial communication'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
