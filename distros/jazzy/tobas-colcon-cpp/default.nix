
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-linux, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-colcon-cpp";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_colcon_cpp/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "cbe0683dcb9c7cbec701e1fa6208170c0435142932cc63cb8ca57964582edf56";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-linux tobas-ros2-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ interface for invoking colcon builds and processing build events.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
