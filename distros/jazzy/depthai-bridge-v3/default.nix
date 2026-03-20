
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, camera-info-manager, composition-interfaces, cv-bridge, depthai-ros-msgs-v3, depthai-v3, ffmpeg-image-transport-msgs, image-transport, nav-msgs, opencv, rclcpp, robot-state-publisher, ros-environment, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tf2-ros, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-jazzy-depthai-bridge-v3";
  version = "3.1.1-r2";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-v3-release/archive/release/jazzy/depthai_bridge_v3/3.1.1-2.tar.gz";
    name = "3.1.1-2.tar.gz";
    sha256 = "e439f6b223c819fde84c111eb3c68e1131585d18df082c602651151693288138";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ boost camera-info-manager composition-interfaces cv-bridge depthai-ros-msgs-v3 depthai-v3 ffmpeg-image-transport-msgs image-transport nav-msgs opencv opencv.cxxdev rclcpp robot-state-publisher ros-environment sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs tf2-ros vision-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The depthai_bridge_v3 package";
    license = with lib.licenses; [ mit ];
  };
}
