
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-nanoeigenpy";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nanoeigenpy-release/archive/release/rolling/nanoeigenpy/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "3ee6efc74a76a2f083c8a1d599521367cc62f8d5f7eb0b16ddae7657dccd02f2";
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
