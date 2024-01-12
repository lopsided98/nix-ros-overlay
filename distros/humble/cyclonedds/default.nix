
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cunit, iceoryx-binding-c, iceoryx-hoofs, iceoryx-posh, openssl }:
buildRosPackage {
  pname = "ros-humble-cyclonedds";
  version = "0.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/humble/cyclonedds/0.10.3-1.tar.gz";
    name = "0.10.3-1.tar.gz";
    sha256 = "afc400d5b7dd5d503e4ee03935706eff8903ade189afc44a6e1b2094f94e7afa";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ cunit ];
  propagatedBuildInputs = [ iceoryx-binding-c iceoryx-hoofs iceoryx-posh openssl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Eclipse Cyclone DDS is a very performant and robust open-source DDS implementation. Cyclone DDS is developed completely in the open as an Eclipse IoT project.'';
    license = with lib.licenses; [ "EPL-2.0" "Eclipse-Distribution-License-1.0" ];
  };
}
