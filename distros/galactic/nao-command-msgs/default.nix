
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-nao-command-msgs";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ijnek/nao_interfaces-release/archive/release/galactic/nao_command_msgs/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "0a97e76e0aada6eabbe460a4cc40657969934eb0bf79862d2aa9136c667ba150";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package defining command msgs to be sent to NAO robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
