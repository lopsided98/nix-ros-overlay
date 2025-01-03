
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-binding-c, iceoryx-hoofs, iceoryx-posh, openssl }:
buildRosPackage {
  pname = "ros-jazzy-cyclonedds";
  version = "0.10.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/jazzy/cyclonedds/0.10.5-1.tar.gz";
    name = "0.10.5-1.tar.gz";
    sha256 = "e17f2f7fd86396485f91bbe73275048204cf76b1b0aee773cca1fc2d59c8d979";
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
