
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dataspeed-can-msgs";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/humble/dataspeed_can_msgs/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "3811cae0302280cb9c6c2af0beacb8c5fc5163496d9f0be58aaecc43c3539caf";
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
