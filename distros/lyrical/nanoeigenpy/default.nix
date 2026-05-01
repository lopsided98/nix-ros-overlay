
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-nanoeigenpy";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nanoeigenpy-release/archive/release/lyrical/nanoeigenpy/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "3d9c169ecfbfa0b8c4d6521e75a23ded0c25298f41919a53d4806ebd892e1550";
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
