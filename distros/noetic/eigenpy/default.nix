
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python, pythonPackages }:
buildRosPackage {
  pname = "ros-noetic-eigenpy";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/eigenpy_catkin-release/archive/release/noetic/eigenpy/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "6d817f9c91c3b1727c3b9b733d461407bce4887af28fdc8837bc76f0c001a044";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost eigen python pythonPackages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
