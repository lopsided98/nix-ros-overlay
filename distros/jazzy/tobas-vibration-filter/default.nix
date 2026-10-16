
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dsp, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-vibration-filter";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_vibration_filter/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "ac1a3f3da1d9f79134309a4561cc50f48769f60e212ac256c80d853ce8f34dfb";
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
