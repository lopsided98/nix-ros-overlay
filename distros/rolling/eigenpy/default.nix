
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-eigenpy";
  version = "3.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigenpy-release/archive/release/rolling/eigenpy/3.8.2-1.tar.gz";
    name = "3.8.2-1.tar.gz";
    sha256 = "f0977026f9c6de60ed186ca63f8fe2e7859e0a913b3c01548e8187548928cb16";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ boost eigen python3 python3Packages.numpy python3Packages.scipy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Bindings between Numpy and Eigen using Boost.Python";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
