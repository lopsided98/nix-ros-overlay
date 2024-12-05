
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-binding-c, iceoryx-hoofs, iceoryx-posh, openssl }:
buildRosPackage {
  pname = "ros-iron-cyclonedds";
  version = "0.10.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/iron/cyclonedds/0.10.5-1.tar.gz";
    name = "0.10.5-1.tar.gz";
    sha256 = "f1dc9a4fb8ecb80c3ffaf65e6c1571880f4f657723a778ef16379d9d60a3890a";
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
