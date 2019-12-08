
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, ros2node, rclpy, composition-interfaces, pythonPackages, ros2param, ament-pep257, rcl-interfaces, ament-copyright, ament-index-python, rclcpp-components, ros2pkg, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2component";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2component/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "5a46c00a9c7ed0f4f04b50c207d56347033576229ce4477a39cbe48208a25d28";
  };

  buildType = "ament_python";
  checkInputs = [ ament-xmllint ament-flake8 pythonPackages.pytest ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ ros2node rclpy composition-interfaces ros2param rcl-interfaces ros2pkg ament-index-python rclcpp-components ros2cli ];

  meta = {
    description = ''The component command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
