
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-system-modes-msgs";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/foxy/system_modes_msgs/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "8eebfd37f1f9def3dbb28119bbfd4bd10776cb35c4ccd1857910b451a84211a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Interface package, containing message definitions and service definitions
    for the system modes package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
