
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-internal-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/jazzy/autoware_internal_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "10096c78d6b3ee173baf84fc8d961d8b0fe20937641a7c57c704e13814df9b36";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Autoware internal messages package.";
    license = with lib.licenses; [ asl20 ];
  };
}
