
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, mrpt-hwdrivers, mrpt-slam, mrpt-topography }:
buildRosPackage {
  pname = "ros-rolling-mrpt-libapps-cli";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_libapps_cli/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "c17fcfe2c10b2b9d7a80d92523b8422244ec2eb5d381dbcb19d9c69c2f91296b";
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
