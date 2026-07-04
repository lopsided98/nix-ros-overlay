
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-poses, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-tfest";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_tfest/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "4d93c9b406f418e98ef35c9972294d82f8b7273cdda7f211fc13f914a636b00c";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  checkInputs = [ python3Packages.numpy ];
  propagatedBuildInputs = [ mrpt-common mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_tfest";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
