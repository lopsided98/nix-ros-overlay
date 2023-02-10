
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, depthai, depthai-bridge, depthai-examples, depthai-ros-driver, depthai-ros-msgs }:
buildRosPackage {
  pname = "ros-humble-depthai-ros";
  version = "2.6.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai-ros/2.6.2-1.tar.gz";
    name = "2.6.2-1.tar.gz";
    sha256 = "e1375ae970185094bd6646adeb185865fe6131e8ddb1a78027a1b7eb6395ba5a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ depthai depthai-bridge depthai-examples depthai-ros-driver depthai-ros-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The depthai-ros package'';
    license = with lib.licenses; [ mit ];
  };
}
