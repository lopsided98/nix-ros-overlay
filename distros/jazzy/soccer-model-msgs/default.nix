
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, soccer-geometry-msgs, soccer-vision-attribute-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-soccer-model-msgs";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/jazzy/soccer_model_msgs/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "0fd7b8423649da29c3715df4ca3c93e4db5b0378df51ac597943828e4165ff05";
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
