
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-expr, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-mrpt-config";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_config/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "a7be5fdc470b1ea4019eb2879e90abc1b0d07fa96669f924911cc8ac80d14067";
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
