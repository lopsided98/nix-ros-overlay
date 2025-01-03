
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pal-hey5-controller-configuration, pal-hey5-description }:
buildRosPackage {
  pname = "ros-humble-pal-hey5";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_hey5-release/archive/release/humble/pal_hey5/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "aadeee6a18df940f052a8eca1b15dc779ab74b4275f8091fd65682338648b32e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ pal-hey5-controller-configuration pal-hey5-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The pal_hey5 package";
    license = with lib.licenses; [ asl20 ];
  };
}
