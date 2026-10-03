
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, tobas-drone-msgs-adapter, tobas-dsp, tobas-fc1xx-core, tobas-hardware-common, tobas-ic-drivers, tobas-msgs-adapter, tobas-real-common, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc1xx-ros";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc1xx_ros/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "e2dadc2fa69c34c33fbc0d3ecc78b229af2a9cf873ddb6ca92cfa6c7ccd9663f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch launch-ros tobas-drone-msgs-adapter tobas-dsp tobas-fc1xx-core tobas-hardware-common tobas-ic-drivers tobas-msgs-adapter tobas-real-common tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 sensor and actuator driver nodes for FC1xx flight controllers.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
