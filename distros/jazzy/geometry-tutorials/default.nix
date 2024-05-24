
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-geometry-tutorials";
  version = "0.3.6-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/jazzy/geometry_tutorials/0.3.6-5.tar.gz";
    name = "0.3.6-5.tar.gz";
    sha256 = "dd911d1bad5dea684d52e8bc23e98ca9ba3abd73d82890987bed7ce8ef35ddaf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of geometry tutorials ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
