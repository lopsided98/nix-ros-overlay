
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-nao-command-msgs";
  version = "0.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_interfaces-release/archive/release/rolling/nao_command_msgs/0.0.4-3.tar.gz";
    name = "0.0.4-3.tar.gz";
    sha256 = "5ed07e8b7e65364fd36fe9d9925a440e618d9c667ad087657824619b4bdb3346";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package defining command msgs to be sent to NAO robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
