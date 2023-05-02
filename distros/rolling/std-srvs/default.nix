
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-std-srvs";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/std_srvs/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "7ecdbae935548c61bde4ae02cc4a0488ec7e8d05bd11444435fae259a0a62d06";
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
