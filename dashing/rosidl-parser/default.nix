
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, rosidl-adapter, ament-cmake, ament-lint-common, pythonPackages, python3Packages, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rosidl-parser";
  version = "0.7.5-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_parser/0.7.5-1.tar.gz;
    sha256 = "e8dc8dfc6bb78049d35e6483e66a05501b576adcc779c85367287ecaf5aa5972";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-cmake-pytest pythonPackages.pytest ament-lint-common ];
  propagatedBuildInputs = [ python3Packages.lark-parser rosidl-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The parser for ROS interface files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
