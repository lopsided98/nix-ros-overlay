
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, cv-bridge, depthai-ros-msgs, image-transport, message-filters, opencv, rclcpp, rclcpp-components, ros-environment, sensor-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-depthai-filters";
  version = "2.12.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/jazzy/depthai_filters/2.12.2-1.tar.gz";
    name = "2.12.2-1.tar.gz";
    sha256 = "f7aa9267e13373cb732db5f62faeab7b10202fd6d53bb21fee370411cf46c5b8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ros-environment ];
  propagatedBuildInputs = [ cv-bridge depthai-ros-msgs image-transport message-filters opencv opencv.cxxdev rclcpp rclcpp-components sensor-msgs vision-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Depthai filters package";
    license = with lib.licenses; [ mit ];
  };
}
