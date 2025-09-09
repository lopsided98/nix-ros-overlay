
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, joint-state-publisher, joint-state-publisher-gui, leo-description, rviz2 }:
buildRosPackage {
  pname = "ros-kilted-leo-viz";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_desktop-release/archive/release/kilted/leo_viz/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "21f2c83a14b57f9c5ed48c59cc99a926582a6611e7ee2296f57e3b4c4f600ffe";
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
