
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-platform-description, joint-state-publisher-gui, rviz2 }:
buildRosPackage {
  pname = "ros-humble-clearpath-viz";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/humble/clearpath_viz/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "21b32ca6cb7e7a67dc56847ffe0f44ad704af94c5bf406aae16d7df7712b2d68";
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
