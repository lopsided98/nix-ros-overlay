
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, boost }:
buildRosPackage {
  pname = "ros-kinetic-async-comm";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/dpkoch/async_comm-release/archive/release/kinetic/async_comm/0.1.1-0.tar.gz;
    sha256 = "2178321d845dac075d6f96084f02438f8a60cbf7ef119ca7988fad78bc18c244";
  };

  buildInputs = [ boost ];
  propagatedBuildInputs = [ catkin boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A C++ library for asynchronous serial communication'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
