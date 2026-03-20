
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros, camera-info-manager, cv-bridge, depth-image-proc, depthai-bridge-v3, depthai-descriptions-v3, depthai-ros-msgs-v3, depthai-v3, foxglove-msgs, image-transport, nav-msgs, opencv, rclcpp, robot-state-publisher, ros-environment, rviz-imu-plugin, sensor-msgs, std-msgs, stereo-msgs, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-depthai-examples-v3";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-v3-release/archive/release/humble/depthai_examples_v3/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "01390265e5929bd9a0016ec98799498412fc1155889f519404e0525c176a5d44";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ backward-ros camera-info-manager cv-bridge depth-image-proc depthai-bridge-v3 depthai-descriptions-v3 depthai-ros-msgs-v3 depthai-v3 foxglove-msgs image-transport nav-msgs opencv opencv.cxxdev rclcpp robot-state-publisher ros-environment rviz-imu-plugin sensor-msgs std-msgs stereo-msgs vision-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The depthai_examples_v3 package";
    license = with lib.licenses; [ mit ];
  };
}
