
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-action-tutorials-interfaces";
  version = "0.14.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/galactic/action_tutorials_interfaces/0.14.3-1.tar.gz";
    name = "0.14.3-1.tar.gz";
    sha256 = "dd4efd6e08f53ea121f36b6bd84e56b027874a8177f8b9aad3375e99cad5ec1f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Action tutorials action'';
    license = with lib.licenses; [ asl20 ];
  };
}
