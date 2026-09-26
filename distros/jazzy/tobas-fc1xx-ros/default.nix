
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-msgs-adapter, tobas-dsp, tobas-fc1xx-core, tobas-hardware-common, tobas-ic-drivers, tobas-msgs-adapter, tobas-real-common, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc1xx-ros";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc1xx_ros/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "d7b3e1ca2c3e17c44b568f98a8d70c416157ac5958a8919a115f670adc0d659a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-drone-msgs-adapter tobas-dsp tobas-fc1xx-core tobas-hardware-common tobas-ic-drivers tobas-msgs-adapter tobas-real-common tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 sensor and actuator driver nodes for FC1xx flight controllers.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
