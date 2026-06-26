
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-config-live, clearpath-platform-msgs, clearpath-viz }:
buildRosPackage {
  pname = "ros-humble-clearpath-desktop";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/humble/clearpath_desktop/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "52abe1a3933f58dae1ae3fba6f7fb17d4f3785043979e503509a77e8ae67b88d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-config-live clearpath-platform-msgs clearpath-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Packages for working with Clearpath Platforms from a ROS 2 desktop.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
