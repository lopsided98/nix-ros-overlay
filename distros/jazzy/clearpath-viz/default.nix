
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-platform-description, joint-state-publisher-gui, rqt-robot-monitor, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-viz";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/jazzy/clearpath_viz/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "7c938874cb81dafc5241529a0cd4e0005e27ac7f3e5db71b2039ef86f3a1e648";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-platform-description joint-state-publisher-gui rqt-robot-monitor rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Visualization launchers for Clearpath Platforms.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
