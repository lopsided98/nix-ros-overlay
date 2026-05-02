
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh, openssl }:
buildRosPackage {
  pname = "ros-rolling-cyclonedds";
  version = "11.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/rolling/cyclonedds/11.0.1-3.tar.gz";
    name = "11.0.1-3.tar.gz";
    sha256 = "a8ae16f7c7ba039277b42495e21e2b7fb301fc8228cc973fe4e512bdb8ba2c03";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ iceoryx-hoofs iceoryx-posh openssl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Eclipse Cyclone DDS is a very performant and robust open-source DDS implementation. Cyclone DDS is developed completely in the open as an Eclipse IoT project.";
    license = with lib.licenses; [ "EPL-2.0" "Eclipse-Distribution-License-1.0" ];
  };
}
