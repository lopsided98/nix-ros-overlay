
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-eigenpy";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eigenpy-ros-release/archive/release/noetic/eigenpy/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "c56ab85eaf5e7c4a0895b548aeccc81c210cca1e9ccd5fca9e4c4179bce1f23d";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
