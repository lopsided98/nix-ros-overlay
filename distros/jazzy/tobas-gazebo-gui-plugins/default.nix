
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-plugin-vendor, gz-sim-vendor, tobas-gazebo-common, tobas-gazebo-conversions, tobas-gazebo-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-gui-plugins";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_gui_plugins/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "90e007cbed31de31c8ede8c9286e7073c6ad6a399a407d6c479385c09d28e2fe";
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
