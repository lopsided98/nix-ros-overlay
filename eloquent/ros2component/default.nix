
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, composition-interfaces, ament-copyright, rclcpp-components, pythonPackages, ament-flake8, ros2node, ros2param, ament-xmllint, ros2pkg, ros2cli, ament-pep257, rcl-interfaces, rclpy, ament-index-python }:
buildRosPackage {
  pname = "ros-eloquent-ros2component";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/eloquent/ros2component/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "0848d164e625dd9f903c7d8fae6fb458b12c7457b4d2d41e6cdd3c8b09e14b23";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ composition-interfaces rclcpp-components ros2node ros2param ros2pkg ros2cli rcl-interfaces rclpy ament-index-python ];

  meta = {
    description = ''The component command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
