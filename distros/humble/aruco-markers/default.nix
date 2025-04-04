
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, aruco-markers-msgs, cv-bridge, geometry-msgs, image-transport, opencv, sensor-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-aruco-markers";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/namo-robotics/aruco_markers-release/archive/release/humble/aruco_markers/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "9008916fc2dd8f290b20b34a46c7a19115a4d3da3d9d53cf563f49eb33d8e3a5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ aruco-markers-msgs cv-bridge geometry-msgs image-transport opencv opencv.cxxdev sensor-msgs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ros2 node for detecting aruco markers in camera images";
    license = with lib.licenses; [ mit ];
  };
}
