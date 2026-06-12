
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, jrl-cmakemodules, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-eigenpy";
  version = "3.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigenpy-release/archive/release/lyrical/eigenpy/3.13.0-1.tar.gz";
    name = "3.13.0-1.tar.gz";
    sha256 = "e528c573e294369e8b3323d08d91dd63766f1a973f4e4d4328e5149f1b587f0a";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git jrl-cmakemodules ];
  propagatedBuildInputs = [ boost eigen python3 python3Packages.numpy python3Packages.scipy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Bindings between Numpy and Eigen using Boost.Python";
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
