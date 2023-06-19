
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, cv-bridge, image-transport, message-filters, opencv, rclcpp, rclcpp-components, sensor-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-humble-depthai-filters";
  version = "2.7.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai_filters/2.7.2-1.tar.gz";
    name = "2.7.2-1.tar.gz";
    sha256 = "13e03b26407a0e4e324b0f0bb07fae759a148d7e4dcc8f847f494c6fdf3b4b76";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ cv-bridge image-transport message-filters opencv rclcpp rclcpp-components sensor-msgs vision-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Depthai filters package'';
    license = with lib.licenses; [ mit ];
  };
}
