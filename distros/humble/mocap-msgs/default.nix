
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-humble-mocap-msgs";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap_msgs-release/archive/release/humble/mocap_msgs/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "48eb1c49ed9a55e6cf0f24cead1ce39e5f828015eb612948ddfdaadc238f1858";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclcpp rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''mocap_msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
