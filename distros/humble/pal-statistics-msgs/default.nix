
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-pal-statistics-msgs";
  version = "2.1.5-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_statistics-release/archive/release/humble/pal_statistics_msgs/2.1.5-1.tar.gz";
    name = "2.1.5-1.tar.gz";
    sha256 = "74e3e44ece621ec075a1555c9ce94337c068f5e4ac87239cc23b5fa740b7fd77";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Statistics msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
