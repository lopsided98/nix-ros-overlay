
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-eigenpy";
  version = "3.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigenpy-release/archive/release/jazzy/eigenpy/3.11.0-1.tar.gz";
    name = "3.11.0-1.tar.gz";
    sha256 = "1ad8c9dcaac8963e6e7162affcef9cc4d986ed8cdd77265b7c6db93a2204caa4";
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
