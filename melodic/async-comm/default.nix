
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, boost }:
buildRosPackage {
  pname = "ros-melodic-async-comm";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/dpkoch/async_comm-release/archive/release/melodic/async_comm/0.1.1-0.tar.gz;
    sha256 = "9a87d3e8db68cf7c7fc3c318f1d31d6660dd5ca39172d0f78efdf6330de49bcc";
  };

  buildInputs = [ boost ];
  propagatedBuildInputs = [ catkin boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A C++ library for asynchronous serial communication'';
    #license = lib.licenses.BSD;
  };
}