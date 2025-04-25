
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, aruco-markers-msgs, cv-bridge, geometry-msgs, image-transport, opencv, sensor-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-aruco-markers";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/namo-robotics/aruco_markers-release/archive/release/humble/aruco_markers/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "bd556264cc7cb801d81aeee8aa29b218348a6727b302c5634ff8dd96f90f25ed";
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
