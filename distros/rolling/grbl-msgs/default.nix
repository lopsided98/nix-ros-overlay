
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-grbl-msgs";
  version = "0.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grbl_msgs-release/archive/release/rolling/grbl_msgs/0.0.2-5.tar.gz";
    name = "0.0.2-5.tar.gz";
    sha256 = "419964fa85ad2daeb39a57fa763019303e9db10cf712b9b331228883be90ef34";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Messages package for GRBL devices'';
    license = with lib.licenses; [ mit ];
  };
}
