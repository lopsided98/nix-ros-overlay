
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dsp, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-vibration-filter";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_vibration_filter/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "a6705226f949d733258b221798d83e6b288b89007549468c606c9daebebd0d8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-dsp tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 node that filters IMU vibration and publishes vibration metrics.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
