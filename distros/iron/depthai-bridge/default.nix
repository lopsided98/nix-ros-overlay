
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, camera-info-manager, composition-interfaces, cv-bridge, depthai, depthai-ros-msgs, ffmpeg-image-transport-msgs, image-transport, opencv, rclcpp, robot-state-publisher, ros-environment, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tf2-ros, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-iron-depthai-bridge";
  version = "2.10.3-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/iron/depthai_bridge/2.10.3-1.tar.gz";
    name = "2.10.3-1.tar.gz";
    sha256 = "011b04cf6fbd118c7ccf4905d57170b058bcd2a67bf28701cbe6ca5a571d16eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost camera-info-manager composition-interfaces cv-bridge depthai depthai-ros-msgs ffmpeg-image-transport-msgs image-transport opencv opencv.cxxdev rclcpp robot-state-publisher ros-environment sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs tf2-ros vision-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The depthai_bridge package";
    license = with lib.licenses; [ mit ];
  };
}
