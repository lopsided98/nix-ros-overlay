
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-std-srvs";
  version = "4.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/humble/std_srvs/4.9.1-1.tar.gz";
    name = "4.9.1-1.tar.gz";
    sha256 = "6ffc36f040c956597ef847ca0f59583c05d5727700067ac8fed610dee9586f21";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some standard service definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
