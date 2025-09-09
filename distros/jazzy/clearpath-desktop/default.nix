
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-config-live, clearpath-offboard-sensors, clearpath-platform-msgs, clearpath-viz }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-desktop";
  version = "2.7.0-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/jazzy/clearpath_desktop/2.7.0-2.tar.gz";
    name = "2.7.0-2.tar.gz";
    sha256 = "ba4cbf41bdd6f3efb47fde3c9dde8ed262ad6b4fe5bb1fc916c3f00e9a169b4d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-config-live clearpath-offboard-sensors clearpath-platform-msgs clearpath-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Packages for working with Clearpath Platforms from a ROS 2 desktop.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
