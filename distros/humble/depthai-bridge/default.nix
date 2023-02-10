
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, camera-info-manager, cv-bridge, depthai, depthai-ros-msgs, image-transport, opencv, rclcpp, robot-state-publisher, ros-environment, sensor-msgs, std-msgs, stereo-msgs, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-depthai-bridge";
  version = "2.6.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai_bridge/2.6.2-1.tar.gz";
    name = "2.6.2-1.tar.gz";
    sha256 = "66844bb22eac5db144709d3abf930d3ae13e161a9bfd3a14107208e3c65316e9";
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
