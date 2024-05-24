
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-eigenpy";
  version = "3.1.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigenpy-release/archive/release/jazzy/eigenpy/3.1.4-3.tar.gz";
    name = "3.1.4-3.tar.gz";
    sha256 = "fc4934dea98ba2fe677204430b08d79d1b3df45a2b30f3d01151e7d122502c81";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ boost eigen python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Bindings between Numpy and Eigen using Boost.Python";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
