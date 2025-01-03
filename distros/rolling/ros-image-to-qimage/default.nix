
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, cv-bridge, python-qt-binding, qt5, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros-image-to-qimage";
  version = "0.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_image_to_qimage-release/archive/release/rolling/ros_image_to_qimage/0.4.1-3.tar.gz";
    name = "0.4.1-3.tar.gz";
    sha256 = "1f87904e474d994832be7caa4c0cc969e6ef2d0e02bc0251b94cfbc951c2d959";
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
