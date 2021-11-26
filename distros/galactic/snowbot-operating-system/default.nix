
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, geometry-msgs, pluginlib, rviz-common, rviz-rendering }:
buildRosPackage {
  pname = "ros-galactic-snowbot-operating-system";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/snowbot_release/archive/release/galactic/snowbot_operating_system/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "90f62b486ee1072369986e31abe1dafd4147c35e55166a8e5387e7c684730f07";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ];
  propagatedBuildInputs = [ geometry-msgs pluginlib rviz-common rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The weather outside is frightful'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
