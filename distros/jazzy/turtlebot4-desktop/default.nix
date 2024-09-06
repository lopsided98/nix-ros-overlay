
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot4-viz }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-desktop";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_desktop-release/archive/release/jazzy/turtlebot4_desktop/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "5ad56dcddfdb1ed92395c4870f36e71f58d317b5df6acaa0eba33d0f2a578de2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot4-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Turtlebot4 Desktop Metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
