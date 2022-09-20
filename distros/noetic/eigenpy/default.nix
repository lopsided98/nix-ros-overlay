
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-eigenpy";
  version = "2.7.14-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eigenpy-ros-release/archive/release/noetic/eigenpy/2.7.14-1.tar.gz";
    name = "2.7.14-1.tar.gz";
    sha256 = "d621557ae31fb09456d7a5537531ce79e09a7af8b2a8b3c2e0952f8b4761555f";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
