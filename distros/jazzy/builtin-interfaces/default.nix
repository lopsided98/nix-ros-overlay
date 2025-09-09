
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-core-generators, rosidl-core-runtime }:
buildRosPackage {
  pname = "ros-jazzy-builtin-interfaces";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/jazzy/builtin_interfaces/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "e16aa0f32b824c58501d895294eb83c5af3619760cfdfbb7b016d5190f559710";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-core-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-core-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-core-generators ];

  meta = {
    description = "A package containing message and service definitions for types defined in the OMG IDL Platform Specific Model.";
    license = with lib.licenses; [ asl20 ];
  };
}
