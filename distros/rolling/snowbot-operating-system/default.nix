
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, geometry-msgs, pluginlib, rviz-common, rviz-rendering }:
buildRosPackage {
  pname = "ros-rolling-snowbot-operating-system";
  version = "0.1.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/snowbot_release/archive/release/rolling/snowbot_operating_system/0.1.2-5.tar.gz";
    name = "0.1.2-5.tar.gz";
    sha256 = "75cf03cc5a93e436ced1da20e2455f54c013ad2cf9253c18665f8dff579b7486";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ];
  propagatedBuildInputs = [ ament-cmake-ros geometry-msgs pluginlib rviz-common rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The weather outside is frightful";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
