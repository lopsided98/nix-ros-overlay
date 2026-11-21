
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-humble-mocap4r2-msgs";
  version = "0.0.6-r2";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2_interfaces-release/archive/release/humble/mocap4r2_msgs/0.0.6-2.tar.gz";
    name = "0.0.6-2.tar.gz";
    sha256 = "0f1c536a76bf45b78a087aefe106991d52b2482a1bbe7f5d210bc6595226da7b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclcpp rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Interfaces for Mocap4ROS2 project";
    license = with lib.licenses; [ asl20 ];
  };
}
