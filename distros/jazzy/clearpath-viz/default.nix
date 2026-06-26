
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-description, joint-state-publisher-gui, nav2-rviz-plugins, rqt-robot-monitor, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-viz";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/jazzy/clearpath_viz/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "06a28e47e1d4318d49d5c7686f4db4a98220a7a0d9b02a972bc3db17862dea56";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-description joint-state-publisher-gui nav2-rviz-plugins rqt-robot-monitor rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Visualization launchers for Clearpath Platforms.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
