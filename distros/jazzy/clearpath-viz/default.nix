
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-common, clearpath-description, joint-state-publisher-gui, nav2-rviz-plugins, rqt-robot-monitor, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-viz";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/jazzy/clearpath_viz/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "794255e49608dfe6a819ddb4da2dbb28c48400f990446ce5f9eb8e2ed471235f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-common clearpath-description joint-state-publisher-gui nav2-rviz-plugins rqt-robot-monitor rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Visualization launchers for Clearpath Platforms.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
