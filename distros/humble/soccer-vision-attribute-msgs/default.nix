
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-soccer-vision-attribute-msgs";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/humble/soccer_vision_attribute_msgs/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "7125bbe67762fe27d5f08d27690b9514b9e443f1e55de040cc51129c52b8e5cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing attributes of objects in 2d/3d vision in the soccer domain.'';
    license = with lib.licenses; [ asl20 ];
  };
}
