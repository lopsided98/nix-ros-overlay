
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-viz }:
buildRosPackage {
  pname = "ros-rolling-leo-desktop";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_desktop-release/archive/release/rolling/leo_desktop/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "81d706946202b06322c059142ed0286eb65172fabab4a9a990576d95e9e173ca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ leo leo-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of software for operating Leo Rover from ROS desktop";
    license = with lib.licenses; [ mit ];
  };
}
