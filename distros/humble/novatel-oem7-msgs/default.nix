
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-novatel-oem7-msgs";
  version = "20.8.0-r1";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/humble/novatel_oem7_msgs/20.8.0-1.tar.gz";
    name = "20.8.0-1.tar.gz";
    sha256 = "919e21c9919c078ee305f4671143c6d421a241b809b669d25df2d7fcdc46f3d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages for NovAtel Oem7 family of receivers.";
    license = with lib.licenses; [ mit ];
  };
}
