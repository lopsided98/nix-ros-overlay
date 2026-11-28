
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-plugin-vendor, gz-sim-vendor, sensor-msgs, std-srvs, tobas-drone-tools, tobas-dsp, tobas-gazebo-common, tobas-gazebo-conversions, tobas-gazebo-msgs, tobas-gazebo-tools, tobas-geographic, tobas-msgs-adapter, tobas-nlp, tobas-node, tobas-tools, tobas-wind-model }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-system-plugins";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_system_plugins/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "d3fcfa6b6f13956242ad393405b4e2e371251aebb67aca4e09c7dba53b02e470";
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
