
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, pythonPackages, ament-lint-common, ament-cmake, ament-cmake-pytest, ament-lint-auto, rosidl-adapter }:
buildRosPackage {
  pname = "ros-dashing-rosidl-parser";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_parser/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "5599d67dccabbbd079d7f929f9364fdcd05809b0dc527517a4049b25854b5114";
  };

  buildType = "ament_cmake";
  checkInputs = [ pythonPackages.pytest ament-lint-common ament-lint-auto ament-cmake-pytest ];
  propagatedBuildInputs = [ python3Packages.lark-parser rosidl-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The parser for ROS interface files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
