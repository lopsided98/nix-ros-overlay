
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-libapps-cli }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-apps-cli";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_apps_cli/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "1560d066459867c3f3c84adaf7793574875e57a82490c2c457df2b67938025ac";
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
