
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common }:
buildRosPackage {
  pname = "ros-rolling-mrpt-typemeta";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_typemeta/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "a9a37a1a7a963e82997fc065898583a29d4debffeea6ff0503a0acd2e440ee8e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mrpt-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_typemeta";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
