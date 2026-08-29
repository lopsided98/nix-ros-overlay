
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, cras-cpp-common, cras-lint, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-compass-interfaces";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/compass-release/archive/release/jazzy/compass_interfaces/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "013e90d2aa73a2099276d3e20008a9af8e77d9b8d378cfcb3a783932fd7cc59e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest cras-lint ];
  propagatedBuildInputs = [ cras-cpp-common rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h rosidl-default-generators ];

  meta = {
    description = "Messages related to compass";
    license = with lib.licenses; [ bsd3 ];
  };
}
