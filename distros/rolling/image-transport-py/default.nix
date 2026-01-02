
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, image-transport, python3, python3Packages, rclcpp, rpyutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-image-transport-py";
  version = "6.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/rolling/image_transport_py/6.4.4-1.tar.gz";
    name = "6.4.4-1.tar.gz";
    sha256 = "784eee2f7a53e8f36a4d3c81b6cd89581e653a839ca81681c20957aa328dcdc1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros python3 python3Packages.pybind11 ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ image-transport rclcpp rpyutils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = "Python API for image_transport";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
