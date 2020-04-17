
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-eigenpy";
  version = "2.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/eigenpy_catkin-release/archive/release/kinetic/eigenpy/2.3.1-3.tar.gz";
    name = "2.3.1-3.tar.gz";
    sha256 = "6abed4a066bfbd0c6a4576338824d8a4428509e5935b468f10045eb19a9ecfd7";
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
