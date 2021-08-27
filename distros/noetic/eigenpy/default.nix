
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-eigenpy";
  version = "2.6.7-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/eigenpy_catkin-release/archive/release/noetic/eigenpy/2.6.7-1.tar.gz";
    name = "2.6.7-1.tar.gz";
    sha256 = "6ad50a889cd4115dde546a74c1cdc4c328175eea1e7ea4e3b3b2b54b49bda1f7";
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
