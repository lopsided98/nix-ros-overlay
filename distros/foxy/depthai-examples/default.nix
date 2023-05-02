
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, camera-info-manager, cv-bridge, depth-image-proc, depthai, depthai-bridge, depthai-descriptions, depthai-ros-msgs, foxglove-msgs, image-transport, opencv, rclcpp, robot-state-publisher, ros-environment, rviz-imu-plugin, sensor-msgs, std-msgs, stereo-msgs, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-foxy-depthai-examples";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/foxy/depthai_examples/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "0cd7f68eff463b5399a037da4a2309433f422de6d2a57a2483a6cdebcd965a2f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge depth-image-proc depthai depthai-bridge depthai-descriptions depthai-ros-msgs foxglove-msgs image-transport opencv rclcpp robot-state-publisher ros-environment rviz-imu-plugin sensor-msgs std-msgs stereo-msgs vision-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The depthai_examples package'';
    license = with lib.licenses; [ mit ];
  };
}
