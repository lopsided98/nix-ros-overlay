
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-bringup, leo-filters, leo-fw }:
buildRosPackage {
  pname = "ros-jazzy-leo-robot";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/jazzy/leo_robot/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "c7b4443714f9b4ec67a4310ae6c9d99953794b21e779fcab3d0a1f11f42f83b2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ leo leo-bringup leo-filters leo-fw ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of software to install on Leo Rover.";
    license = with lib.licenses; [ mit ];
  };
}
