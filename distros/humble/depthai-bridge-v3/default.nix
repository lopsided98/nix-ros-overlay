
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, camera-info-manager, composition-interfaces, cv-bridge, depthai-ros-msgs-v3, depthai-v3, ffmpeg-image-transport-msgs, image-transport, nav-msgs, opencv, rclcpp, robot-state-publisher, ros-environment, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tf2-ros, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-depthai-bridge-v3";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-v3-release/archive/release/humble/depthai_bridge_v3/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "f8241e157dfb8ae97f4f1824b4f79eb3cc26df7caca9bc1e5d0ec06ef70b900f";
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
