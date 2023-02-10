
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-foxy-eigenpy";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/stack-of-tasks/eigenpy-ros-release/archive/release/foxy/eigenpy/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "54973a60d65ec89bec195f86eb872d71ea53ee0913a7b74c196c12767ee1215c";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ boost eigen python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
