
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, python3, rclpy, rpyutils, tf2 }:
buildRosPackage {
  pname = "ros-rolling-tf2-py";
  version = "0.46.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_py/0.46.1-1.tar.gz";
    name = "0.46.1-1.tar.gz";
    sha256 = "69ccbd09d77a90b91fb23d24aba8533e3f8caf0c044c4d8a57a4a06178cb4e3f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy rpyutils tf2 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Python bindings for the tf2 library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
