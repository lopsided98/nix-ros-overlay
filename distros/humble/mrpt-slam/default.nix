
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-maps, mrpt-topography, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-slam";
  version = "3.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_slam/3.1.4-1.tar.gz";
    name = "3.1.4-1.tar.gz";
    sha256 = "c7cc2313ae9e19300eb48d03e30402d5b0db67eaed7ddb396ffded3c642ab8a3";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  checkInputs = [ python3Packages.numpy ];
  propagatedBuildInputs = [ mrpt-maps mrpt-topography ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_slam";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
