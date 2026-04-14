
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh, openssl }:
buildRosPackage {
  pname = "ros-rolling-cyclonedds";
  version = "11.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/rolling/cyclonedds/11.0.1-1.tar.gz";
    name = "11.0.1-1.tar.gz";
    sha256 = "6f672a36876450a94638e74dab6b4f3428af6bc9b614f543ed0d9a2a5800600a";
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
