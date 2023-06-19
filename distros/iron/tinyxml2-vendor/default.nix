
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml-2 }:
buildRosPackage {
  pname = "ros-iron-tinyxml2-vendor";
  version = "0.8.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml2_vendor-release/archive/release/iron/tinyxml2_vendor/0.8.2-3.tar.gz";
    name = "0.8.2-3.tar.gz";
    sha256 = "ae3c4fc1e2b7bdeefcdb7ab5823731cef4883b0de6e685aea74dcedc25edf691";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around tinyxml2, providing nothing but a dependency on tinyxml2, on some systems.
    On others, it provides a fixed CMake module or even an ExternalProject build of tinyxml2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
