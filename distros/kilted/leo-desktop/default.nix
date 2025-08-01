
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-viz }:
buildRosPackage {
  pname = "ros-kilted-leo-desktop";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_desktop-release/archive/release/kilted/leo_desktop/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "203cbd1b0c8acbc2a23fec131f231a2c22b08853021ea6611ffce9f6a6153943";
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
