
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-libapps-cli }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-apps-cli";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_apps_cli/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "6c9c71697943417e391e117e59e25b3cd304e5ae7fde92c05e6cc4b2119534c5";
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
