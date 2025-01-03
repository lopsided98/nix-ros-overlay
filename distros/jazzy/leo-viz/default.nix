
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, joint-state-publisher, joint-state-publisher-gui, leo-description, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-leo-viz";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_desktop-release/archive/release/jazzy/leo_viz/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "ed9d24065e1bfe882b1acbaffd2ca497f8d71a9403ab3ebe0be2ea20321777ff";
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
