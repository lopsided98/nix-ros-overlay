
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-nao-command-msgs";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_interfaces-release/archive/release/rolling/nao_command_msgs/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "9a178cdf989672a41ec922e253448c11af6ee399cf606a1953aa4cdbdfda8078";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package defining command msgs to be sent to NAO robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
