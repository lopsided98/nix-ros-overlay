
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-libapps-cli }:
buildRosPackage {
  pname = "ros-rolling-mrpt-apps-cli";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_apps_cli/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "02272bffb51303cd2def0aa0b8e0772578f7bf5bcbbf544deb98c20220b6b941";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mrpt-common mrpt-libapps-cli ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "MRPT command line applications";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
