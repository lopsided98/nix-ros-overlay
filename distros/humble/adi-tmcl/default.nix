
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, ros2launch, rosidl-default-generators, rosidl-default-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-adi-tmcl";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/adi_tmcl-release/archive/release/humble/adi_tmcl/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "04c15080e1c109bce9f7223a623926c5e103753ad14c6fb13fc9fbf32bf816d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp ros2launch rosidl-default-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The adi_tmcl ROS2 package";
    license = with lib.licenses; [ bsd3 ];
  };
}
