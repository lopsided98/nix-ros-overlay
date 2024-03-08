
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-viz }:
buildRosPackage {
  pname = "ros-rolling-leo-desktop";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_desktop-release/archive/release/rolling/leo_desktop/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "445db6ee8cfa063b45d6f5778a7d3fb3dadd9501b510d2dad03f002fa9fa1cd6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ leo leo-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of software for operating Leo Rover from ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
