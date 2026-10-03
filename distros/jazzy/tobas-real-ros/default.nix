
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, magic-enum, sensor-msgs, tobas-drone-msgs-adapter, tobas-dsp, tobas-linux, tobas-msgs-adapter, tobas-node, tobas-property-tree, tobas-real-common, tobas-real-msgs, tobas-string-tools, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-real-ros";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_real_ros/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "ee858a9704ffb1b298612800d4cfe59e568f07691141035edf3a61302a5a383f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ magic-enum sensor-msgs tobas-drone-msgs-adapter tobas-dsp tobas-linux tobas-msgs-adapter tobas-node tobas-property-tree tobas-real-common tobas-real-msgs tobas-string-tools tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 handlers for real IMU, magnetometer, RC, joint, CPU, and propulsion-system data.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
