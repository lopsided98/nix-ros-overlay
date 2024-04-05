
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3, python3Packages, rosidl-cli }:
buildRosPackage {
  pname = "ros-rolling-rosidl-adapter";
  version = "4.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_adapter/4.5.2-1.tar.gz";
    name = "4.5.2-1.tar.gz";
    sha256 = "1be5a90d7e3f92630b9f5311e44c03fb39c65081a9fc1b242a22861a6b531de0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core python3 python3Packages.empy rosidl-cli ];
  nativeBuildInputs = [ ament-cmake-core python3 ];

  meta = {
    description = "API and scripts to parse .msg/.srv/.action files and convert them to .idl.";
    license = with lib.licenses; [ asl20 ];
  };
}
