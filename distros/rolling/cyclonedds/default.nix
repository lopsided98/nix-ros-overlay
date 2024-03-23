
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-binding-c, iceoryx-hoofs, iceoryx-posh, openssl }:
buildRosPackage {
  pname = "ros-rolling-cyclonedds";
  version = "0.10.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/rolling/cyclonedds/0.10.4-3.tar.gz";
    name = "0.10.4-3.tar.gz";
    sha256 = "2dd930dfe965e625e7a2f7af1e9ca5d3412e8a6cf8d02f088c2f5d81ec510b4d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ iceoryx-binding-c iceoryx-hoofs iceoryx-posh openssl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Eclipse Cyclone DDS is a very performant and robust open-source DDS implementation. Cyclone DDS is developed completely in the open as an Eclipse IoT project.";
    license = with lib.licenses; [ "EPL-2.0" "Eclipse-Distribution-License-1.0" ];
  };
}
