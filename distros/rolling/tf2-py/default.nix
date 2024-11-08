
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rclpy, rpyutils, tf2 }:
buildRosPackage {
  pname = "ros-rolling-tf2-py";
  version = "0.39.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_py/0.39.1-1.tar.gz";
    name = "0.39.1-1.tar.gz";
    sha256 = "e0308d642c407d83d4bad1659e0291ebb728a7ea66a04fb3e492830c06159210";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy rpyutils tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The tf2_py package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
