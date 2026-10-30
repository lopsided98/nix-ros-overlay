
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-tfest, mrpt-viz, python3, python3Packages, tinyxml-2 }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-obs";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_obs/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "41097e7c6b9e000398a5ed51867614d63506ca002556c4ca7fe7b3c34e5dfa7f";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-tfest mrpt-viz tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_obs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
