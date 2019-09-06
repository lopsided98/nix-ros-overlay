
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rclpy, rosidl-default-generators, action-msgs, ament-lint-auto, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-action-tutorials";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/action_tutorials/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "545ed3eec42b575754a2d3fc6e2a7a3bcd3434a69109943820779082393bb06c";
  };

  buildType = "ament_cmake";
  buildInputs = [ action-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclpy action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Action tutorial code examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
