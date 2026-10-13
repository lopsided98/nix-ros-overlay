
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, magic-enum, sensor-msgs, tobas-drone-msgs-adapter, tobas-dsp, tobas-linux, tobas-msgs-adapter, tobas-node, tobas-property-tree, tobas-real-common, tobas-real-msgs, tobas-string-tools, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-real-ros";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_real_ros/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "112d2112e1633599c9851a56f51bcf707a839dbfd2b541792f155bed27951d53";
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
