
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, boost, pythonPackages, cmake, eigen, python, doxygen }:
buildRosPackage {
  pname = "ros-melodic-eigenpy";
  version = "1.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/eigenpy_catkin-release/archive/release/melodic/eigenpy/1.6.9-1.tar.gz";
    name = "1.6.9-1.tar.gz";
    sha256 = "19c90893ececf5e4b3c5df332d25ece65702a3ef53df0636ee7687db031ba044";
  };

  buildType = "cmake";
  buildInputs = [ git boost pythonPackages.numpy python eigen doxygen ];
  propagatedBuildInputs = [ python pythonPackages.numpy boost eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
