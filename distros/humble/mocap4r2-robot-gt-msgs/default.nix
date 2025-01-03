
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-humble-mocap4r2-robot-gt-msgs";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/humble/mocap4r2_robot_gt_msgs/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "08e5603ac8dfb22d72a3769bdfa75bce3cebc41f6509d24d0e2177d1b8bf9267";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclcpp rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "mocap4r2_robot_gt_msgs";
    license = with lib.licenses; [ asl20 ];
  };
}
