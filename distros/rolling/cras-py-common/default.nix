
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-pytest, ament-cmake-python, cras-lint, rclpy }:
buildRosPackage {
  pname = "ros-rolling-cras-py-common";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/rolling/cras_py_common/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "0d82c6a838dd5bb690d5307f72ae496dbeba61205d3a729b978202c311882df2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest cras-lint ];
  propagatedBuildInputs = [ rclpy ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-python ];

  meta = {
    description = "A Czech-army knife for ROS code written in Python.";
    license = with lib.licenses; [ bsd3 ];
  };
}
