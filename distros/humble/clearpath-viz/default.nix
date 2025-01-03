
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-platform-description, joint-state-publisher-gui, rqt-robot-monitor, rviz2 }:
buildRosPackage {
  pname = "ros-humble-clearpath-viz";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/humble/clearpath_viz/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "182edcb7ec769c9e36dab764a342f4c5dc8d62b301d2360ce8e36c7a428ae910";
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
