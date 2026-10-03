
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-linux, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-colcon-cpp";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_colcon_cpp/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "16a012a1d673b770379f80e685dccefe6bf6d403af5a85cd553ed7603eb8b5c4";
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
