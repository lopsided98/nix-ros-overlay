
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glfw3, mrpt-common, mrpt-config, mrpt-io, mrpt-math, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-img";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_img/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "5b0e501de683e474215fd27110db06539b521eccfec22f57f69cff84d3920eb0";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ glfw3 mrpt-common mrpt-config mrpt-io mrpt-math ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_img";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
