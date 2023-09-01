
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-platform-description, joint-state-publisher-gui, rviz2 }:
buildRosPackage {
  pname = "ros-humble-clearpath-viz";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/humble/clearpath_viz/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "175a11f7b587b04e2e692e686d622ef33ee6eea3b66f70dc663d2fe8f83d472b";
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
