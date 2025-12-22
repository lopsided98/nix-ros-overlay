
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-nanoeigenpy";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nanoeigenpy-release/archive/release/kilted/nanoeigenpy/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "5c5502da08a54031790e30b18864886fe99e9e576da28fd1c54bdfaa6e717f3c";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ eigen python3 python3Packages.nanobind python3Packages.numpy python3Packages.scipy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A support library for bindings between Eigen in C++ and Python, based on nanobind";
    license = with lib.licenses; [ bsd3 ];
  };
}
