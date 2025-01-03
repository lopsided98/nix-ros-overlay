
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-eigenpy";
  version = "3.8.2-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eigenpy-ros-release/archive/release/noetic/eigenpy/3.8.2-1.tar.gz";
    name = "3.8.2-1.tar.gz";
    sha256 = "4ee565256865120393c911951708548a4af5b2cf591808b8ed8c5d817c79b9c3";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen python3 python3Packages.numpy python3Packages.scipy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Bindings between Numpy and Eigen using Boost.Python";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
