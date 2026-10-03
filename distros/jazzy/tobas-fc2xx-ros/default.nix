
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, tobas-drone-msgs-adapter, tobas-fc2xx-core, tobas-ic-drivers, tobas-msgs-adapter, tobas-node, tobas-real-common, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc2xx-ros";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc2xx_ros/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "3c950001c737e78162fa082fa9561912e91750f36102277aafb8f6212654de2e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch launch-ros tobas-drone-msgs-adapter tobas-fc2xx-core tobas-ic-drivers tobas-msgs-adapter tobas-node tobas-real-common tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 sensor and actuator driver nodes for FC2xx flight controllers.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
