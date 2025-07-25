
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-urg-node-msgs";
  version = "1.0.1-r9";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node_msgs-release/archive/release/kilted/urg_node_msgs/1.0.1-9.tar.gz";
    name = "1.0.1-9.tar.gz";
    sha256 = "ff356afd0e97bbeba4163ec1627b94e374078998aa9e87f485685019f0dc739e";
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
