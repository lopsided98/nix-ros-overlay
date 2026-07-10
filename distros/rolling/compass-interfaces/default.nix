
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cras-cpp-common, cras-lint, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-compass-interfaces";
  version = "3.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/compass-release/archive/release/rolling/compass_interfaces/3.0.4-2.tar.gz";
    name = "3.0.4-2.tar.gz";
    sha256 = "09896b8f9a05f7b558a45121b8079dd4f292f1f581082c4572fbe386a24e27a0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest cras-lint ];
  propagatedBuildInputs = [ cras-cpp-common rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages related to compass";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
