
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-binding-c, iceoryx-hoofs, iceoryx-posh, openssl }:
buildRosPackage {
  pname = "ros-jazzy-cyclonedds";
  version = "0.10.4-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/jazzy/cyclonedds/0.10.4-4.tar.gz";
    name = "0.10.4-4.tar.gz";
    sha256 = "ccda30d3a2e0a5323998a0ad0dc2074e18bfdc48e7d73612f590d661139aee09";
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
