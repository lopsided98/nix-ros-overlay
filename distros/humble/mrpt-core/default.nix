
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-core";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_core/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "57eed284a4bd79375f604ba1c1ae094ba41fb92bd5510fceee809d0240cfc42a";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_core";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
