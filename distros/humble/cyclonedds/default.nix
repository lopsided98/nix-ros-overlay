
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-binding-c, iceoryx-hoofs, iceoryx-posh, openssl }:
buildRosPackage {
  pname = "ros-humble-cyclonedds";
  version = "0.10.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/humble/cyclonedds/0.10.5-2.tar.gz";
    name = "0.10.5-2.tar.gz";
    sha256 = "a636f8a862b4ec5a5ce6bc5d567a97d9e8cb16ac5a13aa07b0a7558a07777d29";
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
