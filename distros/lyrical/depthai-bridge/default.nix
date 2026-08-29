
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, camera-info-manager, composition-interfaces, cv-bridge, depthai, depthai-ros-msgs, ffmpeg-image-transport-msgs, image-transport, nav-msgs, opencv, rclcpp, robot-state-publisher, ros-environment, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tf2-ros, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-lyrical-depthai-bridge";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/lyrical/depthai_bridge/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "2fa5f6c52eac714d9ab881ab5d940e26371ad5adcb5d8b25f43f69c45d82b414";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ boost camera-info-manager composition-interfaces cv-bridge depthai depthai-ros-msgs ffmpeg-image-transport-msgs image-transport nav-msgs opencv opencv.cxxdev rclcpp robot-state-publisher ros-environment sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs tf2-ros vision-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The depthai_bridge package";
    license = with lib.licenses; [ mit ];
  };
}
