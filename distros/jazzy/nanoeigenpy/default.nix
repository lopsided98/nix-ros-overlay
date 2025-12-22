
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-nanoeigenpy";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nanoeigenpy-release/archive/release/jazzy/nanoeigenpy/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "d84cafac2c102eeac0fca610c0e0b7935ce09446f630d01d07ee10172d5a2d5e";
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
