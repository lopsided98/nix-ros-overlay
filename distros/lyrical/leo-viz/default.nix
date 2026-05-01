
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, joint-state-publisher, joint-state-publisher-gui, leo-description, rviz2 }:
buildRosPackage {
  pname = "ros-lyrical-leo-viz";
  version = "3.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_desktop-release/archive/release/lyrical/leo_viz/3.0.0-4.tar.gz";
    name = "3.0.0-4.tar.gz";
    sha256 = "eaccb3d3d600e392532fb1eb1112b9e6cacecdcc8f1de8b36c069a2ffe47c71d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui leo-description rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Visualization launch files and RViz configurations for Leo Rover";
    license = with lib.licenses; [ mit ];
  };
}
