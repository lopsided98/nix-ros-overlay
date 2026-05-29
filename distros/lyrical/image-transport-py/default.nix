
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, image-transport, python3, python3Packages, rclcpp, rpyutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-image-transport-py";
  version = "6.4.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/lyrical/image_transport_py/6.4.9-1.tar.gz";
    name = "6.4.9-1.tar.gz";
    sha256 = "43694bf25896fa418ac55121928e04d88468764899007b50737730f4f7252dcf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros python3 python3Packages.pybind11 ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ image-transport rclcpp rpyutils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = "Python API for image_transport";
    license = with lib.licenses; [ bsd3 ];
  };
}
