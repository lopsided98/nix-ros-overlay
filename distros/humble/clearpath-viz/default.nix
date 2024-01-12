
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-platform-description, joint-state-publisher-gui, rqt-robot-monitor, rviz2 }:
buildRosPackage {
  pname = "ros-humble-clearpath-viz";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/humble/clearpath_viz/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "9fe165c5664e633560c10045783c283f92fd598ec79189a6d747f182ee27992f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-platform-description joint-state-publisher-gui rqt-robot-monitor rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Visualization launchers for Clearpath Platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
