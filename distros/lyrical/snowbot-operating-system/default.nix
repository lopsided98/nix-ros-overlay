
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, geometry-msgs, pluginlib, rviz-common, rviz-rendering }:
buildRosPackage {
  pname = "ros-lyrical-snowbot-operating-system";
  version = "0.1.2-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/snowbot_release/archive/release/lyrical/snowbot_operating_system/0.1.2-6.tar.gz";
    name = "0.1.2-6.tar.gz";
    sha256 = "30448a785343ffce8450f56a8130a3263a469fb6727f83902fdbecd4f5851a98";
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
