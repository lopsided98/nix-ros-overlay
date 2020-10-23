
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-udp-msgs";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/udp_msgs-release/archive/release/eloquent/udp_msgs/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "a261b7eb6cb7e43c9822a1d8e392c0a38ecdcaeb656097e7e30280ec47e9444e";
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
