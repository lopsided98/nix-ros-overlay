
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, camera-info-manager, cv-bridge, depthai, depthai-ros-msgs, image-transport, opencv, rclcpp, robot-state-publisher, ros-environment, sensor-msgs, std-msgs, stereo-msgs, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-depthai-bridge";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai_bridge/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "7ba8e3cc0e7a1db8fa746958c4b81c2d99964cb3a8e6fdf033f6e3deae91f1ef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost camera-info-manager cv-bridge depthai depthai-ros-msgs image-transport opencv rclcpp robot-state-publisher ros-environment sensor-msgs std-msgs stereo-msgs vision-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The depthai_bridge package'';
    license = with lib.licenses; [ mit ];
  };
}
