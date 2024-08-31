
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, boost, camera-info-manager, composition-interfaces, cv-bridge, depthai, depthai-ros-msgs, ffmpeg-image-transport-msgs, image-transport, opencv, rclcpp, robot-state-publisher, ros-environment, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tf2-ros, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-jazzy-depthai-bridge";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/jazzy/depthai_bridge/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "7e77952598a329a6cc435ef4064e4b5966d0f51d5816cb2c3ffb8678053016ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp boost camera-info-manager composition-interfaces cv-bridge depthai depthai-ros-msgs ffmpeg-image-transport-msgs image-transport opencv opencv.cxxdev rclcpp robot-state-publisher ros-environment sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs tf2-ros vision-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The depthai_bridge package";
    license = with lib.licenses; [ mit ];
  };
}
