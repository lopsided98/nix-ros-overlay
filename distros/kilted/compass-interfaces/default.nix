
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, cras-cpp-common, cras-lint, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-compass-interfaces";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/compass-release/archive/release/kilted/compass_interfaces/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "80ce29981698302075cd2bb5f370922d10b72d1974b7696747af1e487bae7106";
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
