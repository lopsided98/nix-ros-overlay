
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-novatel-oem7-msgs";
  version = "24.2.1-r1";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/jazzy/novatel_oem7_msgs/24.2.1-1.tar.gz";
    name = "24.2.1-1.tar.gz";
    sha256 = "6f0f0db787a315f0d81eeeaf6afd76452094c4612181835ad158c154e53130fc";
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
