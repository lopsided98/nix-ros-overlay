
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot4-viz }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-desktop";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_desktop-release/archive/release/jazzy/turtlebot4_desktop/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "34d37d53158baf14ca09709329ad08b4892cee5ba1d29b324688db1a058908e0";
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
