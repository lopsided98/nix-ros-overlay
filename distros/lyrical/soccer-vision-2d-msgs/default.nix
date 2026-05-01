
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, soccer-vision-attribute-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-lyrical-soccer-vision-2d-msgs";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/lyrical/soccer_vision_2d_msgs/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "58b39854212620ebe25c5c990953fb459f9f640dbffdbc91b1b1db4649d2bad0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime soccer-vision-attribute-msgs vision-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some 2D vision related message definitions in the soccer domain.";
    license = with lib.licenses; [ asl20 ];
  };
}
