
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-mrpt-random";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_random/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "e23b7909bd71e5abdbaeab3f93c98a89b57f3a3a061225af3989b913db3cae42";
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
