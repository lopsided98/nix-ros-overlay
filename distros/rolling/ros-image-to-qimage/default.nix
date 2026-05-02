
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, cv-bridge, python-qt-binding, qt5, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros-image-to-qimage";
  version = "0.4.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_image_to_qimage-release/archive/release/rolling/ros_image_to_qimage/0.4.1-4.tar.gz";
    name = "0.4.1-4.tar.gz";
    sha256 = "5a603dd51797056bfbf043cd43e25d715c6b3628b4136de5b404d3c7e0e9616f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-pytest ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge python-qt-binding qt5.qtbase sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-pytest ament-cmake-python ];

  meta = {
    description = "A package that converts a ros image msg to a qimage object";
    license = with lib.licenses; [ asl20 ];
  };
}
