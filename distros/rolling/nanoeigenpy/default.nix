
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-nanoeigenpy";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nanoeigenpy-release/archive/release/rolling/nanoeigenpy/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "b7ecb8c6e5379543b8f97dbd7faf1fcad07056ecd01b8d465ee1a98cf3de162d";
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
