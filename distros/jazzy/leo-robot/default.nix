
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-bringup, leo-filters, leo-fw }:
buildRosPackage {
  pname = "ros-jazzy-leo-robot";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/jazzy/leo_robot/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "c8958c830b66d1318e6fab671cc302f640afb90494a8915edb28d3eee9ddb083";
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
