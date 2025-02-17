
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-eigenpy";
  version = "3.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigenpy-release/archive/release/jazzy/eigenpy/3.10.3-1.tar.gz";
    name = "3.10.3-1.tar.gz";
    sha256 = "796eebe12d10e1ef1a3bff715e43c0c0f1a31d76ec40dc78f153918d15ff8dcf";
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
