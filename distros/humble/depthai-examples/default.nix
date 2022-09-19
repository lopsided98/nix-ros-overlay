
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, camera-info-manager, cv-bridge, depth-image-proc, depthai, depthai-bridge, depthai-ros-msgs, foxglove-msgs, image-transport, opencv, rclcpp, robot-state-publisher, ros-environment, sensor-msgs, std-msgs, stereo-msgs, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-depthai-examples";
  version = "2.5.3-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai_examples/2.5.3-1.tar.gz";
    name = "2.5.3-1.tar.gz";
    sha256 = "d915d980dee87c69c97523dc9e7a539bf7f5246cfb89c729e37d8503df9d2d41";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge depth-image-proc depthai depthai-bridge depthai-ros-msgs foxglove-msgs image-transport opencv rclcpp robot-state-publisher ros-environment sensor-msgs std-msgs stereo-msgs vision-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The depthai_examples package'';
    license = with lib.licenses; [ mit ];
  };
}
