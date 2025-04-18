
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-dataspeed-can-msgs";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/jazzy/dataspeed_can_msgs/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "4a63724abcb1f5642f04385bd9174d45ad47c589957b3fcd68049bcf2c978f8a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller Area Network (CAN) messages";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
