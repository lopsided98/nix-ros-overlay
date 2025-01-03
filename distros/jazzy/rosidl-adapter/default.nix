
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3, python3Packages, rosidl-cli }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-adapter";
  version = "4.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/jazzy/rosidl_adapter/4.6.5-1.tar.gz";
    name = "4.6.5-1.tar.gz";
    sha256 = "8a2e97794a64dc63c1c7c244c05eeb30b8a75eccb9ccb8d2adb0059cf39fc37c";
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
