
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh, openssl }:
buildRosPackage {
  pname = "ros-lyrical-cyclonedds";
  version = "11.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/lyrical/cyclonedds/11.0.1-4.tar.gz";
    name = "11.0.1-4.tar.gz";
    sha256 = "c68fb52d5eb9d69eec7aedcdc1f9e9eca7900b9bbf2113da2347177611cbdc81";
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
