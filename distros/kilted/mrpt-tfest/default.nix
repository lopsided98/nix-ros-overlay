
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-poses, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-tfest";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_tfest/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "0e54470cf1527155fdf2866b077b31a76c5fa2e7ddd28acabeb9223d204e2d0d";
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
