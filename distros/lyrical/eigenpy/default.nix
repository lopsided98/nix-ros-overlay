
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-eigenpy";
  version = "3.12.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigenpy-release/archive/release/lyrical/eigenpy/3.12.0-3.tar.gz";
    name = "3.12.0-3.tar.gz";
    sha256 = "58c6227ae478a86bcd169361693e73dd3a5931467d0599a88b5849cf6d4e82ec";
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
