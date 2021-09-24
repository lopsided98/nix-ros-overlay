
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-udp-msgs";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/flynneva/udp_msgs-release/archive/release/foxy/udp_msgs/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "3640e6e621147b16d70326cc86f81e9a5a2c713321662c44fa599fdfd1202e4c";
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
