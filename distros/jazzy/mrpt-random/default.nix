
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-random";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_random/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "cd9484665fb68fa5a4b6990c5279241c4370eaea9fa15c1c223f875fd7f83978";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_random";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
