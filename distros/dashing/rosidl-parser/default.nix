
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3Packages, pythonPackages, rosidl-adapter }:
buildRosPackage {
  pname = "ros-dashing-rosidl-parser";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_parser/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "b455e209b3fd64b368dd1856d1ecfb4c810b2ce301c83aa3991926a36b074ec8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.lark-parser rosidl-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The parser for ROS interface files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
