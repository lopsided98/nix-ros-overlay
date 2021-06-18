
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, control-msgs, pluginlib, rcpputils, rcutils, ros2-control-test-assets, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-foxy-hardware-interface";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/hardware_interface/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "fc3fc74344107335b7e7f45455e938ba5a8d22e6f2ea4e38ba88b62bb414e474";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs pluginlib rcpputils rcutils tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 ros_control hardware interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
