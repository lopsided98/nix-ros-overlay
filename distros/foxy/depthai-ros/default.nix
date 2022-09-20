
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, depthai, depthai-bridge, depthai-examples, depthai-ros-msgs }:
buildRosPackage {
  pname = "ros-foxy-depthai-ros";
  version = "2.5.3-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/foxy/depthai-ros/2.5.3-1.tar.gz";
    name = "2.5.3-1.tar.gz";
    sha256 = "2f94db0a1598e46d6b88b60e9bcb58bf528e677b5ef898abd3434c01201b8319";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ depthai depthai-bridge depthai-examples depthai-ros-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The depthai-ros package'';
    license = with lib.licenses; [ mit ];
  };
}
