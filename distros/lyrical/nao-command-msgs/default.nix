
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nao-command-msgs";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_interfaces-release/archive/release/lyrical/nao_command_msgs/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "084a3781176897b461547ca827045fedd4c636aa418052ccb21e42a1f3eb435f";
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
