
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-urg-node-msgs";
  version = "1.0.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node_msgs-release/archive/release/rolling/urg_node_msgs/1.0.1-6.tar.gz";
    name = "1.0.1-6.tar.gz";
    sha256 = "61cae54e2424a0b4cf485a290efcc9ce9f62a5bcb5592a7ab51522727b72833b";
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
