
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, geometry-msgs, hardware-interface, rclcpp-lifecycle, realtime-tools, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-controller-interface";
  version = "4.23.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/controller_interface/4.23.0-1.tar.gz";
    name = "4.23.0-1.tar.gz";
    sha256 = "09ab53f163747748bcbac85d6082f1499a96a59f608e057232314aba56e419fc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h sensor-msgs ];
  checkInputs = [ ament-cmake-gmock geometry-msgs ];
  propagatedBuildInputs = [ hardware-interface rclcpp-lifecycle realtime-tools ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Description of controller_interface";
    license = with lib.licenses; [ asl20 ];
  };
}
