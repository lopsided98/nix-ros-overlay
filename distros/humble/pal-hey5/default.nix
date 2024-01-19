
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pal-hey5-controller-configuration, pal-hey5-description }:
buildRosPackage {
  pname = "ros-humble-pal-hey5";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_hey5-release/archive/release/humble/pal_hey5/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "9f503d73603959b5d5d45147566f27cd76c1e02e5e55cbbdd5c67066bd8e2bc7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ pal-hey5-controller-configuration pal-hey5-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''The pal_hey5 package'';
    license = with lib.licenses; [ asl20 ];
  };
}
