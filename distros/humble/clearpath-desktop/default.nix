
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-platform-msgs, clearpath-viz }:
buildRosPackage {
  pname = "ros-humble-clearpath-desktop";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/humble/clearpath_desktop/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "9cb15b0623a4ea62bb1c6866666a197479b00ecb5d39a5eb3a02cca1020c4a65";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-platform-msgs clearpath-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages for working with Clearpath Platforms from a ROS 2 desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
