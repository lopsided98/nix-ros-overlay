
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, aruco-markers-msgs, cv-bridge, geometry-msgs, image-transport, opencv, sensor-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-aruco-markers";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/namo-robotics/aruco_markers-release/archive/release/jazzy/aruco_markers/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "4ab6d1c3aeb54da5c8a5ca22dddd08652005f0003782a35d9df1f0631a9fcf4e";
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
