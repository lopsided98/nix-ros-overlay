
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-libapps-cli }:
buildRosPackage {
  pname = "ros-rolling-mrpt-apps-cli";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_apps_cli/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "a64ed4994d1ea1a3cf41485c59d3ef792196be1b29adfe0c8364403a521521dc";
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
