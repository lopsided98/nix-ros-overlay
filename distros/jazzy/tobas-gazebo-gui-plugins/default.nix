
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-plugin-vendor, gz-sim-vendor, tobas-gazebo-common, tobas-gazebo-conversions, tobas-gazebo-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-gui-plugins";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_gui_plugins/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "e044c9ceb9e964428771029e4095f6e39626092c67ddf563754ccdc46d8ce3da";
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
