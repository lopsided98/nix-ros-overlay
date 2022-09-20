
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cmake, cunit, iceoryx-binding-c, iceoryx-posh, iceoryx-utils, openssl }:
buildRosPackage {
  pname = "ros-galactic-cyclonedds";
  version = "0.8.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/galactic/cyclonedds/0.8.0-6.tar.gz";
    name = "0.8.0-6.tar.gz";
    sha256 = "83c0f1b6fcbefdd65d1e5dc1846472a5e9d41b791a0672c5c7630315fa1e653c";
  };

  buildType = "cmake";
  buildInputs = [ bison cmake ];
  checkInputs = [ cunit ];
  propagatedBuildInputs = [ iceoryx-binding-c iceoryx-posh iceoryx-utils openssl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse Cyclone DDS is a very performant and robust open-source DDS implementation. Cyclone DDS is developed completely in the open as an Eclipse IoT project.'';
    license = with lib.licenses; [ "EPL-2.0" "Eclipse-Distribution-License-1.0" ];
  };
}
