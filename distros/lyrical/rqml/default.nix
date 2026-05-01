
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rqml-core, rqml-default-plugins }:
buildRosPackage {
  pname = "ros-lyrical-rqml";
  version = "3.26.42-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqml-release/archive/release/lyrical/rqml/3.26.42-3.tar.gz";
    name = "3.26.42-3.tar.gz";
    sha256 = "e14f27b42b42cf15fb35d9b5514fc774e0388e7c3a5613843c4e84c8ac6104d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rqml-core rqml-default-plugins ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "QML-based robotics visualization and control tool for ROS 2.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
