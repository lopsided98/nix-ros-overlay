
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, tobas-drone-msgs-adapter, tobas-fc2xx-core, tobas-ic-drivers, tobas-msgs-adapter, tobas-node, tobas-real-common, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc2xx-ros";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc2xx_ros/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "a30f1d0ac7041b55a1f9608bf2e63f5afc1e9649973dd956f9b317c6843177d7";
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
