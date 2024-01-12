
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-soccer-vision-attribute-msgs";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/rolling/soccer_vision_attribute_msgs/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "d51c9b0b481c079f5f073240954a954a362cb951b7dd053cf0b587dec66342d4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing attributes of objects in 2d/3d vision in the soccer domain.'';
    license = with lib.licenses; [ asl20 ];
  };
}
