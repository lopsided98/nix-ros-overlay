
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-viz }:
buildRosPackage {
  pname = "ros-jazzy-leo-desktop";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_desktop-release/archive/release/jazzy/leo_desktop/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "3d9e9a677b883cdf03611e2d376cb62c068c49286b181a9d31158845e5f74550";
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
