
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cunit, iceoryx-binding-c, iceoryx-hoofs, iceoryx-posh, openssl }:
buildRosPackage {
  pname = "ros-iron-cyclonedds";
  version = "0.10.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/iron/cyclonedds/0.10.3-2.tar.gz";
    name = "0.10.3-2.tar.gz";
    sha256 = "b31b45605acd66f911b88eac80a28d2e22282e0ba4ac6d383826a5c7d6a14a6e";
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
