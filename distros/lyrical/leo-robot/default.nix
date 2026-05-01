
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-bringup, leo-filters, leo-fw }:
buildRosPackage {
  pname = "ros-lyrical-leo-robot";
  version = "2.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/lyrical/leo_robot/2.5.0-3.tar.gz";
    name = "2.5.0-3.tar.gz";
    sha256 = "024c38cd333e42735d6c4dbd44e072e862af684e8b33e99d1bdf598d3a353da7";
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
