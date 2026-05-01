
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-derived-object-msgs";
  version = "4.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/astuff_sensor_msgs-release/archive/release/lyrical/derived_object_msgs/4.0.0-5.tar.gz";
    name = "4.0.0-5.tar.gz";
    sha256 = "cf4b905cf4e541045bc0a543708ef36255f47b5075be6e54998fef5f26f104eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime shape-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Abstracted Messages from Perception Modalities";
    license = with lib.licenses; [ mit ];
  };
}
