
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, soccer-geometry-msgs, soccer-vision-attribute-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-soccer-model-msgs";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/iron/soccer_model_msgs/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "daa6eaa9aa8287b3e709240562edec13e1033469f09afb41a2d226b76b17ba7f";
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
