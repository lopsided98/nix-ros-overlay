
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, cv-bridge, depthai-ros-msgs, image-transport, message-filters, opencv, rclcpp, rclcpp-components, sensor-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-depthai-filters";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai_filters/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "d5e68dd431c92ff97c0238fc584964f12b3535062af73f9a1f9548bc0f8366cb";
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
