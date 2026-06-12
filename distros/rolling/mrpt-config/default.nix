
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-expr, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-config";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_config/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "597d19e286dc36e41c51af1b7ba035c2a51ed0c2bc580369c67c83d70e6b92ec";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-expr ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_config";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
