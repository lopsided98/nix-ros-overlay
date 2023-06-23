
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, cv-bridge, image-transport, message-filters, opencv, rclcpp, rclcpp-components, sensor-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-humble-depthai-filters";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai_filters/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "d18120194c92c240fc0f084217ae7a00026c642589827606edb0ebd6a02af13a";
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
