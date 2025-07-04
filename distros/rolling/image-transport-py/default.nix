
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, image-transport, pybind11-vendor, python3, rclcpp, rpyutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-image-transport-py";
  version = "6.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/rolling/image_transport_py/6.2.2-1.tar.gz";
    name = "6.2.2-1.tar.gz";
    sha256 = "a4b424069ac0f53f528c0d00ebca018993bf6fff8227ebd47acd29819bbcb412";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros pybind11-vendor python3 ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ image-transport rclcpp rpyutils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = "Python API for image_transport";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
