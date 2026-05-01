
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-autoware-control-msgs";
  version = "1.11.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_msgs-release/archive/release/lyrical/autoware_control_msgs/1.11.0-3.tar.gz";
    name = "1.11.0-3.tar.gz";
    sha256 = "bd15f40561947e25c696bab79eac75ff031ce92cfb6b077f86c9d8ba9ecbc9a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Autoware control messages package.";
    license = with lib.licenses; [ asl20 ];
  };
}
