
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-udp-msgs";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/udp_msgs-release/archive/release/dashing/udp_msgs/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "5244bbbabd532a8654f213e7a16860d065b2d50893b8943ad386534b25632712";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS2 udp_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
