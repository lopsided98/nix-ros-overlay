
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-lint-auto, builtin-interfaces, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-foxy-system-modes-msgs";
  version = "0.7.1-r2";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/foxy/system_modes_msgs/0.7.1-2.tar.gz";
    name = "0.7.1-2.tar.gz";
    sha256 = "4ff87f11a757b85a17a27a8f129f6aa14749005e6a197a2154e5c1155ea3ca66";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-lint-auto ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interface package, containing message definitions and service definitions
    for the system modes package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
