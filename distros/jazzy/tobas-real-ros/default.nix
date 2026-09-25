
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, magic-enum, sensor-msgs, tobas-drone-msgs-adapter, tobas-dsp, tobas-linux, tobas-msgs-adapter, tobas-node, tobas-property-tree, tobas-real-common, tobas-real-msgs, tobas-string-tools, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-real-ros";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_real_ros/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "3134ff9cf3b6422a9fc52c36902fc6a76f04bb7502b131fa4bb8936e892533f7";
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
