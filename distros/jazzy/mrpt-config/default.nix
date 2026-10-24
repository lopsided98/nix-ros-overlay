
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, icu, mrpt-common, mrpt-expr, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-config";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_config/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "147e17c88fe52685a2ac552d4a2647f80f7ab4a6e26180a723d85e30d704c245";
  };

  buildType = "cmake";
  buildInputs = [ cmake icu python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-expr ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_config";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
