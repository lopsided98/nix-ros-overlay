
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, soccer-vision-attribute-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-rolling-soccer-vision-2d-msgs";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/rolling/soccer_vision_2d_msgs/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "a3b961c252f2c9aeead50d24e266cb89f6ec7ae205c99b052b78fd99457e7f6c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime soccer-vision-attribute-msgs vision-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing some 2D vision related message definitions in the soccer domain.'';
    license = with lib.licenses; [ asl20 ];
  };
}
