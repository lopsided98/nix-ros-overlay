
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-platform-description, joint-state-publisher-gui, rqt-robot-monitor, rviz2 }:
buildRosPackage {
  pname = "ros-humble-clearpath-viz";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/humble/clearpath_viz/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "b5727670409dd096cd9420e63d691ee495fd5ce35d78646089acae231310ae73";
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
