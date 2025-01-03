
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-grbl-msgs";
  version = "0.0.2-r9";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grbl_msgs-release/archive/release/jazzy/grbl_msgs/0.0.2-9.tar.gz";
    name = "0.0.2-9.tar.gz";
    sha256 = "ed33fb3edb5f47615f8979da67fd6e38e13af66d6c5c99f09c697e3bd2987ac9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 Messages package for GRBL devices";
    license = with lib.licenses; [ mit ];
  };
}
