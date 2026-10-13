
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-libapps-cli }:
buildRosPackage {
  pname = "ros-kilted-mrpt-apps-cli";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_apps_cli/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "2b61565e1c2c06148babdc812528b9a3dc2605bc615da796933791676dfe0976";
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
