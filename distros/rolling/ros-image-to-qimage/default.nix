
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, cv-bridge, python-qt-binding, qt5, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros-image-to-qimage";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_image_to_qimage-release/archive/release/rolling/ros_image_to_qimage/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "ef40b8433597b611faec0226fb992522ac4b06873ef6d00aec8ff7ade92a2e17";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-pytest ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge python-qt-binding qt5.qtbase sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-pytest ament-cmake-python ];

  meta = {
    description = ''A package that converts a ros image msg to a qimage object'';
    license = with lib.licenses; [ asl20 ];
  };
}
