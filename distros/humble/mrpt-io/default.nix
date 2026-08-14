
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-system, python3, python3Packages, zstd }:
buildRosPackage {
  pname = "ros-humble-mrpt-io";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_io/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "03429db0de7dbdc313e083b53d0c7aa1605bfd3aae0ed683d9bc5fde44d76f45";
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
