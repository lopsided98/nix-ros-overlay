
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-nao-lola-command-msgs";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_lola-release/archive/release/rolling/nao_lola_command_msgs/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "c153116b645ac627c94c91637d9a0e123e4443a037bab922ce4ea64a4b34a456";
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
