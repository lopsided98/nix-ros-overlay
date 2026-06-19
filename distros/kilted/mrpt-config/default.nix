
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-expr, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-mrpt-config";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_config/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "83b099a1acf0cafdd013e12bb5be19b6b4e10b45128e1298136b09a1407f6459";
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
