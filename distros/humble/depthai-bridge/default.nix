
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, camera-info-manager, cv-bridge, depthai, depthai-ros-msgs, image-transport, opencv, rclcpp, robot-state-publisher, ros-environment, sensor-msgs, std-msgs, stereo-msgs, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-depthai-bridge";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai_bridge/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "5f8e7ddc317bf0df36016d621f18ae0a61ece60a12531ad12c7c95346bd0c8f2";
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
