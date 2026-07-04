
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-config, mrpt-math, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-bayes";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_bayes/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "5d9a156ba5297982ebd9bf17378bbd0ec941e589d6989cf89865ec5e544d4090";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-config mrpt-math ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_bayes";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
