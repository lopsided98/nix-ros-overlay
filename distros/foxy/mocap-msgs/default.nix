
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-mocap-msgs";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap_msgs-release/archive/release/foxy/mocap_msgs/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "81808d9ac8fc05485cc01e9c469c71e4436cf46ae843e758d24d170e9657f45b";
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
