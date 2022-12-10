
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, geometry-msgs, pluginlib, rviz-common, rviz-rendering }:
buildRosPackage {
  pname = "ros-rolling-snowbot-operating-system";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/snowbot_release/archive/release/rolling/snowbot_operating_system/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "5cd619e7afcd212003e7000d3787b873de018b04cf5d4e554e2bac2261cd25a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ];
  propagatedBuildInputs = [ ament-cmake-ros geometry-msgs pluginlib rviz-common rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The weather outside is frightful'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
