
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-eigenpy";
  version = "3.10.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigenpy-release/archive/release/kilted/eigenpy/3.10.3-2.tar.gz";
    name = "3.10.3-2.tar.gz";
    sha256 = "5ab0bb70904ca8f3230f7a07d626d491873fa7324e757a162c4fac4ee2ed0284";
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
