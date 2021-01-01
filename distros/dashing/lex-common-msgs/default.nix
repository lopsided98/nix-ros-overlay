
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-lex-common-msgs";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_node-release/archive/release/dashing/lex_common_msgs/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "0ac1d405759dd05fdc02f0631bd4039290e46dddd0d4d529d149eb38fa6ac646";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Common messages for interacting with Amazon Lex using the lex_node package'';
    license = with lib.licenses; [ asl20 ];
  };
}
