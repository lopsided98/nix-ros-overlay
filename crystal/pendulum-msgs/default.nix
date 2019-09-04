
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-pendulum-msgs";
  version = "0.6.2";

  src = fetchurl {
    url = https://github.com/ros2-gbp/demos-release/archive/release/crystal/pendulum_msgs/0.6.2-0.tar.gz;
    sha256 = "fdd12dbae8648dc5a8ca7d6ca10ce2e7a273de06391103bf4edd02adb71484c2";
  };

  buildInputs = [ builtin-interfaces rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Custom messages for real-time pendulum control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
