
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-pal-statistics-msgs";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_statistics-release/archive/release/galactic/pal_statistics_msgs/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "5cf73ff527598e395016ae99391570cc04aecf823e4f0bb53f68910f19ad9c8f";
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
