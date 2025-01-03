
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, soccer-geometry-msgs, soccer-vision-attribute-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-soccer-model-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/rolling/soccer_model_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "46d2d26e2148e8893d1cabac83d0875dd2bc08f2d0b54f7236d7e6e44705c42b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime soccer-geometry-msgs soccer-vision-attribute-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package containing world model related message definitions in the soccer domain.";
    license = with lib.licenses; [ asl20 ];
  };
}
