
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, husky-description, joint-state-publisher, joint-state-publisher-gui, launch-ros, robot-state-publisher, rviz2 }:
buildRosPackage {
  pname = "ros-foxy-husky-viz";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/foxy/husky_viz/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "6fe27fd6224aacd509ac4357d84243c6c2306f3b724c8b4f883c3e1255cf39e7";
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
