
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dsp, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-vibration-filter";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_vibration_filter/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "39be6012400ee9dcdab86dc1fddd1ee7642b27a34239a081e2e387c3f66cf578";
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
