
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, mrpt-hwdrivers, mrpt-slam, mrpt-topography }:
buildRosPackage {
  pname = "ros-rolling-mrpt-libapps-cli";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_libapps_cli/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "ff34b66238c2cf1f49b16e5f94752860286466db5146ca5d4ecb23f0c264996e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ cli11 mrpt-hwdrivers mrpt-slam mrpt-topography ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_libapps_cli";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
