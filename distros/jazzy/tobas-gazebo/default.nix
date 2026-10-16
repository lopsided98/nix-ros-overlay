
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-gazebo-common, tobas-gazebo-conversions, tobas-gazebo-gui-plugins, tobas-gazebo-msgs, tobas-gazebo-ros, tobas-gazebo-sim, tobas-gazebo-system-plugins, tobas-gazebo-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "6c54fae90c7bd28f4be114ef6311d39eee8fe20b60b1e3fb0d8a52fa3a355952";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-gazebo-common tobas-gazebo-conversions tobas-gazebo-gui-plugins tobas-gazebo-msgs tobas-gazebo-ros tobas-gazebo-sim tobas-gazebo-system-plugins tobas-gazebo-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Tobas Gazebo simulation integration.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
