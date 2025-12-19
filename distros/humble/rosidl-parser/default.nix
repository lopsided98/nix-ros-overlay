
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3Packages, rosidl-adapter }:
buildRosPackage {
  pname = "ros-humble-rosidl-parser";
  version = "3.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/humble/rosidl_parser/3.1.8-1.tar.gz";
    name = "3.1.8-1.tar.gz";
    sha256 = "4f69402bbd55e56fcabf89fb7e65440cd9eded6ea65e91d10368569b34106e5e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.lark rosidl-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The parser for `.idl` ROS interface files.";
    license = with lib.licenses; [ asl20 ];
  };
}
