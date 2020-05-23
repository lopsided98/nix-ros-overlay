
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python, pythonPackages }:
buildRosPackage {
  pname = "ros-noetic-eigenpy";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/eigenpy_catkin-release/archive/release/noetic/eigenpy/2.3.2-2.tar.gz";
    name = "2.3.2-2.tar.gz";
    sha256 = "242da6cb6ae35e9e3da98cb97faeb8b0668a42dbeb2ec3962f30e2cbf3db5c07";
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
