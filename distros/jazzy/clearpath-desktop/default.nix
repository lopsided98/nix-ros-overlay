
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-config-live, clearpath-offboard-sensors, clearpath-platform-msgs, clearpath-viz }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-desktop";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/jazzy/clearpath_desktop/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "b4ee7748a02bd86d4b44c55c45c8689b0671f7d5e4fa712e84dac52e78d25ae9";
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
