
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, depthai, depthai-bridge, depthai-examples, depthai-ros-msgs }:
buildRosPackage {
  pname = "ros-humble-depthai-ros";
  version = "2.5.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai-ros/2.5.2-1.tar.gz";
    name = "2.5.2-1.tar.gz";
    sha256 = "72acbceef4179b301bcb2f759fd2b96c171bfd85510c0bf9d5e1e82b4e4b9cbf";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ depthai depthai-bridge depthai-examples depthai-ros-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The depthai-ros package'';
    license = with lib.licenses; [ mit ];
  };
}
