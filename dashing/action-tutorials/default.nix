
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, ament-lint-common, ament-cmake, ament-lint-auto, rclpy, rosidl-default-generators, action-msgs }:
buildRosPackage {
  pname = "ros-dashing-action-tutorials";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/action_tutorials/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "0c458dcd080c80a3ba7b72655d35b3c3e8b0694d4777a92a0714b7f3b6538e77";
  };

  buildType = "ament_cmake";
  buildInputs = [ action-msgs ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-default-runtime action-msgs rclpy ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Action tutorial code examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
