
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake }:
buildRosPackage {
  pname = "ros-melodic-async-comm";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/dpkoch/async_comm-release/archive/release/melodic/async_comm/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "657753a9f478d51187d61862ab11deea0eaa38b107bc599084c6a2d49addfb2f";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A C++ library for asynchronous serial communication'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
