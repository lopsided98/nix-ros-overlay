
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, mrpt-hwdrivers, mrpt-slam, mrpt-topography }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-libapps-cli";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_libapps_cli/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "aa5158f04da8d9b8b005c81059f8b2b7c269d568a1455384b9f3f5d977eec1ab";
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
