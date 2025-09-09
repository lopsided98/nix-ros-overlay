
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, cv-bridge, geometry-msgs, image-transport, launch-ros, nav-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, ros-environment, ros2launch, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-humble-inuros2";
  version = "2.10.14-r6";

  src = fetchurl {
    url = "https://bitbucket.org/inuitive/inuros2-release/get/release/humble/inuros2/2.10.14-6.tar.gz";
    name = "2.10.14-6.tar.gz";
    sha256 = "d46a4fa363d5fa4f67f9bccb3048e304b54db5cdcfea8e482d4cad11fb8a33f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces cv-bridge geometry-msgs image-transport launch-ros nav-msgs rclcpp rclcpp-components rclcpp-lifecycle ros2launch rosidl-default-runtime sensor-msgs std-msgs vision-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Inuitive image publisher";
    license = with lib.licenses; [ asl20 ];
  };
}
