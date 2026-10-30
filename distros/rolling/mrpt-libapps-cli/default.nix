
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, mrpt-hwdrivers, mrpt-slam, mrpt-topography }:
buildRosPackage {
  pname = "ros-rolling-mrpt-libapps-cli";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_libapps_cli/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "c747f509bcc17449eac8128b2cd8ebe7a4ccf3275b8984adf33fa116684e4fb9";
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
