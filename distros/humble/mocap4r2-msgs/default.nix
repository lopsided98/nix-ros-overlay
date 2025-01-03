
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-humble-mocap4r2-msgs";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2_msgs-release/archive/release/humble/mocap4r2_msgs/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "bb2ae7323d427e9ca57e3058e5775e974c41398eae26f753ec4efc590c6b8942";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclcpp rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "mocap4r2_msgs";
    license = with lib.licenses; [ asl20 ];
  };
}
