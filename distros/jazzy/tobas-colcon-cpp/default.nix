
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-linux, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-colcon-cpp";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_colcon_cpp/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "40f75cab0417d5ac35ca1f2cf4eb39389bed555420d865b5f222b49719431c9e";
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
