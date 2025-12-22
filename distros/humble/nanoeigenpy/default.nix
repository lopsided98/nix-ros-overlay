
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_nanobind-dev, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-nanoeigenpy";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nanoeigenpy-release/archive/release/humble/nanoeigenpy/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "84898c1c66a5870869eb030694885180c11ef67eec707d1ffe3f33656b7af9e8";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ _unresolved_nanobind-dev eigen python3 python3Packages.numpy python3Packages.scipy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A support library for bindings between Eigen in C++ and Python, based on nanobind";
    license = with lib.licenses; [ bsd3 ];
  };
}
