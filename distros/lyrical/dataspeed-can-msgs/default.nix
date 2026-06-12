
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-dataspeed-can-msgs";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/lyrical/dataspeed_can_msgs/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "3e87603f27cf4f890a63c3b01ca4feba6c23f4f626dce6e8aeb1ff89de31947f";
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
