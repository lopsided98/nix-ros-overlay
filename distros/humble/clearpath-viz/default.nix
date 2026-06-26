
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-description, joint-state-publisher-gui, nav2-rviz-plugins, rqt-robot-monitor, rviz2 }:
buildRosPackage {
  pname = "ros-humble-clearpath-viz";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/humble/clearpath_viz/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "88e8dcb9e266a60ac7c99277dcb13352ee9e9fbcb682730b23c988c38614b2b0";
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
