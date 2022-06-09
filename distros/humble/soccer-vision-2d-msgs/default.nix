
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, soccer-vision-attribute-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-humble-soccer-vision-2d-msgs";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/humble/soccer_vision_2d_msgs/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "07d07d73a46a91562c7e7f90a0e945900529b652db664270a192ec1d914ae5f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime soccer-vision-attribute-msgs vision-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing some 2D vision related message definitions in the soccer domain.'';
    license = with lib.licenses; [ asl20 ];
  };
}
