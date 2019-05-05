
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, boost }:
buildRosPackage {
  pname = "ros-lunar-async-comm";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/dpkoch/async_comm-release/archive/release/lunar/async_comm/0.1.1-0.tar.gz;
    sha256 = "96543077175def7cfccecccb7388b497b031ec2d268ee068c5f2eb91eed7cac7";
  };

  buildInputs = [ boost ];
  propagatedBuildInputs = [ catkin boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A C++ library for asynchronous serial communication'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
