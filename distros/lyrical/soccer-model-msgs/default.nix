
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, soccer-geometry-msgs, soccer-vision-attribute-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-soccer-model-msgs";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/lyrical/soccer_model_msgs/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "97f363a1f7e2f1eefb02aa6853b09444b771c99b0d5ffbba315c954b5aebc68e";
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
