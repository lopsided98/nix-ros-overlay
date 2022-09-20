
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-std-srvs";
  version = "2.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/galactic/std_srvs/2.2.4-1.tar.gz";
    name = "2.2.4-1.tar.gz";
    sha256 = "0abc409bfdf8a76ae15722bdd5b2ebf06f0fe10bcc68cb57629f738db7440985";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing some standard service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
