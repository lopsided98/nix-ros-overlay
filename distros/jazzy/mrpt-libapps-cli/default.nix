
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, mrpt-hwdrivers, mrpt-slam, mrpt-topography }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-libapps-cli";
  version = "3.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_libapps_cli/3.1.4-1.tar.gz";
    name = "3.1.4-1.tar.gz";
    sha256 = "0c2a3b55921b701d0b188c637dbb9840d2a71938d019b8eba3057794582d4a76";
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
