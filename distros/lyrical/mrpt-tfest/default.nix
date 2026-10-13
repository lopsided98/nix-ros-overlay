
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-poses, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-tfest";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_tfest/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "93bc277ee584397b295607aa45887f5687a735579f0435788f65809b2baf5031";
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
