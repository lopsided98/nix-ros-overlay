
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-shape-msgs";
  version = "4.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/humble/shape_msgs/4.2.4-1.tar.gz";
    name = "4.2.4-1.tar.gz";
    sha256 = "e06e8bbaaffaaef600acf6e4ad39aabcce9b281ebf3747a9209dea1aed02ef54";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some message definitions which describe geometric shapes.";
    license = with lib.licenses; [ asl20 ];
  };
}
