
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-nao-command-msgs";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ijnek/nao_interfaces-release/archive/release/galactic/nao_command_msgs/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "c3fa99b82e75f19a7d80eb378857f1359ed6260f15ea2de0574b7364798959fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package providing sensor msgs to be used with a NAO robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
