
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-system, python3, python3Packages, zstd }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-io";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_io/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "d93fdec23b8f80597751bc61916b3beb083b97d96efe9cdd7256346b15feba09";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 zstd ];
  propagatedBuildInputs = [ mrpt-common mrpt-system ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_io";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
