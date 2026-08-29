
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, jrl-cmakemodules, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-eigenpy";
  version = "3.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigenpy-release/archive/release/jazzy/eigenpy/3.13.0-1.tar.gz";
    name = "3.13.0-1.tar.gz";
    sha256 = "fa84dbd94d53ad825c863f4b7a87d3a63dec9b0e059a4962243e2e21c9a27c06";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git jrl-cmakemodules ];
  propagatedBuildInputs = [ boost eigen python3 python3Packages.numpy python3Packages.scipy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Bindings between Numpy and Eigen using Boost.Python";
    license = with lib.licenses; [ bsd2 ];
  };
}
