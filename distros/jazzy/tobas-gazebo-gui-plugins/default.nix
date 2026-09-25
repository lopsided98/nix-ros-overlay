
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-plugin-vendor, gz-sim-vendor, tobas-gazebo-common, tobas-gazebo-conversions, tobas-gazebo-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-gui-plugins";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_gui_plugins/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "c701f07f8e541f60e070b09c0a24147047ef066fced6d1ac3dbf3126e77f3c1e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gz-plugin-vendor gz-sim-vendor tobas-gazebo-common tobas-gazebo-conversions tobas-gazebo-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo GUI plugins for Tobas simulation control and visualization.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
