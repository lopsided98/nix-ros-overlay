
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-expr, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-config";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_config/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "74dd496098ff46ccb9eb78c297550bc6a3ee8f5e3801f5c333cb341479cb3266";
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
