
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, doxygen, eigen, git, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-eigenpy";
  version = "2.6.7-r2";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/eigenpy_catkin-release/archive/release/melodic/eigenpy/2.6.7-2.tar.gz";
    name = "2.6.7-2.tar.gz";
    sha256 = "fe22787a846c08efaa4ff95b7987ed86715486577dad4fe88ee25521f8e9d5f9";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost catkin eigen python pythonPackages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
