
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-linux, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-colcon-cpp";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_colcon_cpp/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "b240d2755a129f6f785102b035a074b01aa2da14059e34b30dc3be3e55f5ef39";
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
