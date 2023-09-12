
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, husky-description, joint-state-publisher, joint-state-publisher-gui, launch-ros, robot-state-publisher, rviz2 }:
buildRosPackage {
  pname = "ros-foxy-husky-viz";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/foxy/husky_viz/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "1eef840b70f5aa4860f807918889b5d3bd10e61f4c67d0e5276cc65d8fcd8d4e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ husky-description joint-state-publisher joint-state-publisher-gui launch-ros robot-state-publisher rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Visualization configuration for Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
