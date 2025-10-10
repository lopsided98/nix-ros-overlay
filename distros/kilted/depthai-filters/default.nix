
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, cv-bridge, depthai-ros-msgs, image-transport, message-filters, opencv, rclcpp, rclcpp-components, sensor-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-depthai-filters";
  version = "3.0.7-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/kilted/depthai_filters/3.0.7-1.tar.gz";
    name = "3.0.7-1.tar.gz";
    sha256 = "38166bef5e1251f1d1a309db03611f4e1408cacf10bbaec52278f92606c3abf7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ cv-bridge depthai-ros-msgs image-transport message-filters opencv opencv.cxxdev rclcpp rclcpp-components sensor-msgs vision-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Depthai filters package";
    license = with lib.licenses; [ mit ];
  };
}
