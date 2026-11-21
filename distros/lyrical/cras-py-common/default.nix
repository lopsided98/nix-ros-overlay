
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-pytest, ament-cmake-python, cras-lint, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-cras-py-common";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/lyrical/cras_py_common/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "2aa60eccb00ab108e34fc7c8b3a4e099449f3c2ab9a8cdb4f047eb8f93d81ad9";
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
