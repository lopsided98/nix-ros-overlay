
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, image-transport, python3, python3Packages, rclcpp, rpyutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-image-transport-py";
  version = "7.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/rolling/image_transport_py/7.0.5-1.tar.gz";
    name = "7.0.5-1.tar.gz";
    sha256 = "85bb11c6d129ac6657f7b892bf53eda13e67dc3df55c7c7a3c5039963ac809df";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros ament-cmake-ros-core python3 python3Packages.pybind11 ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ image-transport rclcpp rpyutils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ament-cmake-ros-core ];

  meta = {
    description = "Python API for image_transport";
    license = with lib.licenses; [ bsd3 ];
  };
}
