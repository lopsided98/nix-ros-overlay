
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-smacc2-msgs";
  version = "2.1.21-r1";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/foxy/smacc2_msgs/2.1.21-1.tar.gz";
    name = "2.1.21-1.tar.gz";
    sha256 = "0bdd0b201a11ae97066991d9b736beb053358f91a9d59eb8993472a11b7eedc6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages and services used in smacc2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
