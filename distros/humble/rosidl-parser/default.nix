
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3Packages, pythonPackages, rosidl-adapter }:
buildRosPackage {
  pname = "ros-humble-rosidl-parser";
  version = "3.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/humble/rosidl_parser/3.1.3-2.tar.gz";
    name = "3.1.3-2.tar.gz";
    sha256 = "25d017b684a25eb0cf5cc70ffc61b5a84938d93bd269ff37adfa2ff04b3eb4c3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.lark rosidl-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The parser for `.idl` ROS interface files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
