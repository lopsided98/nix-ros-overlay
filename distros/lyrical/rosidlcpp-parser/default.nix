
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fmt, nlohmann_json, rosidl-pycommon }:
buildRosPackage {
  pname = "ros-lyrical-rosidlcpp-parser";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/lyrical/rosidlcpp_parser/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "cf92054d6bfddf923c0bbf625b77e2cadf5a36a2f8983bff97304820342a1544";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake fmt nlohmann_json ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-pycommon ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides utilities to parse idl files into a json data structure";
    license = with lib.licenses; [ asl20 ];
  };
}
