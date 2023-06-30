
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, depthai, depthai-bridge, depthai-descriptions, depthai-examples, depthai-ros-driver, depthai-ros-msgs }:
buildRosPackage {
  pname = "ros-humble-depthai-ros";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai-ros/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "4b835ef958d73fc9b5a8ddd086a90718546faf9474c4a0fe71c6678bca226052";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ depthai depthai-bridge depthai-descriptions depthai-examples depthai-ros-driver depthai-ros-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The depthai-ros package'';
    license = with lib.licenses; [ mit ];
  };
}
