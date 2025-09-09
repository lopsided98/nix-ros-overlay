
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-platform-description, joint-state-publisher-gui, rqt-robot-monitor, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-viz";
  version = "2.7.0-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/jazzy/clearpath_viz/2.7.0-2.tar.gz";
    name = "2.7.0-2.tar.gz";
    sha256 = "e0b1e0898ddce38e8311a3b6a701950b9b46660cd8fba67d4adb61b5e6c1aa17";
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
