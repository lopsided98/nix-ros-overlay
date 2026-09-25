
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-plugin-vendor, gz-sim-vendor, sensor-msgs, std-srvs, tobas-drone-tools, tobas-dsp, tobas-gazebo-common, tobas-gazebo-conversions, tobas-gazebo-msgs, tobas-gazebo-tools, tobas-geographic, tobas-msgs-adapter, tobas-nlp, tobas-node, tobas-tools, tobas-wind-model }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-system-plugins";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_system_plugins/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "6d27475b11883114739aa63f79eda33d95213ebf5996f14c09b234421caf1661";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gz-plugin-vendor gz-sim-vendor sensor-msgs std-srvs tobas-drone-tools tobas-dsp tobas-gazebo-common tobas-gazebo-conversions tobas-gazebo-msgs tobas-gazebo-tools tobas-geographic tobas-msgs-adapter tobas-nlp tobas-node tobas-tools tobas-wind-model ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo system and sensor plugins for simulating Tobas vehicles and hardware.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
