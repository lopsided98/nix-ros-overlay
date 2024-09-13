
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-pytest, ament-cmake-python, ament-index-cpp, backward-ros, controller-interface, controller-manager-msgs, hardware-interface, hardware-interface-testing, launch, launch-ros, pluginlib, python3Packages, rclcpp, rcpputils, realtime-tools, ros2-control-test-assets, ros2param, ros2run, std-msgs }:
buildRosPackage {
  pname = "ros-humble-controller-manager";
  version = "2.43.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/controller_manager/2.43.1-1.tar.gz";
    name = "2.43.1-1.tar.gz";
    sha256 = "24342afe3b70ecde4e4b969dbd70254049207729e51a4ff4be80b0fa3d074504";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock ament-cmake-pytest hardware-interface-testing python3Packages.coverage ros2-control-test-assets ];
  propagatedBuildInputs = [ ament-index-cpp backward-ros controller-interface controller-manager-msgs hardware-interface launch launch-ros pluginlib rclcpp rcpputils realtime-tools ros2-control-test-assets ros2param ros2run std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Description of controller_manager";
    license = with lib.licenses; [ asl20 ];
  };
}
