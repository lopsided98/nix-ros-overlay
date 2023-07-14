
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-platform-description, joint-state-publisher-gui, rviz2 }:
buildRosPackage {
  pname = "ros-humble-clearpath-viz";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/humble/clearpath_viz/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "6b1e2eedc67cc4435684389f42c76a0bfc0fd1dfbfbeb8cbdbada1d83bce2675";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-platform-description joint-state-publisher-gui rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Visualization launchers for Clearpath Platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
