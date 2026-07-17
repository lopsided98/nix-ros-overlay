
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-cheese-interfaces";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/HowardWhile/ros2_cheese-release/archive/release/jazzy/cheese_interfaces/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "19498f95f04f146fd805b518fd4eb6a6bb80acc89763511c1fd7f7a3a3ecddd8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Custom service interfaces for the cheese package.";
    license = with lib.licenses; [ mit ];
  };
}
