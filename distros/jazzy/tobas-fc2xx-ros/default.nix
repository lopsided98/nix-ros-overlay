
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-msgs-adapter, tobas-fc2xx-core, tobas-ic-drivers, tobas-msgs-adapter, tobas-node, tobas-real-common, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc2xx-ros";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc2xx_ros/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "5b617b0fd86567de65ecb6170bd8e1a3bd59ad902e756e22a6001684954c7d10";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-drone-msgs-adapter tobas-fc2xx-core tobas-ic-drivers tobas-msgs-adapter tobas-node tobas-real-common tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 sensor and actuator driver nodes for FC2xx flight controllers.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
