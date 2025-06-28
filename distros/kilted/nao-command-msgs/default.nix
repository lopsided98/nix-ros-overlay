
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-nao-command-msgs";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_interfaces-release/archive/release/kilted/nao_command_msgs/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "9a1dff5d81a1ab6795e106aa0c268dd53258975171921169112ddb7e4e427a18";
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
