
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-foxy-eigenpy";
  version = "2.6.11-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eigenpy-ros-release/archive/release/foxy/eigenpy/2.6.11-1.tar.gz";
    name = "2.6.11-1.tar.gz";
    sha256 = "3edd1ecaecb8bc8c8aec9f0631010f16bcffea6a2ff946ed67172edcc5029ab3";
  };

  buildType = "cmake";
  buildInputs = [ doxygen git ];
  propagatedBuildInputs = [ boost eigen python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
