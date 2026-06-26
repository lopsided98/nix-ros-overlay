
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-config-live, clearpath-offboard-sensors, clearpath-platform-msgs, clearpath-viz }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-desktop";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/jazzy/clearpath_desktop/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "dd3f57b1bfc4cb3ed9372c0ccd939d364a271399f512fdba97e301bad126300d";
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
