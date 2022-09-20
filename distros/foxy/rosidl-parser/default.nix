
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3Packages, pythonPackages, rosidl-adapter }:
buildRosPackage {
  pname = "ros-foxy-rosidl-parser";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/foxy/rosidl_parser/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "c077cfa6b9b30cef0544accbea1d1bfb2c67dacb5b79bf7e64af784f48527981";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.lark rosidl-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The parser for ROS interface files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
