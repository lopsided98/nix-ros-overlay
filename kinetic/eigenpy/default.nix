
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-eigenpy";
  version = "1.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/eigenpy_catkin-release/archive/release/kinetic/eigenpy/1.6.9-1.tar.gz";
    name = "1.6.9-1.tar.gz";
    sha256 = "faf223cb6c334c9b02adcf824887c5a711aeb96e2e0fa8e64ef706c7ab694361";
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
