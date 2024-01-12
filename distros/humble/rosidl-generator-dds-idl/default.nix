
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, rosidl-cli, rosidl-cmake }:
buildRosPackage {
  pname = "ros-humble-rosidl-generator-dds-idl";
  version = "0.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dds-release/archive/release/humble/rosidl_generator_dds_idl/0.8.1-2.tar.gz";
    name = "0.8.1-2.tar.gz";
    sha256 = "c6e82b80a5f6b86113d55700cedcf553b66293bf8a91af673f823878e363e135";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-index-python rosidl-cli rosidl-cmake ];
  nativeBuildInputs = [ ament-cmake rosidl-cmake ];

  meta = {
    description = ''Generate the DDS interfaces for ROS interfaces.'';
    license = with lib.licenses; [ asl20 ];
  };
}
