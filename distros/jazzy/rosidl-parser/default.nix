
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3Packages, rosidl-adapter }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-parser";
  version = "4.6.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/jazzy/rosidl_parser/4.6.7-1.tar.gz";
    name = "4.6.7-1.tar.gz";
    sha256 = "9cd7c02fa9a7e5869e76f920bf7105609914c7a779ac26f23e4bc0c4bbf4f2f5";
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
