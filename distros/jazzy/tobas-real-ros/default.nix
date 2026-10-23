
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, magic-enum, sensor-msgs, tobas-drone-msgs-adapter, tobas-dsp, tobas-linux, tobas-msgs-adapter, tobas-node, tobas-property-tree, tobas-real-common, tobas-real-msgs, tobas-string-tools, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-real-ros";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_real_ros/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "b3d539d5f7462e8e8c827adf4280c247d9e1efee7c9ec9841cac6919411ba57a";
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
