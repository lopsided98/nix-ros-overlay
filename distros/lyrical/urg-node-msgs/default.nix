
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-urg-node-msgs";
  version = "1.0.1-r10";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node_msgs-release/archive/release/lyrical/urg_node_msgs/1.0.1-10.tar.gz";
    name = "1.0.1-10.tar.gz";
    sha256 = "6f73976a31bab4370e8663a05e76007f364564e5e90b3ebc12aa1a7ba9f1780f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "urg_node_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
