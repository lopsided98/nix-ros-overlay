
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, boost, git, pythonPackages, doxygen, eigen, cmake }:
buildRosPackage {
  pname = "ros-kinetic-eigenpy";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/eigenpy_catkin-release/archive/release/kinetic/eigenpy/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "0c83b58e810e5eca90ef5f2876b9918700efec20f26a8bd81bff13438ec52f99";
  };

  buildType = "cmake";
  buildInputs = [ python pythonPackages.numpy boost git doxygen eigen ];
  propagatedBuildInputs = [ python pythonPackages.numpy boost eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
