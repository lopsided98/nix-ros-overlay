
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, aruco-markers-msgs, cv-bridge, geometry-msgs, image-transport, opencv, sensor-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-aruco-markers";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/namo-robotics/aruco_markers-release/archive/release/rolling/aruco_markers/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "6a8fea99c08283276a54c74e9a3cbefc46a74efb75d6a653c95d2704f66c70bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ aruco-markers-msgs cv-bridge geometry-msgs image-transport opencv opencv.cxxdev sensor-msgs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ros2 node for detecting aruco markers in camera images";
    license = with lib.licenses; [ mit ];
  };
}
