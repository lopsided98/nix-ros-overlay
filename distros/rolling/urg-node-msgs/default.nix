
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-urg-node-msgs";
  version = "1.0.1-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node_msgs-release/archive/release/rolling/urg_node_msgs/1.0.1-7.tar.gz";
    name = "1.0.1-7.tar.gz";
    sha256 = "93104cffb9894b6fafecd0795a4a57758150ff293d94ac19e1a7d1b9b6443422";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''urg_node_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
