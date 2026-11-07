
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-mypy, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3, python3Packages, rosidl-cli }:
buildRosPackage {
  pname = "ros-kilted-rosidl-adapter";
  version = "4.9.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/kilted/rosidl_adapter/4.9.9-1.tar.gz";
    name = "4.9.9-1.tar.gz";
    sha256 = "d5b17256e72f430821bd02064c3a574133faa5103663d7f2e2a024ca42b9b339";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-mypy ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core python3 python3Packages.empy rosidl-cli ];
  nativeBuildInputs = [ ament-cmake-core python3 ];

  meta = {
    description = "API and scripts to parse .msg/.srv/.action files and convert them to .idl.";
    license = with lib.licenses; [ asl20 ];
  };
}
