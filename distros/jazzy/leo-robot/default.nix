
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-bringup, leo-fw }:
buildRosPackage {
  pname = "ros-jazzy-leo-robot";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/jazzy/leo_robot/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "0262b2b171c417ff2e1bf144dcfcbff9dc8eda56b5aa4d01101e5ec56b224722";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ leo leo-bringup leo-fw ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of software to install on Leo Rover.";
    license = with lib.licenses; [ mit ];
  };
}
