
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, cv-bridge, python-qt-binding, qt5, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-ros-image-to-qimage";
  version = "0.4.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_image_to_qimage-release/archive/release/kilted/ros_image_to_qimage/0.4.1-4.tar.gz";
    name = "0.4.1-4.tar.gz";
    sha256 = "e038a5ce6b9ec8914fc38a4d5ca54fb6872f287a08168737bc1b3691f8ab4547";
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
